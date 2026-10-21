import TPMahler.Statement

/-!
# Upper bound for the smallest limit point of `Ω` on totally positive algebraic integers: statements

Theorem 1.1 of the paper: there are infinitely many totally
positive algebraic integers `α` with `Ω(α) < 1.7239501`, and `E₊ ≤ ℓ₊ ≤ 1.7239501`. Certificate
`cert_tp_up_c34e6e53.json`, `v = 544618200701 / 10^12` with `e^v < 1.7239501`.

`Ω(α) = M(P)^(1/deg P)` for the minimal polynomial `P ∈ ℤ[X]` of `α` and `𝓛₊ = TPMahler.Lplus`, as for the lower bound (`TPMahler`).

Named hypotheses (statements below):
* `SmithTheorem`: Smith, arXiv:2111.12660, Theorem 1.5, for the interval `Σ = [0, X]`, `X > 4` (capacity `X/4 > 1`),
  in the form used in Step 3 of the proof of Lemma 2.1 of the paper;
* `ArcsinePotential`: the equilibrium (arcsine) measure `ω` of `[0, X]` has potential `≥ log (X/4)` on `ℂ`
  (Saff-Totik, (I.1.4) and Example I.3.5), used in Step 4.
Step 1 of Lemma 2.1 (the minimum principle) is a theorem (super-mean-value property of the potential,
`AuxCommon.Energy.nonneg_of_superMean`), not a hypothesis.
-/

open Polynomial MeasureTheory Filter Topology
open AuxCommon TPMahler

namespace TPUpper

/-- The claimed bound. -/
noncomputable def UB : ℝ := 17239501 / 10000000

/-- The certificate value `v` with `e^v < UB`. -/
noncomputable def v0 : ℝ := 544618200701 / 1000000000000

/-- Average of `f` over the roots (with multiplicity) of a real-rooted polynomial `R ∈ ℤ[X]`. -/
noncomputable def rootAvg (R : ℤ[X]) (f : ℝ → ℝ) : ℝ :=
  ((R.map (Int.castRingHom ℝ)).roots.map f).sum / R.natDegree

/-- **Named hypothesis (Smith, Theorem 1.5).** Let `X > 4` and let `ν` be a probability measure on `ℝ`, supported in
`[0, X]`, that satisfies Smith's condition (1): `∫ log |P| dν ≥ 0` for every nonzero `P ∈ ℤ[X]`, with the true
logarithm (`log 0 = -∞`). Since `log |P|` is bounded above on `[0, X]`, that integral exists in `[-∞, ∞)`, and it is
`≥ 0` if and only if `ν` gives no mass to the zeros of `P`, `log |P|` is `ν`-integrable, and the integral is `≥ 0`.
The premise below states these three conditions; the first one is needed because Mathlib's `Real.log 0 = 0`. Then
there are pairwise distinct monic irreducible `R k ∈ ℤ[X]`, all of whose roots are real and lie in `[0, X]`, whose root
distributions converge weakly to `ν`: for every continuous `f`, the root averages of `f` tend to `∫ f dν`. -/
def SmithTheorem : Prop :=
  ∀ (X : ℝ), 4 < X → ∀ (ν : Measure ℝ), IsProbabilityMeasure ν → ν (Set.Icc 0 X)ᶜ = 0 →
    (∀ P : ℤ[X], P ≠ 0 → ν {x | (P.map (Int.castRingHom ℝ)).eval x = 0} = 0 ∧
      Integrable (fun x => Real.log |(P.map (Int.castRingHom ℝ)).eval x|) ν ∧
      0 ≤ ∫ x, Real.log |(P.map (Int.castRingHom ℝ)).eval x| ∂ν) →
    ∃ R : ℕ → ℤ[X], Function.Injective R ∧ (∀ k, (R k).Monic ∧ Irreducible (R k) ∧ 0 < (R k).natDegree ∧
      Multiset.card ((R k).map (Int.castRingHom ℝ)).roots = (R k).natDegree ∧
      ∀ x ∈ ((R k).map (Int.castRingHom ℝ)).roots, x ∈ Set.Icc 0 X) ∧
      ∀ f : ℝ → ℝ, Continuous f → Tendsto (fun k => rootAvg (R k) f) atTop (𝓝 (∫ x, f x ∂ν))

/-- The arcsine (equilibrium) measure of `[0, X]`: density `1 / (π √(x (X - x)))` on `(0, X)`. -/
noncomputable def arcsine (X : ℝ) : Measure ℝ :=
  (volume.restrict (Set.Ioo 0 X)).withDensity
    (fun x => ENNReal.ofReal (1 / (Real.pi * Real.sqrt (x * (X - x)))))

/-- **Named hypothesis (potential of the equilibrium measure of an interval).** For `X > 0`, the arcsine measure of
`[0, X]` is a probability measure, and for every `z ∈ ℂ` the function `y ↦ log |z - y|` is integrable for it with
`∫ log |z - y| dω(y) ≥ log (X / 4)`. -/
def ArcsinePotential : Prop :=
  ∀ X : ℝ, 0 < X → IsProbabilityMeasure (arcsine X) ∧
    ∀ z : ℂ, Integrable (fun y : ℝ => Real.log ‖z - (y : ℂ)‖) (arcsine X) ∧
      Real.log (X / 4) ≤ ∫ y, Real.log ‖z - (y : ℂ)‖ ∂(arcsine X)

/-- **Theorem 1.1 of the paper, first part.** Infinitely many totally positive algebraic integers have `Ω(α) < 1.7239501`. -/
theorem tpup_infinite (hS : SmithTheorem) :
    {α : ℂ | IsIntegral ℤ α ∧ ∃ P : ℤ[X], IsMinpolyZ P α ∧ AllRootsPos P ∧
      (toC P).mahlerMeasure ^ ((P.natDegree : ℝ)⁻¹) < UB}.Infinite := by
  sorry

/-- **Theorem 1.1 of the paper, second part.** `ℓ₊ ≤ 1.7239501`: some limit point of `𝓛₊` is at most `1.7239501`. -/
theorem tpup_limit_point (hS : SmithTheorem) (hA : ArcsinePotential) :
    ∃ y : ℝ, AccPt y (𝓟 Lplus) ∧ y ≤ UB := by
  sorry

theorem exp_v0_lt : Real.exp v0 < UB := by
  sorry

end TPUpper
