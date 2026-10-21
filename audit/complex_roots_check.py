#!/usr/bin/env python3
"""complex_roots_check.py CERT -- for every weighted polynomial with non-real roots: int log|Q| dmu by the closed form
s log|a| + sum_rho U(rho) (U(z) = Re sum_i C_i Hc(e_i - z) at non-real roots, as in check_up_second.py) against direct
mpmath quadrature of log|Q(y)| G(y) dy (each piece split at the real roots of Q); U at each non-real root against
quadrature; and two deliberately wrong complex formulas (real H of the modulus; evaluation at Re z), which must differ."""
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import check_up_second as M
from flint import arb, acb, ctx
import mpmath as mp
mp.mp.dps = 30
M.setup(sys.argv[1])
e, G = M.D["e"], M.D["G"]
ef = [mp.mpf(int(x.p)) / int(x.q) for x in e]
Gf = [mp.mpf(int(x.p)) / int(x.q) for x in G]
Ea, Ca = M.D["Ea"], M.D["Ca"]

def piece_quad(fun, k, splits):
    a, b, ga, gb = ef[k], ef[k + 1], Gf[k], Gf[k + 1]
    pts = [a] + [r for r in splits if a < r < b] + [b]
    return mp.quad(lambda y: fun(y) * (ga + (gb - ga) * (y - a) / (b - a)), pts)

found = False
for j in M.D["W"]:
    rr = M.D["roots"][j]
    cplx = [r for (kind, r, lo, hi) in rr if kind == "c"]
    if not cplx:
        continue
    found = True
    coeffs = M.D["polys"][j]
    reals = sorted(mp.mpf(r.real.mid().str(40, radius=False)) for (kind, r, lo, hi) in rr if kind == "r")
    print(f"weighted polynomial {j}: degree {len(coeffs) - 1}, b = {float(M.D['b'][j]):.4e}, coefficients {coeffs}")
    print("  non-real roots:", [f"{float(r.real.mid()):.6f}{float(r.imag.mid()):+.6f}i" for r in cplx])
    ctx.prec = 256
    base = arb(M.D["s"]) * arb(abs(coeffs[0])).log()
    ureal = sum((M.U_real(r.real) for (kind, r, lo, hi) in rr if kind == "r"), arb(0))
    closed = base + ureal + sum((M.U_complex(r) for r in cplx), arb(0))
    quad = mp.fsum(piece_quad(lambda y: mp.log(abs(mp.polyval(coeffs, y))), k, reals) for k in range(len(ef) - 1))
    print(f"  int log|Q| dmu: closed form {closed.str(18)}; quadrature {mp.nstr(quad, 18)}")
    for r in cplx:
        z = mp.mpc(mp.mpf(r.real.mid().str(40, radius=False)), mp.mpf(r.imag.mid().str(40, radius=False)))
        q = mp.fsum(piece_quad(lambda y: mp.log(abs(z - y)), k, []) for k in range(len(ef) - 1))
        print(f"  U({mp.nstr(z, 8)}): closed form {M.U_complex(r).str(16)}; quadrature {mp.nstr(q, 16)}")
    wrong_mod = base + ureal + sum((sum((Ci * M.H_ball(abs(acb(Ei) - r)) for Ei, Ci in zip(Ea, Ca)), arb(0)) for r in cplx), arb(0))
    wrong_re = base + ureal + sum((M.U_real(r.real) for r in cplx), arb(0))
    print(f"  wrong formulas: real H of |e_i - z|: {wrong_mod.str(12)}; U at Re z: {wrong_re.str(12)}")
    ctx.prec = 128
if not found:
    print("no weighted polynomial with non-real roots")
