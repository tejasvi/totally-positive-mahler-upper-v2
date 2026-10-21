"""Exact integer reference implementation of the Lean checker TUCore.Check for condition (C3) of the certificate
(tp upper bound): h(x) = U(x) - sum_j b_j log|Q_j(x)| >= 0 on [e_0, e_N], and the generator of its leaves
(tiling of [e_0, e_N] into chord intervals and root windows). Same arithmetic as tools/tp_check_ref.py (lower bound), with the
signs of the potential flipped: singular nodes are the nodes with C_i < 0 at a leaf end, the curvature bound uses the
upper bound of sum C_i log|x - e_i|, and U enters through its lower enclosure. Not part of any proof.

usage: python3 -I tu_check_ref.py CERT.json OUT_leaves.json ROOTS.json [workers]
"""
import json, sys, os
from fractions import Fraction as Fr

P = 64           # scale of point quantities (logs, h)
QS = 64          # scale of the C_i
J = 7            # series terms after table reduction
W = 66           # table field width
DEN = 400        # node denominator: e_k = n_k / 400

# ---------------------------------------------------------------- logarithm (mirror of AuxCore.LogK, as in tp)
def atanhK(p, z2, n, j, pw, acc):
    for _ in range(n):
        acc += pw // (2 * j + 1)
        pw = (pw * z2) >> p
        j += 1
    return acc, pw

def logRatK(p, Jn, A, B):
    zl = ((A - B) * (1 << p)) // (A + B)
    acc, pw = atanhK(p, (zl * zl) >> p, Jn, 0, zl, 0)
    d = 8 * (2 * Jn + 1)
    tail = (9 * (pw + 6) + d - 1) // d
    return 2 * acc, 2 * (acc + 7 * Jn + tail)

def roundOut(g, r):
    return (r[0] >> g, (r[1] + (1 << g) - 1) >> g)

def mkTable(p, g, Jn, Wd):
    T = 0
    for i in range(16):
        lo, hi = roundOut(g, logRatK(p + g, Jn, 16 + i, 16))
        T |= (lo << (Wd * 2 * i)) | (hi << (Wd * (2 * i + 1)))
    return T

TAB = mkTable(P, 24, 48, W)
L2 = roundOut(24, logRatK(P + 24, 48, 2, 1))

def logK(a, b):
    """enclosure (lo, hi) of 2^P log(a/b), a, b > 0"""
    s = a.bit_length() - 1; t = b.bit_length() - 1
    A0 = a << t; B = b << s
    if B <= A0: A, e = A0, s - t
    else: A, e = A0 << 1, s - t - 1
    i = (16 * (A - B)) // B
    lo, hi = logRatK(P, J, 16 * A, (16 + i) * B)
    m = (1 << W) - 1
    lo += (TAB >> (W * 2 * i)) & m
    hi += (TAB >> (W * (2 * i + 1))) & m
    if e >= 0: return lo + e * L2[0], hi + e * L2[1]
    return lo + e * L2[1], hi + e * L2[0]

def fdiv(a, b): return a // b
def cdiv(a, b): return -((-a) // b)

def encl1(g, H):
    lo = g[0] if g else 0; hi = lo
    for n in range(1, len(g)):
        t = g[n] * H ** n
        if t < 0: lo += t
        else: hi += t
    return (lo, hi)

def deriv(g):
    return [n * g[n] for n in range(1, len(g))]

def imul(a, b):
    xs = (a[0] * b[0], a[0] * b[1], a[1] * b[0], a[1] * b[1])
    return (min(xs), max(xs))

# ---------------------------------------------------------------- certificate
class Cert:
    def __init__(self, path):
        c = json.load(open(path))
        assert c['format'] == 'tpmahler-upper-v1'
        self.polys = c['polys']
        self.bw = [Fr(x) for x in c['b']]
        for x in self.bw: assert x.denominator & (x.denominator - 1) == 0
        nodes = [Fr(x) for x in c['nodes']]
        assert all((x * DEN).denominator == 1 for x in nodes)
        self.n = [int(x * DEN) for x in nodes]
        G = [Fr(x) for x in c['G']]
        self.GS = max(x.denominator for x in G).bit_length() - 1
        assert all((x * (1 << self.GS)).denominator == 1 for x in G)
        self.g = [int(x * (1 << self.GS)) for x in G]
        self.N = len(self.n) - 1
        N = self.N
        sn = [(self.g[k + 1] - self.g[k]) * DEN for k in range(N)]
        sd = [(self.n[k + 1] - self.n[k]) << self.GS for k in range(N)]
        self.C = []
        for i in range(N + 1):
            if 0 < i < N: num, den = sn[i] * sd[i - 1] - sn[i - 1] * sd[i], sd[i] * sd[i - 1]
            elif i == 0: num, den = sn[0], sd[0]
            else: num, den = -sn[N - 1], sd[N - 1]
            self.C.append((num, den, fdiv(num << QS, den), cdiv(num << QS, den)))
        self.s_num = sum((self.n[k + 1] - self.n[k]) * (self.g[k] + self.g[k + 1]) for k in range(N))
        self.s_den = 2 * DEN << self.GS
        self.b_num = [x.numerator for x in self.bw]; self.b_sh = [x.denominator.bit_length() - 1 for x in self.bw]
        self.deg = [len(q) - 1 for q in self.polys]
        self.sumabsC = sum(max(abs(c[2]), abs(c[3])) for c in self.C)
        self.active = [j for j in range(len(self.polys)) if self.bw[j] > 0]

    def C1_ok(self):
        return sum(self.bw[j] * self.deg[j] for j in self.active) < Fr(self.s_num, self.s_den)

def poly_taylor(coeffs_desc, X, D):
    """beta_n (ascending): R(v) = D^d Q((X+v)/D) = sum beta_n v^n (exact integers)"""
    d = len(coeffs_desc) - 1
    a = list(reversed(coeffs_desc))
    b = [a[m] * D ** (d - m) for m in range(d + 1)]
    for i in range(d):
        for j in range(d - 1, i - 1, -1):
            b[j] += X * b[j + 1]
    return b

class Ctx:
    def __init__(self, cert):
        self.c = cert

    def node_pass(self, Xp, Xq, k):
        """U-sum intervals at p and q (scale 2^(P+QS+2), times D^2) over the non-singular nodes, the node part of the
        curvature bound (upper bound of sum C_i log|x - e_i| on [p,q], scale 2^(P+QS)), and the inside flag.
        Singular nodes: C_i < 0 at a leaf end (their terms C_i H(e_i - x) are >= 0 on the leaf)."""
        c = self.c
        D = DEN << k
        LD = logK(D, 1)
        Sp = [0, 0]; Sq = [0, 0]; M = 0; inside = False
        twoP34 = 3 << P
        for i in range(c.N + 1):
            num, den, clo, chi = c.C[i]
            if num == 0: continue
            ni = c.n[i] << k
            dp = ni - Xp; dq = ni - Xq
            if dp > 0 and dq < 0: inside = True; continue
            ap = abs(dp); aq = abs(dq)
            singular = (num < 0) and (ap == 0 or aq == 0)
            if singular: continue
            Lp = logK(ap, 1) if ap else None
            Lq = logK(aq, 1) if aq else None
            if ap:
                Y = (ap * ap * (2 * (Lp[0] - LD[1]) - twoP34), ap * ap * (2 * (Lp[1] - LD[0]) - twoP34))
                t = imul((clo, chi), Y); Sp[0] += t[0]; Sp[1] += t[1]
            if aq:
                Y = (aq * aq * (2 * (Lq[0] - LD[1]) - twoP34), aq * aq * (2 * (Lq[1] - LD[0]) - twoP34))
                t = imul((clo, chi), Y); Sq[0] += t[0]; Sq[1] += t[1]
            if Xq > Xp:
                if ap and aq:
                    vlo = min(Lp[0], Lq[0]) - LD[1]; vhi = max(Lp[1], Lq[1]) - LD[0]
                elif ap:    # node at q (C > 0): log|x - e_i| <= log|p - e_i|
                    vlo = None; vhi = Lp[1] - LD[0]
                else:
                    vlo = None; vhi = Lq[1] - LD[0]
                if num > 0:
                    M += chi * vhi if vhi >= 0 else clo * vhi
                else:
                    M += chi * vlo if vlo >= 0 else clo * vlo
        return dict(Sp=Sp, Sq=Sq, M=M, inside=inside, LD=LD, D=D)

    def U_lo(self, S, D):
        """lower bound of 2^P U from S (scale 2^(P+QS+2) D^2)"""
        return fdiv(S[0], (D * D) << (QS + 2))

    def chord_leaf(self, Xp, Xq, k, x0q, convmask):
        c = self.c
        if not Xp < Xq: return None
        D = DEN << k; H = Xq - Xp
        if H > D: return None
        r = self.node_pass(Xp, Xq, k)
        if r['inside']: return None
        LD = r['LD']
        Ap = self.U_lo(r['Sp'], D)
        Aq = self.U_lo(r['Sq'], D)
        Tx0 = 0; slope = 0
        Mt = r['M']
        Mpoly = 0
        for j in c.active:
            coef = c.polys[j]
            beta = poly_taylor(coef, Xp, D)
            d = len(beta) - 1
            b1 = deriv(beta); b2 = deriv(b1)
            Wp = beta[0]; Wq = sum(beta[n] * H ** n for n in range(d + 1))
            R0 = encl1(beta, H); R1 = encl1(b1, H); R2 = encl1(b2, H)
            ex0 = R0[0] > 0 or R0[1] < 0
            mono = R1[0] > 0 or R1[1] < 0
            if not (ex0 or (mono and Wp * Wq > 0)): return None
            cn, cs = c.b_num[j], c.b_sh[j]
            def mclog_lo(Wv):
                Lw = logK(abs(Wv), 1)
                return fdiv(-cn * (Lw[1] - d * LD[0]), 1 << cs)
            sq = imul(R1, R1); sq = (max(sq[0], 0) if R1[0] * R1[1] >= 0 else 0, sq[1])
            RR = imul(R0, R2)
            if (convmask >> j) & 1:
                if sq[0] - RR[1] < 0: return None
                if x0q:
                    Tx0 += mclog_lo(Wq)
                    R1H = sum(b1[n] * H ** n for n in range(len(b1)))
                    slope += fdiv(cn * R1H * H << P, Wq << cs) if Wq > 0 else fdiv((-cn) * R1H * H << P, (-Wq) << cs)
                else:
                    Tx0 += mclog_lo(Wp)
                    R10 = b1[0] if b1 else 0
                    slope += fdiv(-cn * R10 * H << P, Wp << cs) if Wp > 0 else fdiv(cn * R10 * H << P, (-Wp) << cs)
            else:
                Ap += mclog_lo(Wp); Aq += mclog_lo(Wq)
                Nhi = sq[1] - RR[0]
                rlo = min(abs(R0[0]), abs(R0[1])) if ex0 else 0
                if mono: rlo = max(rlo, min(abs(Wp), abs(Wq)))
                if Nhi > 0:
                    Mpoly += cdiv(cn * H * H * Nhi << P, (rlo * rlo) << cs)
        Mn = cdiv(max(Mt, 0) * H * H, (D * D) << QS) if Mt > 0 else 0
        corr = cdiv(Mn + Mpoly, 8)
        if x0q:
            return Ap + Tx0 + slope - corr, Aq + Tx0 - corr
        return Ap + Tx0 - corr, Aq + Tx0 + slope - corr

    def window_leaf(self, Xu, Xv, k):
        c = self.c
        D = DEN << k; H = Xv - Xu
        if not Xu < Xv: return None
        r = self.node_pass(Xu, Xu, k)
        LD = r['LD']
        F = 0
        for j in c.active:
            coef = c.polys[j]
            beta = poly_taylor(coef, Xu, D)
            d = len(beta) - 1
            R0 = encl1(beta, H); B = max(abs(R0[0]), abs(R0[1]))
            Lb = logK(B, 1)
            F += fdiv(-c.b_num[j] * (Lb[1] - d * LD[0]), 1 << c.b_sh[j])
        Uu = self.U_lo(r['Sp'], D)
        dU = cdiv(47 * c.sumabsC * H << P, D << QS)
        return F + Uu - dU

# ---------------------------------------------------------------- tiling generator
def pt_val(X, k):
    return Fr(X, DEN << k)

def common(a, b):
    k = max(a[1], b[1])
    return a[0] << (k - a[1]), b[0] << (k - b[1]), k

def convex_mask(ctx, Xp, Xq, k):
    c = ctx.c; D = DEN << k; H = Xq - Xp; mask = 0
    for j in c.active:
        coef = c.polys[j]
        beta = poly_taylor(coef, Xp, D); d = len(beta) - 1
        b1 = deriv(beta); b2 = deriv(b1)
        Wq = sum(beta[n] * H ** n for n in range(d + 1))
        R0 = encl1(beta, H); R1 = encl1(b1, H); R2 = encl1(b2, H)
        ex0 = R0[0] > 0 or R0[1] < 0; mono = R1[0] > 0 or R1[1] < 0
        if not (ex0 or (mono and beta[0] * Wq > 0)): return None
        sq = imul(R1, R1); sq = (max(sq[0], 0) if R1[0] * R1[1] >= 0 else 0, sq[1])
        RR = imul(R0, R2)
        if sq[0] - RR[1] >= 0: mask |= 1 << j
    return mask

def check_interval(args):
    ctx, a, b, maxk = args
    leaves = []; fails = []; stack = [(a, b)]
    while stack:
        a, b = stack.pop()
        Xp, Xq, k = common(a, b)
        best = None
        mask = convex_mask(ctx, Xp, Xq, k)
        if mask is not None:
            for x0q in (True, False):
                res = ctx.chord_leaf(Xp, Xq, k, x0q, mask)
                if res is not None:
                    lb = min(res)
                    if best is None or lb > best[0]: best = (lb, x0q, mask)
        if best is not None and best[0] > 0:
            leaves.append(dict(Xp=Xp, Xq=Xq, k=k, x0q=best[1], mask=best[2], lb=best[0]))
        elif k >= maxk:
            fails.append(dict(Xp=Xp, Xq=Xq, k=k, lb=None if best is None else best[0]))
        else:
            m = (Xp + Xq, k + 1)
            stack.append(((Xp << 1, k + 1), m)); stack.append((m, (Xq << 1, k + 1)))
    return leaves, fails

KW = 60

def make_breaks(cert, roots):
    """initial chord intervals (consecutive break points) and root windows (Xu, Xv, k) at scale 400 * 2^KW"""
    lo = (cert.n[0], 0); hi = (cert.n[-1] + 1, 0)     # one node spacing past e_N, so that [e_0, e_N] is covered by Ico
    wins = []
    for r in roots:
        wins.append((r['X0'] - 1, r['X1'] + 1, KW))
    wins.sort(key=lambda w: Fr(w[0], DEN << w[2]))
    bps = {(X, 0) for X in cert.n} | {lo, hi}
    assert all(pt_val(*lo) <= pt_val(*t) <= pt_val(*hi) for t in bps)
    wpts = []
    for u, v, k in wins:
        bps |= {(u, k), (v, k)}; wpts.append((Fr(u, DEN << k), Fr(v, DEN << k)))
    bps = sorted(bps, key=lambda t: pt_val(*t)); uniq = []
    for t in bps:
        if uniq and pt_val(*uniq[-1]) == pt_val(*t): continue
        uniq.append(t)
    ivs = [(uniq[i], uniq[i + 1]) for i in range(len(uniq) - 1)
           if not any(wu <= pt_val(*uniq[i]) and pt_val(*uniq[i + 1]) <= wv for wu, wv in wpts)]
    return ivs, wins

def main():
    import multiprocessing as mp, time
    cert = Cert(sys.argv[1]); out = sys.argv[2]; roots = json.load(open(sys.argv[3]))
    workers = int(sys.argv[4]) if len(sys.argv) > 4 else os.cpu_count()
    assert cert.C1_ok()
    ctx = Ctx(cert)
    ivs, wins = make_breaks(cert, roots)
    print('windows', len(wins), 'initial chord intervals', len(ivs), flush=True)
    t0 = time.time()
    with mp.Pool(workers) as pool:
        res = pool.map(check_interval, [(ctx, a, b, 70) for a, b in ivs], chunksize=4)
    leaves = [l for r in res for l in r[0]]; fails = [f for r in res for f in r[1]]
    print('chord leaves', len(leaves), 'fails', len(fails),
          'min lb', (min(l['lb'] for l in leaves) / 2**P) if leaves else None, f'{time.time()-t0:.0f}s', flush=True)
    wl = []
    for u, v, k in wins:
        lb = ctx.window_leaf(u, v, k)
        wl.append(dict(Xu=u, Xv=v, k=k, lb=lb))
    print('windows min lb', min(w['lb'] for w in wl) / 2**P if wl else None, 'bad', sum(w['lb'] <= 0 for w in wl), flush=True)
    json.dump(dict(chord=leaves, windows=wl, fails=fails), open(out, 'w'))

if __name__ == '__main__':
    main()
