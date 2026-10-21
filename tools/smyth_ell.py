#!/usr/bin/env python3
"""Smyth's limit point ell = lim Omega(beta_n) for totally real algebraic integers (Smyth 1980, Theorem 1).

beta_0 = 1 and beta_n > 0 satisfies beta_n - 1/beta_n = beta_{n-1}; beta_n has degree 2^n, and its conjugates are the 2^n
solutions of H^n(x) = 1 for H(x) = x - 1/x, i.e. the preimages of 1 under n steps of y -> (y +- sqrt(y^2 + 4))/2.
Prints n, Omega(beta_n) = exp(mean of log max(1, |x|) over the conjugates) and its square, in double precision
(numpy float64) and, as a cross-check, in extended precision (numpy longdouble) for the last n.
usage: python3 smyth_ell.py [N]   (default N = 26; needs about 3 GB of memory for N = 26)"""
import sys
import numpy as np

N = int(sys.argv[1]) if len(sys.argv) > 1 else 26
for dtype in (np.float64, np.longdouble):
    y = np.array([1], dtype=dtype)
    for n in range(1, N + 1):
        s = np.sqrt(y * y + 4)
        y = np.concatenate(((y + s) / 2, (y - s) / 2))
        if dtype is np.float64 or n == N:
            om = np.exp(np.mean(np.log(np.maximum(dtype(1), np.abs(y))), dtype=dtype))
            print(f"{np.dtype(dtype).name:10s} n = {n:2d}  Omega(beta_n) = {om:.12f}  squared = {om * om:.12f}")
