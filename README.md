# An upper bound for the smallest limit point of the absolute Mahler measure of totally positive algebraic integers

Certificate and programs for the paper
*An upper bound for the smallest limit point of the absolute Mahler measure of totally positive algebraic integers*
by Tejasvi Singh Tomar (Zenodo, [doi:10.5281/zenodo.23544556](https://doi.org/10.5281/zenodo.23544556)), and a proof in Lean 4 of the two
statements in *Result*, under two hypotheses from the literature (see *Lean proof*).

## Result

Let `Ω(α) = M(α)^(1/deg α)` be the absolute Mahler measure and `ℓ₊` the smallest limit point of the values of `Ω` on
totally positive algebraic integers. The paper proves that infinitely many totally positive algebraic integers satisfy
`Ω(α) < 1.7239501` and that `ℓ₊ ≤ 1.7239501`. Smyth's work gives `ℓ₊ ≤ ℓ² = 1.72731…`, where `ℓ = 1.31427…` is his limit
point for totally real algebraic integers. With the lower bound of the companion paper
([doi:10.5281/zenodo.23539850](https://doi.org/10.5281/zenodo.23539850)), `1.7234615 < ℓ₊ ≤ 1.7239501`.

The proof applies Lemma 2.1 of the paper, which rests on Smith's characterization of limits of distributions of
conjugates (A. Smith, Ann. of Math. 200 (2024), 71–122, Theorem 1.5 and Proposition 5.15). The certificate gives a measure
`μ = G(x) dx` on `[0, 9]`, with `G` continuous and piecewise linear on 3,481 rational nodes `e_k = 0.1125 + k/400`, and 21
irreducible polynomials `Q_j` with weights `b_j > 0`, such that

- (C1) `Σ b_j deg Q_j < s`, where `s` is the mass of `μ`;
- (C2) `∫ log|Q_j| dμ ≥ 0` for every `j`;
- (C3) `h(x) = U(x) − Σ b_j log|Q_j(x)| ≥ 0` for every `x` in `[e_0, e_N] = [0.1125, 8.8125]`, where
  `U(z) = ∫ log|z − y| G(y) dy`;

and `(1/s) ∫ log⁺x dμ(x) ≤ v* = 544618200701/10^12`. Lemma 2.1 then gives `ℓ₊ ≤ e^(v*) = 1.72395005…`, rounded up to
`1.7239501`.

## Files

| path | content |
|---|---|
| `certificate/cert_tp_up_c34e6e53.json` | the certificate (format `tpmahler-upper-v1`; SHA-256 `c34e6e5378a48b6dffca0cf80d2b362c531655dec4af8ccbbc510527a6b038d7`) |
| `certificate/CERT_FORMAT_UP.md` | the format: fields, the objects to rebuild, what VERIFIED means, closed forms |
| `checker/check_up_29783014.py` | the first checker: all conditions in ball arithmetic (python-flint, 200 bits); its module docstring explains how (C3) is proved on whole intervals |
| `logs/check_up_c34e6e53.log`, `logs/COMMANDS.txt` | its run on the certificate, and the command |
| `controls/` | 17 modified certificates and a narrow-dip certificate, with the first checker's logs, `summary.txt`, and the programs that made them (`make_neg_up.py`, `make_dip_up.py`) |
| `audit/` | the second checker, written independently, with its logs and further controls (see `audit/RUNS.md`) |
| `search/` | the floating-point search that produced the certificate (not needed for checking; see Search) |
| `tools/smyth_ell.py`, `tools/smyth_ell.out` | the computation of Smyth's limit point `ℓ = lim Ω(β_n) = 1.3142722…` and `ℓ² = 1.7273115…` |
| `tools/dip_check.py`, `tools/dip_check.out` | the values of `h` for the narrow-dip control at the grid points and at the nodes of the tent |
| `lean/` | the Lean proof (see *Lean proof*), with its own `SHA256SUMS` |
| `logs/lean/` | the output of the Lean builds, the files that print the statements and axioms, and negative controls (see *Lean proof*) |

## Checking the certificate

Requirements: Python 3 (we used 3.12) with python-flint (0.9.0, FLINT 3.6.0); `controls/make_dip_up.py` and some of the
programs in `audit/` also use numpy and mpmath (1.4.1). Both checkers refuse to run under `python -O`. They start their
worker processes with the `fork` method of `multiprocessing`, so they run on Linux, including under Python 3.14, whose
default method on Linux is `forkserver`. In both commands the last argument is the number of processes.

    python3 -I checker/check_up_29783014.py certificate/cert_tp_up_c34e6e53.json 16
    python3 -I audit/check_up_second.py certificate/cert_tp_up_c34e6e53.json 16

The first checker prints the data, (C1), the smallest value in (C2), the value of `(1/s) ∫ log⁺x dμ` as a ball, the
numbers of root windows, chord intervals and interval checks for (C3), and `VERIFIED` (exit status 0) only if every
condition holds. With 16 processes it took 45 s on a shared server; the logged run (`logs/check_up_c34e6e53.log`, command in
`logs/COMMANDS.txt`) used 40 processes and took 59 s. The second checker ends with `VERIFIED` after about 10–20 s. Its method for (C3) differs from the
first checker's: a Taylor model of order 6 for distant nodes, quadratic minorants from Taylor's formula with integral
remainder, chords for concave node terms, and bisection (see `audit/RUNS.md`).

`controls/` holds modified certificates. Both checkers reject those that violate a condition (`MUSTFAIL`) and those whose
modification has an effect not clear in advance (`OPEN`), and both accept `neg_POSITIVE_v_plus_1e-6.json`, which only raises
the claim `v*` by `10^-6`. The narrow-dip certificate adds a tent of mass `1.2·10^-7` and width `4·10^-6` at `x = 8.26399` between two points of
the grid of spacing `2·10^-5` on which the search checked `h`. By `tools/dip_check.out`, `h` stays positive at the 1001 grid
points within `0.01` of the tent and at its three nodes, yet both checkers find a negative lower bound for `h` near
`x = 8.26399`. `audit/` adds two further dips, five modifications of the
weighted polynomial with non-real roots (`F_17` in the paper, number 17 of Flammang's table), a pointwise validation of the
second checker's lower bounds, and a comparison of `∫ log|F_17| dμ` with direct quadrature.

## Search

The programs in `search/` are not needed to check the certificate. `tp_upper_lp3b.py` solves the linear program of the
paper's Section 5 by cutting planes (hat functions with spacing 1/400 on `[0, 12]`, the 32 polynomials of
`data/F35irr.json`, HiGHS through SciPy), and `export_up.py` converts its solution to the exact certificate:

    python3 search/export_up.py search/upper3b_r3c.npy F35irr 1e-9 cert.json
    python3 search/tp_upper_lp3b.py F35irr uniform:12:0.0025 0.004 rerun 3e-6 2e-5 16 sparse highs-ipm

The first command reproduces `certificate/cert_tp_up_c34e6e53.json` byte for byte from the stored solution
`search/upper3b_r3c.npy`. The second solves the linear program again. It was run with the tag `r3c` (about 1.5 hours with 16
processes); the command above uses the tag `rerun`, because `r3c` would overwrite the stored solution. The logs of both steps are in
`search/logs/`. The search also needs numpy, scipy and cvxpy.

## Lean proof

`lean/` contains a proof in Lean 4 with Mathlib of the two statements in *Result*, under two hypotheses taken from the
literature (Section 4 of the paper). Lean `v4.35.0-rc3` and Mathlib commit `c55e6e786f49` are pinned in
`lean/lean-toolchain` and `lean/lake-manifest.json`. The computations of the proof are done in two ways, and each has
its own final theorems: in `lean/TPUpper/FinalN.lean` they run as compiled code, and in `lean/TPUpper/FinalK.lean`
Lean's kernel checks them.

```lean
theorem TPUpper.N.tpup_infinite (hS : SmithTheorem) :
    {α : ℂ | IsIntegral ℤ α ∧ ∃ P : ℤ[X], IsMinpolyZ P α ∧ AllRootsPos P ∧
      (toC P).mahlerMeasure ^ ((P.natDegree : ℝ)⁻¹) < UB}.Infinite
theorem TPUpper.N.tpup_limit_point (hS : SmithTheorem) (hA : ArcsinePotential) :
    ∃ y : ℝ, AccPt y (𝓟 Lplus) ∧ y ≤ UB
theorem TPUpper.N.exp_v0_lt : Real.exp v0 < UB
```

and the same three theorems in the namespace `TPUpper.K`. Here `UB` is 17239501/10^7 and `v0` is the claim
`v* = 544618200701/10^12` of the certificate. `IsMinpolyZ P α` says that P is irreducible in ℤ[X], has positive degree
and vanishes at α, `AllRootsPos P` says that all complex roots of P are real and positive, `toC P` is P with complex
coefficients, and `Lplus` is the set of the values M(P)^(1/deg P), where P is the minimal polynomial of a totally
positive algebraic integer. The first theorem says that infinitely many totally positive algebraic integers satisfy
`Ω(α) < 1.7239501`. The second says that some limit point of these values is at most 1.7239501, which is
`ℓ₊ ≤ 1.7239501` in a form that does not presuppose that `ℓ₊` exists. The inequality `E₊ ≤ ℓ₊`, which follows from the
definitions, is not formalized.

`UB`, `v0` and the two hypotheses are defined in `lean/TPUpper/Statement.lean`, the other notions in
`lean/AuxCommon/Basic.lean` and `lean/TPMahler/Statement.lean`. These two files also define `EnergySmoothing` and
`PwLinClosedForm`, which belong to the companion paper's Lean proof; the theorems here do not assume them. The
hypotheses are arguments of the theorems, not axioms:

- `SmithTheorem` is one direction of Theorem 1.5 of Smith's paper (we use the numbering of arXiv:2111.12660v2), for the
  intervals [0, X] with X > 4. A probability measure ν on ℝ that gives no mass to the complement of [0, X], and such
  that ∫ log|P| dν ≥ 0 for every nonzero P ∈ ℤ[X], is the weak limit of the root distributions of pairwise distinct
  monic irreducible integer polynomials with all roots in [0, X]. The Lean statement writes the condition on P as three
  conditions: ν gives no mass to the zeros of P, log|P| is ν-integrable, and the integral is ≥ 0. Together they say
  that the integral is ≥ 0 when log 0 = −∞, as in Smith's paper; the first one is needed because Mathlib defines
  log 0 = 0.
- `ArcsinePotential` says that for X > 0 the arcsine measure dx/(π √(x(X − x))) on (0, X) is a probability measure
  whose logarithmic potential is defined and at least log(X/4) at every point of ℂ (Saff and Totik, *Logarithmic
  potentials with external fields*, (I.1.4) and Example I.3.5). Only the second theorem uses it, through Step 4 of the
  proof of Lemma 2.1.

Everything else is proved:

- Step 1 of Lemma 2.1, by a minimum principle for functions with the super-mean-value property;
- Step 2, and Steps 3 and 4 from the two hypotheses;
- the closed form of the potential on the real line;
- the conditions (C1)–(C3) and the bound on the claim;
- the irreducibility of the 21 polynomials.

`TPUpper/Statement.lean` also holds the statements of record: the three theorems, under the same names without `N.`
or `K.`, with `sorry` in place of the proofs by design, so that the reviewed statements can be read apart from the
proofs. It imports `TPMahler/Statement.lean`, the statement file of the companion paper, which has four such theorems.
A build therefore prints seven warnings about `sorry`; it also prints warnings about deprecated Mathlib names and from
Mathlib's linters, which are harmless. The types of the six final theorems are equal to those of the statements, and `#print axioms` shows that
none of them depends on `sorry`.

```
cd lean
lake exe cache get                                  # Mathlib for the pinned manifest
lake build TPUpper.FinalN TPUpper.Statement         # about 3 minutes on 96 cores after the download
lake build TPUpper.FinalK                           # about 35 core-hours (about 22 minutes on 96 cores)
lake env lean ../logs/lean/axioms_N.lean            # statements and axioms, after the first build
lake env lean ../logs/lean/axioms_K.lean            # the same, after the second build
lake env lean ../logs/lean/controls.lean            # negative controls, after the first build (a few seconds)
```

The second build needs about 21 GB of memory for its largest module, and Lake runs as many modules in parallel as
there are cores, each needing about 2 GB. A plain `lake build` builds only the default targets of
`lean/lakefile.toml` (`AuxCore`, `AuxCommon`, `TPMahler`), which do not include the proof, and the library target
`TPUpper` would build both versions, so build the module targets above. `logs/lean/` holds the output of these
commands on the files of `lean/`, on a fresh machine: `build_N.log`, `build_K.log`, `axioms_N.out`, `axioms_K.out`, and
the negative controls `controls.lean` with their output `controls.out`.

Checking programs in core Lean (`lean/TUCore/`, which reuses routines of the checker of the lower bound in
`lean/TPCore/` and the integer logarithm in `lean/AuxCore/`) verify the certificate. They check:

- (C3) on 11,393 intervals that tile [e_0, e_N + 1/400], one node spacing beyond e_N. The intervals are computed in
  advance and are part of the input. On 11,232 of them a linear lower bound for h is proved; the other 161 are windows
  around the real roots of the weighted polynomials.
- (C2) for the twenty weighted polynomials with only real roots, from brackets of their roots.
- (C2) for `F_17` (`Q₁₅` in the Lean files), which has non-real roots, by a rigorous quadrature of `∫ log|F_17| dμ`.
- (C1), the bound on the claim, and irreducibility certificates modulo primes.

`lean/TPUpper/` proves that acceptance implies the hypotheses of the formal version of Lemma 2.1 and the bound on the
claim.

In the build of `FinalN.lean` the checks are evaluated by `native_decide`, which executes compiled code, so the trusted
base includes the Lean compiler, the C compiler that it uses and the Lean runtime. `#print axioms` gives, for
`N.tpup_infinite` and `N.tpup_limit_point`, the standard axioms `propext`, `Classical.choice` and `Quot.sound` plus 65
axioms named `….native_decide.ax_1_k`, one for each check: the 40 blocks of intervals in `TUN/Chunk000.lean` to
`Chunk039.lean`, the 21 irreducibility certificates in `TUN/Irred.lean`, and in `FinalN.lean` (C1), (C2) for the
real-rooted polynomials, the quadrature, and the bound on the claim. In `FinalK.lean` every check is decided by the
kernel (`decide +kernel`). Each interval has its own module (`TUK/Leaf*.lean`); `TUK/LKB*.lean` groups them into blocks
of 100, and `FinalK.lean` checks their chaining and their number. Each real-rooted polynomial has its own module for
(C2), and the quadrature is split into 32 modules. The kernel also checks (C1), the bound on the claim, the
irreducibility certificates, and the equality of the checker's context with the literal copy in `TUCore/LitsU.lean`
that the kernel modules use. `K.tpup_infinite` and `K.tpup_limit_point` depend on the standard axioms only, and so
does `exp_v0_lt` in both versions.

The scripts in `lean/tools/` wrote most of the data files:

- `gen_tu_data.py` writes `TUCore/Data.lean` from the certificate.
- `tu_roots.py` writes brackets for the real roots. From them `tu_check_ref.py`, a Python reimplementation of the
  checks of (C3), computes the tiling, and `gen_tu_leaves.py` writes it to `TUCore/Leaves.lean`.
- `tu_c2roots.py` and `tu_quad15.py` compute, as JSON, the root brackets and the quadrature pieces that
  `TUCore/C2Data.lean` and `TUCore/Quad15Data.lean` contain.
- `tu_irred_cert.py` reads `TUCore/Data.lean` and writes `TUCore/IrredData.lean`; `gen_tu_irred_lean.py` writes the
  irreducibility checks `TUN/Irred.lean` and `TUK/IrredK.lean`.
- `gen_tp_data.py`, `gen_tp_leaves.py` and `gen_tp_lits.py` wrote the corresponding files of the lower bound in
  `lean/TPCore/`, which the root module of that library imports. `tp_check_ref.py` is the lower bound's
  reimplementation of its checks.

The scripts that wrote the blocks `TUN/Chunk*.lean`, `TPUpper/LeavesUN.lean`, the other modules in `TUK/`,
`TUCore/LitsU.lean` and `TPUpper/FinalK.lean` are not included, because they depend on the layout of the project in
which the proof was written. None of the generated files needs to be trusted: the statements do not refer to them,
and Lean checks them.

`lean/` is a subset of that project. It holds the files of the builds above, the root modules of the three core
libraries, and the scripts in `lean/tools/`. `lean/SHA256SUMS` lists the SHA-256 of the files of `lean/`.

## Notes on the shipped files

Before the first version of this archive was published, the certificate, the first checker and the format description
were audited independently of the programs that produced them; the second checker in `audit/` comes from that audit.
The proof in `lean/` was audited in the same way, in the development project from which `lean/` is taken.

The one change to an audited program is in `audit/check_up_second.py`, which differs from the audited file, and from
the first version of this archive, in two lines (38 and 587): it now starts its worker processes with the `fork`
method, as the first checker does. Under Python 3.14 the earlier file failed with more than one process.
`audit/logs/check_second_py314.log` is a run of the shipped file under Python 3.14.4 with python-flint 0.9.0,
`python3 -I audit/check_up_second.py certificate/cert_tp_up_c34e6e53.json 2`; apart from the certificate's path and the
timings it equals `audit/logs/check_second_v2.log`. SHA-256 of the audited file:
`2a8071e9bd34ec08f8247bca4fda335db1b2e98ee24969f6cec350e271414729`; of the shipped file:
`7d0d5fddd7cec760d9ffa81af9a06de7c3d2ad6afefce88bbadc0951b1dceab5`. The programs in `search/` differ from the
programs as they were run only in their import paths, which now point to the program's own directory. `lean/` differs
from the audited project only in comments (internal labels removed, a few names corrected, and six strings of the
scripts that write such comments changed to match) and in `lakefile.toml`, which no longer declares a library that has
no files here. `audit/logs/` also holds a run of the second checker on an earlier
certificate (SHA-256 `f5d76932…`, `ℓ₊ ≤ 1.7240997`), which is not part of this record.

The certificate, the first checker and the format description are byte-identical to the audited files, so some of
their wording predates the paper. The format description attributes the checkable form of the criterion to Orloski and Talebizadeh Sardari (arXiv:2304.10021), whereas the
paper uses Smith's Proposition 5.15. It refers to working notes and to the checker of the lower bound, which are not part of
this archive. Its remark that weighted polynomials may have complex roots on the unit circle does not apply here:
`F_17`, the only weighted polynomial with non-real roots, has the roots `0.178 ± 0.020i` and `5.547 ± 0.618i`.
The first checker's docstring describes a narrow-dip control made for an earlier certificate; the control for this
certificate is `controls/neg_NARROWDIP_x0_8.26399.json`.

The audited files and the Lean files use other names for some objects:

| name in the shipped files | name in this README and the paper | files |
|---|---|---|
| `lambda+`, `E+` | `ℓ₊`, `E₊` | certificate, first checker, format description |
| "Lemma U1", "(U1)–(U3)" | Lemma 2.1, (C1)–(C3) | certificate, first checker, format description |
| "(V)" | the bound on the claim | the same, and `lean/` |
| `v`, `v0`, `v₀` | the claim `v*` | the same, and `lean/` |
| "track N", "track K" | the two versions of the Lean proof | `lean/` |
| "the paper", "Lemma 3.1 of the paper" | the companion paper, its closed-form lemma | `lean/TPMahler/`, `lean/TPCore/`, `lean/AuxCommon/` |
| "a5", `cert_tp_a5_9f1e5115.json` | the lower bound's certificate, `certificate/tp_certificate.json` in its archive | `TPCore/Data.lean`, `TPCore/Leaves.lean`, `tools/gen_tp_data.py`, `tools/tp_check_ref.py` |
| `leftTailOK`, `rightTailOK` | `leftTailLB`, `rightTailLB` | `TPCore/Check.lean` |
| `mkTable_spec` | `tableCheck_sound` (in `AuxCommon/LogKSound.lean`) | `AuxCore/LogK.lean` |

Some comments in `lean/` are out of date. Those in the files shared with the companion paper, which are byte-identical
to its archive, use that paper's numbering and refer to modules that are not included, such as `TPCore.DataOK` (the
logarithm table it was to check is checked by `tab_check` and `l2_check` in `TPMahler/CheckSound.lean`). The module
documentation of `TPUpper/Statement.lean` restates Theorem 1.1 with `E₊ ≤ ℓ₊`, which is not formalized.

## Licence

Apache-2.0 for the programs (see `LICENSE`); the certificate, the data and the logs are released under CC BY 4.0 with the
paper.
