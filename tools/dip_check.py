#!/usr/bin/env python3
"""Values of h for the narrow-dip control, in ball arithmetic with the first checker's own code (h_exact): at the 1001 points
x0 - 1e-5 + k*2e-5 (|k| <= 500) of the search's check grid of spacing 2e-5 around the tent, and at the three nodes of the
tent (x0 - w, x0, x0 + 3w with w = 1e-6). The checker itself rejects this certificate (logs in controls/).
usage: python3 -I dip_check.py CERT.json X0NUM X0DEN     (for controls/neg_NARROWDIP_x0_8.26399.json: 826399 100000)"""
import os, sys
from fractions import Fraction as Fr
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'checker'))
import check_up_29783014 as CU

path, num, den = sys.argv[1], int(sys.argv[2]), int(sys.argv[3])
cert = CU.Cert(path)
x0, w, g = Fr(num, den), Fr(1, 10**6), Fr(2, 10**5)
grid = [x0 - Fr(1, 10**5) + k*g for k in range(-500, 501)]
vals = [(CU.h_exact(cert, x), x) for x in grid]
lo, xm = min(((v.lower(), x) for v, x in vals), key=lambda t: t[0])
print(f"check grid: {len(grid)} points in [{float(grid[0]):.6f}, {float(grid[-1]):.6f}]; smallest lower bound of h: "
      f"{float(lo):.4e} at x = {float(xm):.6f}; all positive: {all(v.lower() > 0 for v, _ in vals)}")
for name, x in (("x0 - w", x0 - w), ("x0", x0), ("x0 + 3w", x0 + 3*w)):
    v = CU.h_exact(cert, x)
    print(f"tent node {name} = {float(x):.6f}: h = {v}  (positive: {v.lower() > 0})")
