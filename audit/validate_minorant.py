#!/usr/bin/env python3
"""Soundness test of the (U3) minorant of check_up_second.py: on accepted sub-intervals J, evaluate h(x) by the FULL closed form
(all nodes, no Taylor model) at random points x of J and check h(x) >= minorant(x) (quadratic + chord), pointwise.
Also checks the far-field Taylor model + near terms against the full sum at the midpoints."""
import sys, os, random, time
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import check_up_second as M
from flint import arb, fmpq, ctx

M.setup(sys.argv[1])
NSAMP = int(sys.argv[2]) if len(sys.argv) > 2 else 400
rng = random.Random(int(sys.argv[3]) if len(sys.argv) > 3 else 1)
e, N = M.D["e"], M.D["N"]

def h_full(xq):
    x = arb(xq)
    val = M.U_real(x)
    for j in M.D["W"]:
        val -= M.D["ba"][j] * abs(M.D["Q"][j](x)).log()
    return val

# capture the accepted intervals by re-running work() with a recording lb_sub
acc = []
orig = M.lb_sub
def rec(p, q, model, dqk):
    r = orig(p, q, model, dqk)
    if r[0]:
        acc.append((p, q, model[0]))
    return r
M.lb_sub = rec
t0 = time.time()
ks = rng.sample(range(N), min(NSAMP, N))
for k in ks:
    M.work(k)
print(f"{len(acc)} accepted sub-intervals in {len(ks)} node intervals [{time.time()-t0:.0f}s]")

# re-derive the minorant pieces for a sample of accepted intervals and test pointwise
def minorant_parts(p, q, k):
    model = M.far_model(k)
    dqk = M.dq_lower(k)
    # replicate lb_sub to get a0, a1, a2
    c, hk, near, Dn, M7 = model
    import types
    out = {}
    def quad(a0, a1, a2, w):
        out["a"] = (a0, a1, a2)
        return True, 0.0
    sv = M.quad_lb_positive
    M.quad_lb_positive = quad
    try:
        orig(p, q, model, dqk)
    finally:
        M.quad_lb_positive = sv
    return out["a"]

bad = 0
worst = None
nt = 0
sample = rng.sample(acc, min(1500, len(acc)))
kof = {}
for (p, q, c) in sample:
    # find node interval index
    lo, hi = 0, N - 1
    while lo < hi:
        mid = (lo + hi + 1) // 2
        if e[mid] <= p: lo = mid
        else: hi = mid - 1
    k = lo
    a0, a1, a2 = minorant_parts(p, q, k)
    m = (p + q) / 2
    for _ in range(4):
        x = p + (q - p) * fmpq(rng.randrange(0, 10 ** 6 + 1), 10 ** 6)
        if any(lo_ <= x <= hi_ for (lo_, hi_, j) in M.D["brackets"]):
            continue
        u = arb(x - m)
        mino = a0 + a1 * u + a2 * u * u
        hx = h_full(x)
        gap = hx - mino
        nt += 1
        if not (gap >= 0):
            if gap < 0:
                bad += 1
                print("MINORANT ABOVE h:", float(x), gap)
        gf = float(gap.mid())
        if worst is None or gf < worst[0]:
            worst = (gf, float(x), float(hx.mid()))
print(f"pointwise tests {nt}: minorant above h (certain) at {bad} points; smallest h - minorant = {worst[0]:.3e} at x = {worst[1]:.6f} (h = {worst[2]:.3e})")

# Taylor model + near terms vs full sum of U at midpoints of sampled node intervals
mx = 0.0
for k in rng.sample(range(N), 200):
    c, hk, near, Dn, M7 = M.far_model(k)
    m = e[k] + (e[k + 1] - e[k]) * fmpq(rng.randrange(1, 999), 1000)
    um = arb(m - c)
    Fm = M.poly_eval_taylor(Dn, 0, um)
    for i in near:
        Fm += M.D["Ca"][i] * M.H_ball(arb(e[i] - m))
    d = abs(Fm - M.U_real(arb(m)))
    mx = max(mx, float(d.mid()))
print(f"far-field Taylor + near vs full closed form at 200 points: max |diff| = {mx:.3e} (remainder bound not added)")
