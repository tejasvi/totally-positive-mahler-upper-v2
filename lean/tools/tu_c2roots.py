"""All real roots of each weighted Q_j of the certificate, as exact brackets at scale D = 400 * 2^60 for the (C2)
checker: (lo, hi) with lo < hi and a sign change of Q, or lo = hi at an exact root. Scans [0, 12] exactly (step 1e-4)
and refines by bisection; reports the polynomials whose real-root count is below the degree (non-real roots).
usage: python3 -I tu_c2roots.py CERT.json OUT.json"""
import json, sys
from fractions import Fraction as Fr
DEN = 400; KC = 60
D = DEN << KC
c = json.load(open(sys.argv[1]))
def val(coef, X, M):
    v = 0
    for i, a in enumerate(coef): v = v * X + a * M ** i
    return v
def sg(v): return (v > 0) - (v < 0)
M = 10 ** 5
res = {}
for j, coef in enumerate(c['polys']):
    d = len(coef) - 1
    brs = []
    prev = None
    for X in range(0, 12 * M + 1):
        s = sg(val(coef, X, M))
        if s == 0:
            Xd = Fr(X * D, M); assert Xd.denominator == 1, (j, X)
            brs.append((int(Xd), int(Xd))); prev = None; continue
        if prev is not None and prev[1] != 0 and s != prev[1]:
            a, b = (prev[0] * D) // M, -((-X * D) // M)
            sa = sg(val(coef, a, D)); assert sa != 0 and sa != sg(val(coef, b, D))
            while b - a > 2:
                m = (a + b) // 2; sm = sg(val(coef, m, D))
                if sm == 0: a, b = m, m; break
                if sm == sa: a = m
                else: b = m
            brs.append((a, b))
        prev = (X, s)
    brs.sort()
    assert all(brs[i][1] < brs[i + 1][0] for i in range(len(brs) - 1))
    res[j] = brs
    flag = '' if len(brs) == d else f'  <-- {d - len(brs)} roots not real (or outside [0, 12])'
    print(j, 'deg', d, 'real roots found', len(brs), flag)
json.dump({str(j): v for j, v in res.items()}, open(sys.argv[2], 'w'))
