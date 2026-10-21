#!/usr/bin/env python3
"""check_up_second.py -- second, independent checker for tpmahler-upper-v1 certificates.

Written from the criterion (conditions (U1)-(U3) = (C1)-(C3) of Lemma 2.1 of the paper) and the certificate format
only, without reading the first checker.

    python3 -I check_up_second.py CERT.json NPROC

Checks
  data   integer coefficients, deg >= 1, primitive, irreducible over Q (FLINT factorization), pairwise non-associate,
         b_j >= 0; nodes strictly increasing, e_0 >= 0; G_k >= 0, G_0 = G_N = 0; s > 0; X > 4, e_N <= X.
  (U1)   sum_j b_j deg Q_j < s, exact.
  moments  slope jumps C_i (exact): sum C_i = 0, sum C_i e_i = 0, sum C_i e_i^2 = 2 s (these make the closed form valid).
  (U2)   int log|Q_j| dmu = s log|lead Q_j| + sum_rho U(rho) > 0 for b_j > 0, roots as FLINT isolating balls (real roots
         have exactly zero imaginary part); U(z) = Re sum C_i Hc(e_i - z), Hc(t) = t^2/2 Log t - 3t^2/4 (principal Log;
         all e_i - z lie in one closed half plane).
  (V)    (1/s) int log+ x G(x) dx <= v, closed form per piece.
  (U3)   h(x) = U(x) - sum b_j log|Q_j(x)| >= 0 for EVERY x in [e_0, e_N]: the interval is covered by sub-intervals J on
         each of which a rigorous lower bound is proved (no sampling):
           * far nodes (outside +-DNEAR of the node interval): Taylor model of order 6 at the node-interval centre with
             remainder sup|F^(7)| |u|^7/7!, |H^(7)(t)| = 24/|t|^5;
           * near nodes with C_i > 0 within 4|J| of J: concave on J (H'' = log|t| < 0 for |t| < 1), bounded below by
             their chord;
           * all other terms R: R(x) >= R(m) + R'(m)(x-m) + inf_J R'' (x-m)^2/2 (Taylor with integral remainder; R' is
             absolutely continuous, R'' has only integrable log singularities, bounded below on J);
             inf_J R'' >= sum of term-wise lower bounds: far-field Taylor model of F'' on J; near C_i log|e_i - x| by
             C_i log dmax (C_i < 0) or by the mean value bound C_i log|e_i - m| - |C_i| (|J|/2)/dmin (dmin > 4|J|);
             weighted polynomial terms b_j Re 1/(x - rho)^2 >= b_j/dmax^2 (real rho) or the acb enclosure (complex rho),
             over the whole node interval;
           * the quadratic+linear minorant is minimized exactly on J (ball arithmetic); J is bisected if the bound is
             not certainly positive, down to WMIN, else FAILED.
         Real roots of the weighted Q_j inside [e_0, e_N] are cut out by brackets of half-width 1e-40 around the
         isolating ball; on a bracket, h >= U - sum_{other} b log|Q| - b_j log(sup|Q_j'| * width).
Exit 0 and VERIFIED only if every check passes.
"""
import sys, json, time, os
from fractions import Fraction
from multiprocessing import get_context

if sys.flags.optimize:
    sys.exit("refusing to run under python -O")

from flint import arb, acb, fmpq, fmpz, fmpz_poly, ctx

PREC = 128
ctx.prec = PREC
DNEAR = fmpq(1, 20)          # near-node radius around a node interval
BRACKET = fmpq(1, 10 ** 40)  # half-width of the cut-out around each weighted real root
MAXTESTS = 200000            # per node interval


def q_of(s):
    if isinstance(s, bool) or not isinstance(s, (str, int)):
        raise ValueError(f"bad rational {s!r}")
    fr = Fraction(s)
    return fmpq(fr.numerator, fr.denominator)


def fq_of_exact_arb(x):
    m, e = x.mid().man_exp()
    m, e = int(m), int(e)
    return fmpq(m * 2 ** e) if e >= 0 else fmpq(m, 2 ** (-e))


def qabs(x):
    return x if x >= 0 else -x


def qmax(*xs):
    r = xs[0]
    for x in xs[1:]:
        if x > r:
            r = x
    return r


# ---------------------------------------------------------------------------------------------------------------- H
def H_ball(t):
    """H(t) = t^2/2 log|t| - 3t^2/4 for an arb ball t (also when t contains 0)."""
    if not t.contains(0):
        L = abs(t).log()
        return t * t * (L / 2 - arb(3) / 4)
    r = t.abs_upper()
    if r == 0:
        return arb(0)
    if not (r < arb(1) / 3):
        return arb("nan")
    # |t| <= r < 1/e: t^2/2 log|t| in [-(r^2/2)|log r|, 0], -3t^2/4 in [-3r^2/4, 0]
    lo = -(r * r / 2) * abs(r.log()) - 3 * r * r / 4
    return (lo / 2) + arb(0, abs(lo / 2).abs_upper())


def Kp_ball(t):
    """K'(t) = t log|t| - t (derivative of H)."""
    if not t.contains(0):
        return t * (abs(t).log() - 1)
    r = t.abs_upper()
    if r == 0:
        return arb(0)
    if not (r < arb(1) / 3):
        return arb("nan")
    return arb(0, (r * abs(r.log()) + r).abs_upper())


def Hc(t):
    return t * t * (t.log() / 2 - acb(arb(3) / 4))


# ------------------------------------------------------------------------------------------------------------ loading
def load(path):
    d = json.load(open(path))
    errs = []
    if d.get("format") != "tpmahler-upper-v1":
        errs.append("format")
    polys = []
    for c in d["polys"]:
        if not isinstance(c, list) or not c or any(isinstance(a, bool) or not isinstance(a, int) for a in c):
            errs.append(f"poly coefficients not integers: {c}")
            continue
        polys.append(c)
    b = [q_of(x) for x in d["b"]]
    e = [q_of(x) for x in d["nodes"]]
    G = [q_of(x) for x in d["G"]]
    X = q_of(d["X"])
    v = q_of(d["v"])
    return d, polys, b, e, G, X, v, errs


def data_checks(polys, b, e, G, X):
    errs = []
    if len(b) != len(polys):
        errs.append("len(b) != len(polys)")
    Q = []
    seen = set()
    for j, c in enumerate(polys):
        if c[0] == 0:
            errs.append(f"Q_{j}: leading coefficient 0")
        P = fmpz_poly(list(reversed(c)))
        if P.degree() < 1:
            errs.append(f"Q_{j}: degree < 1")
        cont = 0
        for a in c:
            cont = __import__("math").gcd(cont, a)
        if cont != 1:
            errs.append(f"Q_{j}: not primitive (content {cont})")
        fc, fl = P.factor()
        if not (len(fl) == 1 and fl[0][1] == 1 and fl[0][0].degree() == P.degree()):
            errs.append(f"Q_{j}: reducible over Q: {fl}")
        key = tuple(c) if c[0] > 0 else tuple(-a for a in c)
        if key in seen:
            errs.append(f"Q_{j}: duplicate (up to sign)")
        seen.add(key)
        Q.append(P)
    for j, x in enumerate(b):
        if x < 0:
            errs.append(f"b_{j} < 0")
    if len(e) != len(G) or len(e) < 2:
        errs.append("len(nodes) != len(G) or < 2")
    if e[0] < 0:
        errs.append("e_0 < 0")
    for k in range(len(e) - 1):
        if not e[k] < e[k + 1]:
            errs.append(f"nodes not strictly increasing at {k}")
            break
    if any(g < 0 for g in G):
        errs.append("some G_k < 0")
    if G[0] != 0 or G[-1] != 0:
        errs.append("G_0 or G_N nonzero")
    if not X > 4:
        errs.append("X <= 4")
    if not e[-1] <= X:
        errs.append("e_N > X")
    s = fmpq(0)
    for k in range(len(e) - 1):
        s += (e[k + 1] - e[k]) * (G[k] + G[k + 1]) / 2
    if not s > 0:
        errs.append("mass s <= 0")
    return Q, s, errs


def slope_jumps(e, G):
    N = len(e) - 1
    sig = [(G[k + 1] - G[k]) / (e[k + 1] - e[k]) for k in range(N)]
    C = []
    for i in range(N + 1):
        right = sig[i] if i < N else fmpq(0)
        left = sig[i - 1] if i > 0 else fmpq(0)
        C.append(right - left)
    return sig, C


# --------------------------------------------------------------------------------------------------------------- data
CERT = sys.argv[1] if __name__ == "__main__" else None
D = {}


def setup(path):
    d, polys, b, e, G, X, v, errs = load(path)
    Q, s, errs2 = data_checks(polys, b, e, G, X)
    errs += errs2
    sig, C = slope_jumps(e, G)
    D.update(d=d, polys=polys, b=b, e=e, G=G, X=X, v=v, Q=Q, s=s, sig=sig, C=C, errs=errs)
    N = len(e) - 1
    D["N"] = N
    D["Ea"] = [arb(x) for x in e]
    D["Ca"] = [arb(x) for x in C]
    D["W"] = [j for j in range(len(Q)) if b[j] > 0]
    D["ba"] = [arb(x) for x in b]
    D["dQ"] = [P.derivative() for P in Q]
    # certified roots of the weighted polynomials
    ctx.prec = 256
    roots = {}
    for j in D["W"]:
        rr = []
        for (r, mult) in Q[j].complex_roots():
            if mult != 1:
                errs.append(f"Q_{j}: repeated root")
            if r.imag == 0:
                mid = fq_of_exact_arb(r.real)
                lo, hi = mid - BRACKET, mid + BRACKET
                # the isolating ball lies strictly inside [lo, hi]
                if not (r.real - arb(lo) > 0 and arb(hi) - r.real > 0):
                    errs.append(f"Q_{j}: real root ball not inside bracket")
                if not (Q[j](lo) * Q[j](hi) < 0):
                    errs.append(f"Q_{j}: no sign change on root bracket")
                rr.append(("r", r, lo, hi))
            else:
                rr.append(("c", r, None, None))
        roots[j] = rr
    ctx.prec = PREC
    D["roots"] = roots
    # brackets inside [e_0, e_N]
    br = []
    for j in D["W"]:
        for (kind, r, lo, hi) in roots[j]:
            if kind == "r" and hi > e[0] and lo < e[-1]:
                if lo <= e[0] or hi >= e[-1]:
                    errs.append(f"root bracket of Q_{j} straddles e_0 or e_N")
                br.append((lo, hi, j))
    br.sort()
    for a, bb in zip(br, br[1:]):
        if not a[1] < bb[0]:
            errs.append("overlapping root brackets")
    D["brackets"] = br


# ---------------------------------------------------------------------------------------------------------- potential
def U_real(x):
    """U at a real arb ball x via the closed form."""
    tot = arb(0)
    for Ei, Ci in zip(D["Ea"], D["Ca"]):
        tot += Ci * H_ball(Ei - x)
    return tot


def U_complex(z):
    tot = acb(0)
    for Ei, Ci in zip(D["Ea"], D["Ca"]):
        tot += acb(Ci) * Hc(acb(Ei) - z)
    return tot.real


def U_direct(xq):
    """Independent formula: sum over pieces of int log|x - y| G(y) dy (exact antiderivatives), xq an fmpq not a node."""
    e, G, sig = D["e"], D["G"], D["sig"]
    x = arb(xq)
    tot = arb(0)

    def prim(t, A, B):   # antiderivative in t of log|t| (A + B t)
        if t == 0:
            return arb(0)
        ta = arb(t)
        L = abs(ta).log()
        return A * (ta * L - ta) + B * (ta * ta / 2 * L - ta * ta / 4)

    for k in range(len(e) - 1):
        A = arb(G[k] + sig[k] * (xq - e[k]))
        B = arb(sig[k])
        tot += prim(e[k + 1] - xq, A, B) - prim(e[k] - xq, A, B)
    return tot


# --------------------------------------------------------------------------------------------------------------- U3
FACT = [1, 1, 2, 6, 24, 120, 720, 5040]


def far_model(k):
    e, N = D["e"], D["N"]
    c = (e[k] + e[k + 1]) / 2
    hk = (e[k + 1] - e[k]) / 2
    near = [i for i in range(N + 1) if e[k] - DNEAR <= e[i] <= e[k + 1] + DNEAR]
    nearset = set(near)
    Dn = [arb(0) for _ in range(7)]
    M7 = arb(0)
    hka = arb(hk)
    for i in range(N + 1):
        if i in nearset:
            continue
        t = arb(e[i] - c)
        Ci = D["Ca"][i]
        L = abs(t).log()
        # F^(n)(c) = (-1)^n sum C_i H^(n)(t_i)
        Hn = [t * t * (L / 2 - arb(3) / 4), t * (L - 1), L, 1 / t, -1 / (t * t), 2 / (t ** 3), -6 / (t ** 4)]
        for n in range(7):
            Dn[n] += Ci * Hn[n] * (1 if n % 2 == 0 else -1)
        dist = abs(t) - hka
        M7 += abs(Ci) * 24 / dist ** 5
    return c, hk, near, Dn, M7


def poly_eval_taylor(Dn, start, u):
    # sum_{n >= start} Dn[n] u^(n-start) / (n-start)!
    tot = arb(0)
    for n in range(6, start - 1, -1):
        tot = tot * u + Dn[n] / FACT[n - start]
    return tot


def dq_lower(k):
    """Lower bound over the node interval k of sum_j b_j sum_rho Re 1/(x - rho)^2."""
    e = D["e"]
    p, q = e[k], e[k + 1]
    xb = acb(arb((p + q) / 2, (q - p) / 2))
    tot = arb(0)
    for j in D["W"]:
        bj = D["ba"][j]
        for (kind, r, lo, hi) in D["roots"][j]:
            if kind == "r":
                dmax = qmax(qabs(p - lo), qabs(p - hi), qabs(q - lo), qabs(q - hi))
                tot += bj / arb(dmax) ** 2
            else:
                val = (1 / ((xb - r) * (xb - r))).real
                if not val.is_finite():
                    return arb("nan")
                tot += bj * val.lower()
    return tot


def quad_lb_positive(a0, a1, a2, w):
    """Is min_{|u| <= w/2} a0 + a1 u + a2 u^2 certainly > 0?  Returns (ok, float lower estimate)."""
    hw = arb(w) / 2
    cands = [a0 - a1 * hw + a2 * hw * hw, a0 + a1 * hw + a2 * hw * hw]
    if a2 > 0:
        ustar = -a1 / (2 * a2)
        if not (ustar > hw or ustar < -hw):
            cands.append(a0 - a1 * a1 / (4 * a2))
    elif not (a2 <= 0):
        cands.append(a0 - abs(a1) * hw - abs(a2) * hw * hw)
    ok = all(cc > 0 for cc in cands)
    lows = []
    for cc in cands:
        lows.append(float(cc.lower()) if cc.is_finite() else float("-inf"))
    return ok, min(lows)


def lb_sub(p, q, model, dqk):
    """Rigorous test that h > 0 on [p, q] (inside node interval, no weighted root inside)."""
    c, hk, near, Dn, M7 = model
    e, C, Ca = D["e"], D["C"], D["Ca"]
    w = q - p
    m = (p + q) / 2
    um = arb(m - c)
    uJ = arb(m - c, w / 2)
    aum = abs(um)
    # far field
    Fm = poly_eval_taylor(Dn, 0, um) + arb(0, (M7 * aum ** 7 / 5040).abs_upper())
    Fpm = poly_eval_taylor(Dn, 1, um) + arb(0, (M7 * aum ** 6 / 720).abs_upper())
    uJmax = abs(uJ).abs_upper()
    F2 = poly_eval_taylor(Dn, 2, uJ) + arb(0, (M7 * uJmax ** 5 / 120).abs_upper())
    Rm = Fm
    Rpm = Fpm
    D2 = F2.lower() if F2.is_finite() else arb("nan")
    Sp = arb(0)
    Sq = arb(0)
    Sm = arb(0)
    four_w = 4 * w
    half_w = arb(w) / 2
    for i in near:
        ei = e[i]
        Ci = C[i]
        if Ci == 0:
            continue
        if ei < p:
            dmin, dmax = p - ei, q - ei
        elif ei > q:
            dmin, dmax = ei - q, ei - p
        else:
            dmin, dmax = fmpq(0), qmax(ei - p, q - ei)
        if Ci > 0 and dmin <= four_w:
            # concave on J (dmax < 1): chord
            Sp += Ca[i] * H_ball(arb(ei - p))
            Sq += Ca[i] * H_ball(arb(ei - q))
            Sm += Ca[i] * H_ball(arb(ei - m))
            continue
        t = arb(ei - m)
        L = abs(t).log()
        Rm += Ca[i] * (t * t * (L / 2 - arb(3) / 4))
        Rpm -= Ca[i] * (t * (L - 1))
        if dmin > four_w:
            D2 += Ca[i] * L - abs(Ca[i]) * half_w / arb(dmin)
        else:          # here C_i < 0
            D2 += Ca[i] * arb(dmax).log()
    for j in D["W"]:
        P = D["Q"][j]
        Qm = P(m)
        dQm = D["dQ"][j](m)
        Rm -= D["ba"][j] * arb(qabs(Qm)).log()
        Rpm -= D["ba"][j] * arb(dQm / Qm)
    D2 += dqk
    a0 = Rm + (Sp + Sq) / 2
    a1 = Rpm + (Sq - Sp) / arb(w)
    a2 = D2 / 2
    ok, lb = quad_lb_positive(a0, a1, a2, w)
    hm = Rm + Sm                       # rigorous enclosure of h(m)
    return ok, lb, bool(hm < 0), hm


def lb_bracket(p, q, j0, lo, hi):
    """h > 0 on [p, q], a sub-interval of the root bracket [lo, hi] of the weighted Q_j0 (which contains its root)."""
    xb = arb((p + q) / 2, (q - p) / 2)
    xr = arb((lo + hi) / 2, (hi - lo) / 2)
    val = U_real(xb)
    for j in D["W"]:
        if j == j0:
            continue
        val -= D["ba"][j] * abs(D["Q"][j](xb)).log()
    M1 = abs(D["dQ"][j0](xr)).abs_upper()
    val -= D["ba"][j0] * (M1 * arb(hi - lo)).log()
    ok = bool(val > 0)
    return ok, float(val.lower()) if val.is_finite() else float("-inf")


def work(k, wmin=fmpq(1, 10 ** 11)):
    e = D["e"]
    model = far_model(k)
    dqk = dq_lower(k)
    pieces = []
    a = e[k]
    for (lo, hi, j) in D["brackets"]:
        if hi > e[k] and lo < e[k + 1]:          # bracket meets this node interval: clip it
            p1, q1 = qmax(lo, e[k]), (hi if hi < e[k + 1] else e[k + 1])
            if p1 > a:
                pieces.append((a, p1, None))
            pieces.append((p1, q1, (j, lo, hi)))
            a = q1
    if a < e[k + 1]:
        pieces.append((a, e[k + 1], None))
    n = 0
    minlb, where = float("inf"), None
    fails = []
    depth_max = 0
    covered = fmpq(0)
    for (p0, q0, jb) in pieces:
        if jb is not None:
            ok, lb = lb_bracket(p0, q0, jb[0], jb[1], jb[2])
            n += 1
            covered += q0 - p0
            if lb < minlb:
                minlb, where = lb, float(p0)
            if not ok:
                fails.append((float(p0), f"bracket of Q_{jb[0]}"))
            continue
        stack = [(p0, q0, 0)]
        while stack:
            p, q, dep = stack.pop()
            ok, lb, neg, hm = lb_sub(p, q, model, dqk)
            n += 1
            if neg:                        # definite counterexample: h(m) < 0
                fails.append((float((p + q) / 2), f"h(m) = {hm.str(5)} < 0"))
                covered += q - p
                for (pp, qq, dd) in stack:
                    covered += qq - pp
                stack = []
                break
            if n > MAXTESTS:
                fails.append((float((p + q) / 2), f"more than {MAXTESTS} interval tests in node interval {k}"))
                covered += q - p
                for (pp, qq, dd) in stack:
                    covered += qq - pp
                stack = []
                break
            if ok:
                covered += q - p
                if lb < minlb:
                    minlb, where = lb, float((p + q) / 2)
                depth_max = max(depth_max, dep)
                continue
            if q - p < wmin:
                fails.append((float((p + q) / 2), f"lower {lb:.3e} at width {float(q - p):.1e}"))
                covered += q - p
                continue
            mid = (p + q) / 2
            stack.append((mid, q, dep + 1))
            stack.append((p, mid, dep + 1))
    return dict(k=k, ok=not fails, fails=fails, n=n, minlb=minlb, where=where, depth=depth_max, covered=covered)


def init_worker(path):
    setup(path)


# --------------------------------------------------------------------------------------------------------------- main
def main():
    t0 = time.time()
    path = sys.argv[1]
    nproc = int(sys.argv[2]) if len(sys.argv) > 2 else 1
    setup(path)
    e, G, C, s, b, Q, v, X = D["e"], D["G"], D["C"], D["s"], D["b"], D["Q"], D["v"], D["X"]
    errs = D["errs"]
    N = D["N"]
    print(f"certificate {path}: {len(Q)} polynomials ({len(D['W'])} weighted), {N + 1} nodes on [{float(e[0])}, "
          f"{float(e[-1])}], X = {X}, v = {v}")
    print(f"s = {float(s)!r} (exact rational, {len(str(s))} chars)")
    # (U1)
    budget = sum((b[j] * Q[j].degree() for j in range(len(Q))), fmpq(0))
    u1 = budget < s
    print(f"(U1) sum b_j deg Q_j = {float(budget):.10f} < s = {float(s):.10f}: {u1}")
    # moments
    m0 = sum(C, fmpq(0))
    m1 = sum((C[i] * e[i] for i in range(N + 1)), fmpq(0))
    m2 = sum((C[i] * e[i] * e[i] for i in range(N + 1)), fmpq(0))
    mom = (m0 == 0 and m1 == 0 and m2 == 2 * s)
    print(f"moments: sum C = {m0}, sum C e = {m1}, sum C e^2 == 2s: {m2 == 2 * s}")
    # closed form vs direct piecewise formula at a few points
    import random
    rng = random.Random(7)
    worst = 0.0
    for _ in range(8):
        k = rng.randrange(N)
        xq = e[k] + (e[k + 1] - e[k]) * fmpq(rng.randrange(1, 999), 1000)
        dlt = abs(U_real(arb(xq)) - U_direct(xq))
        worst = max(worst, float(dlt.abs_upper()))
    print(f"closed form U vs piecewise direct formula at 8 points: max |diff| <= {worst:.2e}")
    # (U2)
    u2 = True
    ctx.prec = 256
    sa = arb(s)
    u2min = (float("inf"), None)
    D["u2vals"] = {}
    for j in D["W"]:
        a = arb(abs(int(Q[j].coeffs()[-1])))
        tot = sa * a.log()
        for (kind, r, lo, hi) in D["roots"][j]:
            if kind == "r":
                tot += U_real(r.real)
            else:
                tot += U_complex(r)
        okj = bool(tot > 0)
        u2 = u2 and okj
        D["u2vals"][j] = tot
        if float(tot.mid()) < u2min[0]:
            u2min = (float(tot.mid()), j)
        if not okj:
            print(f"(U2) FAILED for Q_{j}: {tot}")
    ctx.prec = PREC
    print(f"(U2) all {len(D['W'])} weighted: {u2}; smallest int log|Q| dmu = {u2min[0]:.4e} (Q_{u2min[1]})")
    # (V)
    ctx.prec = 256
    I = arb(0)
    one = fmpq(1)
    for k in range(N):
        lo, hi = qmax(e[k], one), e[k + 1]
        if not hi > lo:
            continue
        beta = D["sig"][k]
        alpha = G[k] - beta * e[k]
        A, B = arb(alpha), arb(beta)

        def prim(x):
            xa = arb(x)
            L = xa.log()
            return A * (xa * L - xa) + B * (xa * xa / 2 * L - xa * xa / 4)
        I += prim(hi) - prim(lo)
    vex = I / arb(s)
    vok = bool(arb(v) - vex > 0)
    ctx.prec = PREC
    print(f"(V) (1/s) int log+ dmu = {vex.str(15)}; claim v = {float(v)!r}; margin {float((arb(v) - vex).mid()):.3e}: {vok}")
    print(f"data errors: {errs if errs else 'none'}; real-root brackets inside [e_0, e_N]: {len(D['brackets'])}")
    # (U3)
    if errs or not mom:
        print("(U3) skipped: data or moment checks failed")
        print("NOT VERIFIED", f"[{time.time() - t0:.0f}s]")
        sys.exit(1)
    wmin = fmpq(1, 10 ** 11)
    t1 = time.time()
    if nproc > 1:
        with get_context('fork').Pool(nproc) as pool:          # fork: workers inherit D and ctx.prec
            res = pool.map(work, range(N), chunksize=4)
    else:
        res = [work(k) for k in range(N)]
    nint = sum(r["n"] for r in res)
    fails = [f for r in res for f in r["fails"]]
    covered = sum((r["covered"] for r in res), fmpq(0))
    best = min(res, key=lambda r: r["minlb"])
    u3 = (not fails) and covered == e[-1] - e[0]
    print(f"(U3) {nint} interval tests, coverage exact: {covered == e[-1] - e[0]}, failures: {len(fails)}, "
          f"max bisection depth {max(r['depth'] for r in res)}, smallest certified lower bound "
          f"{best['minlb']:.4e} near x = {best['where']:.6f}  [{time.time() - t1:.0f}s]")
    for f in fails[:20]:
        print("   FAILED near", f)
    allok = (not errs) and u1 and mom and u2 and vok and u3
    print("VERIFIED" if allok else "NOT VERIFIED", f"[{time.time() - t0:.0f}s]")
    sys.exit(0 if allok else 1)


if __name__ == "__main__":
    main()
