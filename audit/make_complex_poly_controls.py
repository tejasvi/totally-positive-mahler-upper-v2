#!/usr/bin/env python3
"""Controls for the v2 weighted polynomial with non-real roots (index J, Flammang's Q_17): drop it, scale its weight
(x0.5, x1.5, x10), and replace it by integer neighbours (one coefficient +-1, irreducible, still with non-real roots).
Writes OUTDIR/*.json."""
import sys, os, json
from fractions import Fraction
from flint import fmpz_poly
SRC, J = sys.argv[1], int(sys.argv[2])   # usage: CERT INDEX OUTDIR
d0 = json.load(open(SRC))
OUT = sys.argv[3]; os.makedirs(OUT, exist_ok=True)

def dump(d, name):
    json.dump(d, open(os.path.join(OUT, f"{name}.json"), "w"))
    print("wrote", name)

d = json.loads(json.dumps(d0)); del d["polys"][J]; del d["b"][J]; dump(d, "q17_drop")
for fac in (Fraction(1, 2), Fraction(3, 2), Fraction(10)):
    d = json.loads(json.dumps(d0)); d["b"][J] = str(Fraction(d["b"][J]) * fac)
    dump(d, f"q17_b_x{float(fac):g}")
c0 = d0["polys"][J]
made = 0
for pos in (len(c0) - 1, len(c0) // 2, 1):
    for dlt in (1, -1):
        c = list(c0); c[pos] += dlt
        P = fmpz_poly(list(reversed(c)))
        fl = P.factor()[1]
        if not (len(fl) == 1 and fl[0][1] == 1 and fl[0][0].degree() == P.degree()):
            continue
        nreal = sum(1 for (r, m) in P.complex_roots() if r.imag == 0)
        if nreal == P.degree():
            continue
        d = json.loads(json.dumps(d0)); d["polys"][J] = c
        dump(d, f"q17_coeff{pos}_{'p' if dlt > 0 else 'm'}1")
        made += 1
        break
print("coefficient neighbours:", made)
