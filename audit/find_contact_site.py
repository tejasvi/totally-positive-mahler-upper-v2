#!/usr/bin/env python3
"""Find dip locations for v2: smallest h at node-interval midpoints (contact runs) and a C_i > 0 node with small h on both sides."""
import sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from multiprocessing import Pool
import check_up_second as M
from flint import arb, fmpq
M.setup(sys.argv[1])
e, N, C = M.D["e"], M.D["N"], M.D["C"]
def h_full(xq):
    x = arb(xq); val = M.U_real(x)
    for j in M.D["W"]:
        val -= M.D["ba"][j] * abs(M.D["Q"][j](x)).log()
    return val
def hmid(k):
    return float(h_full((e[k] + e[k + 1]) / 2).mid())
if __name__ == "__main__":
    with Pool(16) as pool:
        hm = pool.map(hmid, range(N))
    order = sorted(range(N), key=lambda k: hm[k])
    # contact-interior: inside a run, away from the ends of the support, prefer the middle of the support
    kA = next(k for k in order if 200 <= k <= N - 200 and hm[k - 1] < 1e-4 and hm[k + 1] < 1e-4)
    cand = [i for i in range(200, N - 200) if C[i] > 0 and hm[i - 1] < 2e-5 and hm[i] < 2e-5]
    iB = min(cand, key=lambda i: hm[i - 1] + hm[i])
    best = None
    for t in range(1, 400):
        x = e[kA] + (e[kA + 1] - e[kA]) * fmpq(t, 400)
        hv = float(h_full(x).mid())
        if best is None or hv < best[0]:
            best = (hv, x)
    print(f"kA {kA} [{float(e[kA])}, {float(e[kA+1])}] min h {best[0]:.4e} at {best[1]} ; iB {iB} e = {e[iB]} C = {float(C[iB]):.3f} h around {hm[iB-1]:.3e} {hm[iB]:.3e}")
    print("XA", best[1].p, best[1].q, "IB", iB)
