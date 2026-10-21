#!/usr/bin/env python3
"""Pick a C_i > 0 node for a U3-only near-node dip in v2: small h on both sides and log|Q_j(e_i)| >= 0 for every weighted
Q_j whose (U2) value is below 1e-5 (so the added mass cannot break (U2))."""
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from multiprocessing import Pool
import check_up_second as M
from flint import arb, fmpq, ctx
import math
M.setup(sys.argv[1])
e, N, C = M.D["e"], M.D["N"], M.D["C"]
ctx.prec = 200
u2 = {}
for j in M.D["W"]:
    tot = arb(M.D["s"]) * arb(abs(M.D["polys"][j][0])).log()
    for (k, r, lo, hi) in M.D["roots"][j]:
        tot += M.U_complex(r) if k == "c" else M.U_real(r.real)
    u2[j] = float(tot.mid())
tight = [j for j in u2 if u2[j] < 1e-5]
print("tight U2:", {j: f"{u2[j]:.2e}" for j in tight})
ctx.prec = 128
def h_full(xq):
    x = arb(xq); val = M.U_real(x)
    for j in M.D["W"]:
        val -= M.D["ba"][j] * abs(M.D["Q"][j](x)).log()
    return float(val.mid())
def info(i):
    hl = h_full((e[i - 1] + e[i]) / 2); hr = h_full((e[i] + e[i + 1]) / 2)
    worst = min(math.log(abs(float(M.D["Q"][j](e[i])))) for j in tight)
    return i, hl, hr, worst
if __name__ == "__main__":
    cands = [i for i in range(50, N - 50) if C[i] > 0]
    with Pool(16) as pool:
        res = pool.map(info, cands)
    good = [r for r in res if r[1] < 2e-5 and r[2] < 2e-5 and r[3] >= 0]
    good.sort(key=lambda r: r[1] + r[2])
    for r in good[:5]:
        print(f"node {r[0]} e = {e[r[0]]} ({float(e[r[0]]):.4f}) C = {float(C[r[0]]):.3f} h_left {r[1]:.3e} h_right {r[2]:.3e} min log|Q_tight| {r[3]:.3f}")
