# Second checker: programs, runs and logs

This directory holds a second checker for the upper-bound certificates (format tpmahler-upper-v1). It was written
independently of the first checker (check_up_29783014.py, shipped with the certificate), from the criterion of
Lemma 2.1 of the paper and the certificate format, and it shares with the first checker only the file format. Labels:
(U1), (U2), (U3) in the programs and logs are the conditions (C1), (C2), (C3) of Lemma 2.1, and (V) is the claim
(1/s) ∫ log⁺ x dμ ≤ v.

## Programs

- `check_up_second.py CERT NPROC`: the checker. Exit status 0 and the last line `VERIFIED` only if every check passes.
  - Data checks: integer coefficients, degree ≥ 1, primitive, irreducible over Q (FLINT factorization), no two polynomials
    equal up to sign, b_j ≥ 0; nodes strictly increasing with e_0 ≥ 0; G_k ≥ 0 with G_0 = G_N = 0; s > 0; X > 4 and
    e_N ≤ X.
  - (U1) is exact. The slope jumps C_i of G are exact rationals, and the program checks Σ C_i = 0, Σ C_i e_i = 0,
    Σ C_i e_i² = 2s.
  - The closed form U(x) = Σ C_i H(e_i − x), H(t) = t²/2 log|t| − 3t²/4, is compared at 8 random points with a separate
    piecewise formula for ∫ log|x − y| G(y) dy.
  - (U2): s log|a| + Σ_ρ U(ρ), with the roots ρ as certified isolating balls (real roots have zero imaginary part) and
    U(z) = Re Σ C_i Hc(e_i − z), Hc(t) = t²/2 Log t − 3t²/4, at non-real roots.
  - (V): closed form on each piece, ball arithmetic.
  - (U3) is proved on every point of [e_0, e_N] by covering it with intervals J, on each of which a rigorous positive lower
    bound for h is established:
    - the nodes more than 0.05 away from the node interval containing J enter through a Taylor model of order 6 at the
      centre of that node interval, with remainder bound sup|F⁽⁷⁾| |u|⁷/7!, |H⁽⁷⁾(t)| = 24/|t|⁵;
    - nodes with C_i > 0 within 4|J| of J are concave on J and are bounded below by their chord;
    - all other terms R satisfy R(x) ≥ R(m) + R′(m)(x − m) + inf_J R″ · (x − m)²/2 (Taylor's formula with integral
      remainder), with term-wise lower bounds for R″;
    - the resulting quadratic-plus-linear minorant is minimized exactly on J in ball arithmetic, and J is bisected if
      the bound is not certainly positive;
    - real roots of the weighted polynomials are cut out by brackets of half-width 10⁻⁴⁰ and bounded there by
      h ≥ U − Σ_other b log|Q| − b_j log(sup|Q_j′| · width);
    - a certainly negative value h(m) at a midpoint stops the program (definite counterexample);
    - coverage of [e_0, e_N] is checked exactly.
- `validate_minorant.py CERT NNODE SEED`: tests the (U3) minorant itself. On accepted intervals it evaluates h by the full
  closed form (all nodes, no Taylor model) at random points and checks h ≥ minorant pointwise. It also compares the Taylor
  model with the full sum.
- `complex_roots_check.py CERT`: for each weighted polynomial with non-real roots it compares three things:
  - ∫ log|Q| dμ from the closed form with direct mpmath quadrature (30 digits, each piece split at the real roots of Q);
  - U at each non-real root with quadrature;
  - the result with two deliberately wrong complex formulas, which must differ.
- `find_contact_site.py CERT`, `find_node_site.py CERT`: locate a point where h is smallest inside a contact interval, and
  a node with C_i > 0 next to small values of h. At that node an added mass cannot break (U2), since log|Q_j(e_i)| ≥ 0
  for every Q_j whose (U2) value is below 10⁻⁵.
- `make_hidden_dips.py CERT XNUM XDEN NODE OUTDIR`: adds a flat-top bump of density (feet of width w, top of width 2a)
  at those two sites. The bump's mass is tuned by bisection so that h < 0 at the bump centre, while h > 0 at every node
  within 0.01, at the 4 inserted nodes, and at the 11 points of the grid of spacing 2·10⁻⁵ around the bump (the grid on
  which the search checked h). v is raised by 10⁻⁶ so that only (U3) can fail.
- `make_complex_poly_controls.py CERT INDEX OUTDIR`: controls for the weighted polynomial with non-real roots: removed,
  weight × 0.5, × 1.5, × 10, and one coefficient changed (−26 → −27; irreducible, still with non-real roots).

Requirements: Python 3.12 with python-flint 0.9.0 (FLINT 3.6.0) and mpmath 1.4.1. `check_up_second.py` uses
multiprocessing with fork and refuses to run under `python -O`.

## Inputs (SHA-256)

| item | file | SHA-256 |
| --- | --- | --- |
| certificate v2 (λ+ ≤ 1.7239501) | cert_tp_up_c34e6e53.json | c34e6e5378a48b6dffca0cf80d2b362c531655dec4af8ccbbc510527a6b038d7 |
| certificate v1 (λ+ ≤ 1.7240997) | cert_tp_up_f5d76932.json | f5d76932c370676a1b1ef4960bd29e5d125a32fc01c6eae214342ec7d7f23cb7 |
| first checker | check_up_29783014.py | 2978301479e851c40f9eb6f451ac224e993392ec89c284739f618ab3b917f809 |

The controls of the certificate release (17 perturbed certificates and the narrow-dip certificate for v2) were checked
unchanged. Their SHA-256 values are in the SHA256SUMS file of that release.

## Results

All logs are in `logs/` and were produced by the commands in `logs/COMMANDS.txt`, with paths relative to a working
directory containing the certificates.

| run | result |
| --- | --- |
| v2 certificate (`logs/check_second_v2.log`) | VERIFIED. Σ b_j deg Q_j = 0.9396667013 < s; smallest ∫ log\|Q_j\| dμ = 1.0·10⁻⁷; (1/s) ∫ log⁺ dμ = 0.544618199706390 ± 6·10⁻¹⁷, margin 9.946·10⁻¹⁰ to v; (U3): 13,356 interval tests, 161 root brackets, exact coverage, no failure |
| v1 certificate (`logs/check_second_v1.log`) | VERIFIED. Σ b_j deg Q_j = 0.9380113835; (U3): 8,559 interval tests, 181 root brackets |
| 17 controls + narrow dip of the v2 release (`logs/controls_v2/`) | all 12 MUSTFAIL and 4 OPEN controls NOT VERIFIED (data checks, (U1), (V), or a definite negative value of h); POSITIVE (v + 10⁻⁶) VERIFIED; narrow dip NOT VERIFIED with h(m) = −5.4332·10⁻¹¹ at x = 8.26399075 |
| hidden dips (`controls/v2_hidden/`, `logs/controls_v2/own_hidden_*.log`) | both NOT VERIFIED at the bump centres (h = −4.380·10⁻⁹ at 5.27125003, −2.556·10⁻⁸ at 7.9625011) while (U1), (U2), (V) pass; the first checker rejects both at the same points with the same values (`logs/first_checker/`) |
| non-real roots (`logs/complex_roots_check_v2.log`) | one weighted polynomial (degree 14, b = 8.39·10⁻⁵) has the non-real roots 0.178077 ± 0.019853i and 5.546604 ± 0.618371i; ∫ log\|Q\| dμ = 0.18578048590736338 by the closed form and by quadrature; U at each non-real root agrees with quadrature to 16 digits; the two wrong formulas give −0.121 and −0.172 |
| controls for that polynomial (`controls/v2_complex_poly/`) | all five NOT VERIFIED by (U3) with (U1), (U2) passing; the first checker rejects all five as well |
| minorant validation (`logs/validate_minorant_v2.log`) | 3,972 points in 993 accepted intervals: h (full closed form) is never below the minorant (smallest gap 4.6·10⁻¹⁴); Taylor model plus near terms agree with the full sum to 3.8·10⁻¹⁴ |
| first checker on the v2 certificate (`logs/first_checker/check_first_v2.log`) | VERIFIED; 161 root windows, 3,640 chord intervals, 30,058 interval checks, smallest end value 1.5195·10⁻⁶ |
