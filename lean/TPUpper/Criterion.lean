import TPUpper.Statement
import TPMahler.Measure
import TPMahler.ClosedForm

/-!
# The criterion of the paper (Lemma 2.1): definitions, the certificate interface, and the four steps

`UpCertHyp Q b N e G s X` collects the data conditions and the checked conditions (C1)-(C3) of Lemma 2.1 of the paper for
a continuous piecewise-linear density `G` on the nodes `e 0 < ... < e N` (the closed form of its potential on `ℝ` is
`∑ᵢ Cᵢ H(eᵢ - x)`, `TPMahler.pwLinClosedForm`). The steps of the proof are in
`TPUpper.Step1` (minimum principle: `h = U - ∑ b_j log |Q_j| ≥ 0` on `ℂ` off the roots) and `TPUpper.Steps234`
(Smith's condition, the sequence, and the limit point).
-/

open Polynomial MeasureTheory Filter Topology
open AuxCommon TPMahler

namespace TPUpper

/-- The measure `μ = G(x) dx` on `ℝ`. -/
noncomputable def muPw (N : ℕ) (e G : ℕ → ℝ) : Measure ℝ :=
  volume.withDensity (fun x => ENNReal.ofReal (pwLin N e G x))

/-- Its potential `U(z) = ∫ log |z - y| G(y) dy` at `z ∈ ℂ`. -/
noncomputable def potC (N : ℕ) (e G : ℕ → ℝ) (z : ℂ) : ℝ :=
  ∫ y : ℝ, Real.log ‖z - (y : ℂ)‖ * pwLin N e G y

/-- `h(z) = U(z) - ∑ⱼ bⱼ log |Qⱼ(z)|` (the terms with `bⱼ = 0` vanish). -/
noncomputable def hUp {J : ℕ} (Q : Fin J → ℤ[X]) (b : Fin J → ℝ) (N : ℕ) (e G : ℕ → ℝ) (z : ℂ) : ℝ :=
  potC N e G z - ∑ j, b j * Real.log ‖eval z (toC (Q j))‖

/-- The real evaluation of an integer polynomial. -/
noncomputable def evR (P : ℤ[X]) (x : ℝ) : ℝ := (P.map (Int.castRingHom ℝ)).eval x

/-- The data conditions and the checked conditions (C1)-(C3) of Lemma 2.1 of the paper. -/
structure UpCertHyp {J : ℕ} (Q : Fin J → ℤ[X]) (b : Fin J → ℝ) (N : ℕ) (e G : ℕ → ℝ) (s X : ℝ) : Prop where
  Q_irred : ∀ j, Irreducible (Q j)
  Q_deg : ∀ j, 0 < (Q j).natDegree
  b_nonneg : ∀ j, 0 ≤ b j
  nodes : ∀ k < N, e k < e (k + 1)
  e_first : 0 ≤ e 0
  e_last : e N ≤ X
  X_gt : 4 < X
  G_nonneg : ∀ k ≤ N, 0 ≤ G k
  G_first : G 0 = 0
  G_last : G N = 0
  mass : ∑ k ∈ Finset.range N, (e (k + 1) - e k) * (G k + G (k + 1)) / 2 = s
  mass_pos : 0 < s
  /-- (C1) -/
  C1 : ∑ j, b j * (Q j).natDegree < s
  /-- (C2) -/
  C2 : ∀ j, 0 < b j → 0 ≤ ∫ x, Real.log |evR (Q j) x| * pwLin N e G x
  /-- (C3), in the closed form of the potential on `ℝ` -/
  C3 : ∀ x ∈ Set.Icc (e 0) (e N), (∀ j, 0 < b j → evR (Q j) x ≠ 0) →
    0 ≤ ∑ i ∈ Finset.range (N + 1), slopeJump N e G i * Hk (e i - x) - ∑ j, b j * Real.log |evR (Q j) x|

end TPUpper
