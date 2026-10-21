"""Pieces for the rigorous quadrature of ∫ log|Q_15| G over [e_0, e_N] (condition (C2) for the polynomial Q_15,
which has non-real roots), and an exact integer mirror of the Lean checker TUCore.Quad. Each piece lies in one node
piece [n_i, n_{i+1}]/400 and is (kind 0) plain: Q_15 has no zero on it (Taylor enclosure), log|Q| >= log min|Q|; or
(kind 1) a root window: sign change, Q' != 0 on it, log|Q(t)| >= log min|Q'| + log|t - rho|.
usage: python3 -I tu_quad15.py CERT.json C2ROOTS.json OUT.json"""
import json, sys, os
from fractions import Fraction as Fr
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
exec(open(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'tu_check_ref.py')).read().split('# ---------------------------------------------------------------- certificate')[0])
DEN = 400
def poly_taylor(coeffs_desc, X, D):
    """beta_n (ascending): R(v) = D^d Q((X+v)/D) = sum beta_n v^n (exact integers)"""
    d = len(coeffs_desc) - 1
    a = list(reversed(coeffs_desc))
    b = [a[m] * D ** (d - m) for m in range(d + 1)]
    for i in range(d):
        for j in range(d - 1, i - 1, -1):
            b[j] += X * b[j + 1]
    return b
c = json.load(open(sys.argv[1]))
roots = json.load(open(sys.argv[2]))['15']
desc = c['polys'][15]; d = len(desc) - 1
nodes = [int(Fr(x) * DEN) for x in c['nodes']]
G = [Fr(x) for x in c['G']]; GS = max(x.denominator for x in G).bit_length() - 1
g = [int(x * (1 << GS)) for x in G]
s_num = sum((nodes[k + 1] - nodes[k]) * (g[k] + g[k + 1]) for k in range(len(nodes) - 1)); s_den = 2 * DEN << GS
KR = 60
def mass_parts(i, Xa, Xb, k):
    """(GaNum, GbNum, W): G(a) = GaNum / W, G(b) = GbNum / W on node piece i"""
    n0, n1 = nodes[i] << k, nodes[i + 1] << k
    assert n0 <= Xa < Xb <= n1, (i, Xa, Xb, k)
    W = (1 << GS) * (n1 - n0)
    Ga = g[i] * (n1 - Xa) + g[i + 1] * (Xa - n0)
    Gb = g[i] * (n1 - Xb) + g[i + 1] * (Xb - n0)
    return Ga, Gb, W
def piece_lo(i, Xa, Xb, k, kind):
    """lower bound (scale 2^P) of the integral of log|Q| G over [Xa, Xb] / (400 2^k), or None"""
    D = DEN << k; H = Xb - Xa
    LD = logK(D, 1)
    beta = poly_taylor(desc, Xa, D)
    Ga, Gb, W = mass_parts(i, Xa, Xb, k)
    # mass = H / D * (Ga + Gb) / (2 W)
    mnum = H * (Ga + Gb); mden = D * 2 * W
    if kind == 0:
        R0 = encl1(beta, H)
        if not (R0[0] > 0 or R0[1] < 0): return None
        m = min(abs(R0[0]), abs(R0[1]))
        L = logK(m, 1)[0] - d * LD[1]
        return fdiv(L * mnum, mden)
    else:
        if H > D: return None
        Wa = beta[0]; Wb = sum(beta[n] * H ** n for n in range(d + 1))
        if not (Wa * Wb < 0): return None
        R1 = encl1(deriv(beta), H)
        if not (R1[0] > 0 or R1[1] < 0): return None
        m1 = min(abs(R1[0]), abs(R1[1]))
        L1 = logK(m1, 1)[0] - (d - 1) * LD[1]
        t1 = fdiv(L1 * mnum, mden)
        Lw = logK(H, 2 * D)[0]
        Gmax = max(Ga, Gb)
        t2 = fdiv(Gmax * H * (Lw - (1 << P)), W * D)
        return t1 + t2
def pt(X, k): return Fr(X, DEN << k)
pieces = []
rts = [(lo, hi) for lo, hi in roots]
for i in range(len(nodes) - 1):
    a, b = Fr(nodes[i], DEN), Fr(nodes[i + 1], DEN)
    inside = [r for r in rts if a < Fr(r[0], DEN << KR) and Fr(r[1], DEN << KR) < b]
    if not inside:
        m = 4; k = 2
        for j in range(m):
            pieces.append((i, (nodes[i] << k) + j, (nodes[i] << k) + j + 1, k, 0))
        continue
    assert len(inside) == 1
    lo, hi = inside[0]
    k = KR
    n0, n1 = nodes[i] << k, nodes[i + 1] << k
    wa, wb = lo - 2, hi + 2          # window at scale 400 2^60
    # left of the window: geometric pieces [wa - 1.5^(j+1) u, wa - 1.5^j u] ... build from the window outward
    left = []; x = wa; step = 4
    while True:
        nx = x - step
        if nx <= n0: left.append((n0, x)); break
        left.append((nx, x)); step = step * 3 // 2 if step * 3 // 2 > step else step + 1
        x = nx
    right = []; x = wb; step = 4
    while True:
        nx = x + step
        if nx >= n1: right.append((x, n1)); break
        right.append((x, nx)); step = step * 3 // 2 if step * 3 // 2 > step else step + 1
        x = nx
    for (u, v) in reversed(left): pieces.append((i, u, v, k, 0))
    pieces.append((i, wa, wb, k, 1))
    for (u, v) in right: pieces.append((i, u, v, k, 0))
# check contiguity and evaluate
tot = 0; bad = 0
for p0, p1 in zip(pieces, pieces[1:]):
    assert pt(p0[2], p0[3]) == pt(p1[1], p1[3]), (p0, p1)
assert pt(pieces[0][1], pieces[0][3]) == Fr(nodes[0], DEN) and pt(pieces[-1][2], pieces[-1][3]) == Fr(nodes[-1], DEN)
fails = []
for p in pieces:
    v = piece_lo(*p)
    if v is None: fails.append(p); continue
    tot += v
print('pieces', len(pieces), 'fails', len(fails), 'total lower bound', tot / 2 ** P)
if fails: print(fails[:5])
json.dump(dict(pieces=pieces, total=tot), open(sys.argv[3], 'w'))
