"""Real roots of the weighted Q_j of the certificate inside [e_0, e_N], as exact sign-change brackets
X0 < 400 * 2^KW * root < X1 (scale of the root windows of tools/tu_check_ref.py), found by an exact sign scan
(step 1e-4) and bisection. Not part of any proof (the windows only need to contain the roots for the chord leaves
around them to pass; the Lean checker re-verifies every leaf).
usage: python3 -I tu_roots.py CERT.json OUT.json"""
import json, sys
from fractions import Fraction as Fr
DEN = 400; KW = 60
c = json.load(open(sys.argv[1]))
nodes = [Fr(x) for x in c['nodes']]; e0, eN = nodes[0], nodes[-1]
D = DEN << KW
def val(coef, X, M):        # M^d Q(X / M)
    v = 0
    for i, a in enumerate(coef): v = v * X + a * M ** i
    return v
def sg(v): return (v > 0) - (v < 0)
out = []
M = 10 ** 5
for j, coef in enumerate(c['polys']):
    if Fr(c['b'][j]) <= 0: continue
    lo = int(e0 * M) - 10; hi = int(eN * M) + 10
    prev = None
    for X in range(lo, hi + 1):
        s = sg(val(coef, X, M))
        if s == 0:
            Xd = Fr(X * D, M)
            out.append(dict(j=j, exact=True, X0=int(Xd) - 1 if Xd.denominator == 1 else int(Xd),
                            X1=int(Xd) + 1)); prev = None; continue
        if prev is not None and s != prev[1]:
            a, b = (prev[0] * D) // M, -((-X * D) // M)        # bracket at scale D (exact floor / ceil)
            sa = sg(val(coef, a, D)); assert sa != 0 and sa != sg(val(coef, b, D)), (j, X)
            while b - a > 2:
                m = (a + b) // 2; sm = sg(val(coef, m, D))
                if sm == 0: a, b = m - 1, m + 1; break
                if sm == sa: a = m
                else: b = m
            out.append(dict(j=j, exact=False, X0=a, X1=b))
        prev = (X, s)
out = [r for r in out if Fr(r['X1'], D) > e0 and Fr(r['X0'], D) < eN]
out.sort(key=lambda r: r['X0'])
print(len(out), 'real roots in the domain; min gap', float(min(Fr(out[i + 1]['X0'] - out[i]['X1'], D) for i in range(len(out) - 1))))
json.dump(out, open(sys.argv[2], 'w'))
