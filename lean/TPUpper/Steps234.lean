import TPUpper.Criterion
import AuxCommon.Averaging

/-!
# Lemma 2.1 of the paper, Steps 2-4

* Root formula: for `P ≠ 0`, `log |P(y)| = log |a| + ∑_ρ log |ρ - y|` off the real roots, hence
  `∫ log |P| dν = log |a| ν(ℝ) + ∑_ρ ∫ log |ρ - y| dν(y)` for finite measures without mass on the roots
  (`integral_log_abs_evR`); for `μ = G(x) dx` this is `s log |a| + ∑_ρ U(ρ)` (`integral_log_evR_muPw`).
* Step 2 (`UpCertHyp.smith_cond`): Smith's condition `∫ log |P| dμ ≥ 0` for every nonzero `P ∈ ℤ[X]`.
* Step 3 (`smith_step`, `UpCertHyp.infinite`): the sequence from `SmithTheorem`.
* Step 4 (`UpCertHyp.limit_point`): an accumulation point of `𝓛₊` at `e^{v'} ≤ B`, from the mixtures
  `(1 - t) μ/s + t ω` with the arcsine measure `ω` of a larger interval.
-/

open Polynomial MeasureTheory Filter Topology
open AuxCommon TPMahler

namespace TPUpper

/-! ## The root formula -/

theorem evR_eq_aeval (P : ℤ[X]) (y : ℝ) : evR P y = aeval y P := by
  rw [evR, aeval_def, eval_map, algebraMap_int_eq]

theorem ofReal_evR (P : ℤ[X]) (y : ℝ) : ((evR P y : ℝ) : ℂ) = eval (y : ℂ) (toC P) := by
  rw [evR_eq_aeval, eval_toC]
  have h := Polynomial.aeval_algebraMap_apply ℂ y P
  rw [Complex.coe_algebraMap] at h
  exact h.symm

theorem abs_evR (P : ℤ[X]) (y : ℝ) : |evR P y| = ‖eval (y : ℂ) (toC P)‖ := by
  rw [← ofReal_evR, Complex.norm_real, Real.norm_eq_abs]

/-- `log |P(y)| = log |a| + ∑_ρ log |ρ - y|` at a real `y` that is not a root. -/
theorem log_abs_evR_eq {P : ℤ[X]} {y : ℝ} (hy : evR P y ≠ 0) :
    Real.log |evR P y| = Real.log |(P.leadingCoeff : ℝ)| +
      ((toC P).roots.map (fun ρ => Real.log ‖ρ - (y : ℂ)‖)).sum := by
  have hsplit := IsAlgClosed.splits (toC P)
  have hev : eval (y : ℂ) (toC P) = (toC P).leadingCoeff * ((toC P).roots.map (fun ρ => (y : ℂ) - ρ)).prod :=
    hsplit.eval_eq_prod_roots (y : ℂ)
  have hne : eval (y : ℂ) (toC P) ≠ 0 := by
    rw [← ofReal_evR]
    exact_mod_cast hy
  rw [hev] at hne
  have hlead : (toC P).leadingCoeff ≠ 0 := left_ne_zero_of_mul hne
  have hprod : ((toC P).roots.map (fun ρ => (y : ℂ) - ρ)).prod ≠ 0 := right_ne_zero_of_mul hne
  have hnz : ∀ x ∈ (toC P).roots.map (fun ρ => ‖(y : ℂ) - ρ‖), x ≠ 0 := by
    intro x hx
    obtain ⟨ρ, hρ, rfl⟩ := Multiset.mem_map.mp hx
    rw [norm_ne_zero_iff]
    intro h0
    apply hprod
    exact Multiset.prod_eq_zero (Multiset.mem_map.mpr ⟨ρ, hρ, h0⟩)
  rw [abs_evR, hev, norm_mul, Multiset.norm_prod, Multiset.map_map,
    Real.log_mul (norm_ne_zero_iff.mpr hlead) (Multiset.prod_ne_zero (fun h => hnz 0 (by
      simpa [Function.comp_def] using h) rfl)), leadingCoeff_toC, Complex.norm_intCast]
  congr 1
  rw [show ((norm : ℂ → ℝ) ∘ fun ρ => (y : ℂ) - ρ) = fun ρ => ‖(y : ℂ) - ρ‖ from rfl,
    Real.log_multiset_prod hnz, Multiset.map_map]
  congr 1
  apply Multiset.map_congr rfl
  intro ρ _
  simp only [Function.comp_apply]
  rw [norm_sub_rev]

theorem integrable_sum_log (ν : Measure ℝ) :
    ∀ (s : Multiset ℂ), (∀ ρ ∈ s, Integrable (fun y : ℝ => Real.log ‖ρ - (y : ℂ)‖) ν) →
      Integrable (fun y : ℝ => (s.map (fun ρ => Real.log ‖ρ - (y : ℂ)‖)).sum) ν ∧
        ∫ y, (s.map (fun ρ => Real.log ‖ρ - (y : ℂ)‖)).sum ∂ν =
          (s.map (fun ρ => ∫ y, Real.log ‖ρ - (y : ℂ)‖ ∂ν)).sum := by
  intro s
  induction s using Multiset.induction_on with
  | empty => intro _; simp
  | cons ρ s ih =>
    intro hs
    have hρ := hs ρ (Multiset.mem_cons_self ρ s)
    obtain ⟨hi, he⟩ := ih (fun σ hσ => hs σ (Multiset.mem_cons_of_mem hσ))
    simp only [Multiset.map_cons, Multiset.sum_cons]
    exact ⟨hρ.add hi, by rw [integral_add hρ hi, he]⟩

/-- **Root formula** for a finite measure on `ℝ` that does not charge the roots. -/
theorem integral_log_abs_evR (ν : Measure ℝ) [IsFiniteMeasure ν] {P : ℤ[X]}
    (hnull : ∀ᵐ y ∂ν, evR P y ≠ 0)
    (hint : ∀ ρ ∈ (toC P).roots, Integrable (fun y : ℝ => Real.log ‖ρ - (y : ℂ)‖) ν) :
    Integrable (fun y => Real.log |evR P y|) ν ∧
      ∫ y, Real.log |evR P y| ∂ν = Real.log |(P.leadingCoeff : ℝ)| * (ν Set.univ).toReal +
        ((toC P).roots.map (fun ρ => ∫ y, Real.log ‖ρ - (y : ℂ)‖ ∂ν)).sum := by
  obtain ⟨hi, he⟩ := integrable_sum_log ν (toC P).roots hint
  have hae : (fun y => Real.log |evR P y|) =ᵐ[ν]
      fun y => Real.log |(P.leadingCoeff : ℝ)| + ((toC P).roots.map (fun ρ => Real.log ‖ρ - (y : ℂ)‖)).sum := by
    filter_upwards [hnull] with y hy
    exact log_abs_evR_eq hy
  have hiF : Integrable (fun y : ℝ => Real.log |(P.leadingCoeff : ℝ)| +
      ((toC P).roots.map (fun ρ => Real.log ‖ρ - (y : ℂ)‖)).sum) ν := (integrable_const _).add hi
  refine ⟨hiF.congr hae.symm, ?_⟩
  rw [integral_congr_ae hae, integral_add (integrable_const _) hi, he, integral_const, smul_eq_mul,
    Measure.real, mul_comm]

/-- The real zeros of a nonzero integer polynomial form a finite set. -/
theorem finite_setOf_evR_eq_zero {P : ℤ[X]} (hP : P ≠ 0) : {y : ℝ | evR P y = 0}.Finite := by
  have hP' : P.map (Int.castRingHom ℝ) ≠ 0 := (Polynomial.map_ne_zero_iff (RingHom.injective_int _)).mpr hP
  exact (Polynomial.finite_setOfPred_isRoot hP').subset (fun y hy => hy)

/-- A measure that is absolutely continuous with respect to Lebesgue measure does not charge the roots. -/
theorem ae_evR_ne_zero {ν : Measure ℝ} (hac : ν ≪ volume) {P : ℤ[X]} (hP : P ≠ 0) :
    ∀ᵐ y ∂ν, evR P y ≠ 0 := by
  rw [ae_iff]
  push Not
  exact hac ((finite_setOf_evR_eq_zero hP).measure_zero volume)

/-- An absolutely continuous measure gives no mass to the real zeros of a nonzero integer polynomial (the first
conjunct of Smith's condition in `SmithTheorem`). -/
theorem measure_evR_zero {ν : Measure ℝ} (hac : ν ≪ volume) {P : ℤ[X]} (hP : P ≠ 0) :
    ν {x | evR P x = 0} = 0 :=
  hac ((finite_setOf_evR_eq_zero hP).measure_zero volume)

theorem intervalIntegrable_log_norm_sub (ρ : ℂ) (a b : ℝ) :
    IntervalIntegrable (fun y : ℝ => Real.log ‖ρ - (y : ℂ)‖) volume a b := by
  have h : AnalyticOnNhd ℝ (fun y : ℝ => ρ - (y : ℂ)) (Set.uIcc a b) :=
    analyticOnNhd_const.sub (Complex.ofRealCLM.analyticOnNhd _)
  exact h.meromorphicOn.intervalIntegrable_log_norm

/-! ## The measure `μ = G(x) dx` -/

section muPw

variable {N : ℕ} {e G : ℕ → ℝ}

theorem muPw_univ (he : ∀ k < N, e k < e (k + 1)) (hG : ∀ k ≤ N, 0 ≤ G k) :
    muPw N e G Set.univ = ENNReal.ofReal (∑ k ∈ Finset.range N, (e (k + 1) - e k) * (G k + G (k + 1)) / 2) := by
  rw [muPw, withDensity_apply _ MeasurableSet.univ, Measure.restrict_univ,
    ← ofReal_integral_eq_lintegral_ofReal (integrable_pwLin N e G) (ae_of_all _ (pwLin_nonneg hG)),
    integral_pwLin he]

theorem isFiniteMeasure_muPw (he : ∀ k < N, e k < e (k + 1)) (hG : ∀ k ≤ N, 0 ≤ G k) :
    IsFiniteMeasure (muPw N e G) :=
  ⟨by rw [muPw_univ he hG]; exact ENNReal.ofReal_lt_top⟩

theorem integral_muPw (hG : ∀ k ≤ N, 0 ≤ G k) (f : ℝ → ℝ) :
    ∫ x, f x ∂(muPw N e G) = ∫ x, f x * pwLin N e G x := by
  rw [muPw, integral_withDensity_eq_integral_toReal_smul (measurable_pwLin N e G).ennreal_ofReal
    (ae_of_all _ (fun _ => ENNReal.ofReal_lt_top))]
  congr 1
  funext x
  rw [smul_eq_mul, ENNReal.toReal_ofReal (pwLin_nonneg hG x), mul_comm]

theorem integrable_muPw_iff (hG : ∀ k ≤ N, 0 ≤ G k) (f : ℝ → ℝ) :
    Integrable f (muPw N e G) ↔ Integrable (fun x => f x * pwLin N e G x) := by
  rw [muPw, integrable_withDensity_iff_integrable_smul' (measurable_pwLin N e G).ennreal_ofReal
    (ae_of_all _ (fun _ => ENNReal.ofReal_lt_top))]
  have : (fun x => (ENNReal.ofReal (pwLin N e G x)).toReal • f x) = fun x => f x * pwLin N e G x := by
    funext x
    rw [smul_eq_mul, ENNReal.toReal_ofReal (pwLin_nonneg hG x), mul_comm]
  rw [this]

theorem integrable_log_norm_sub_muPw (he : ∀ k < N, e k < e (k + 1)) (hG : ∀ k ≤ N, 0 ≤ G k) (ρ : ℂ) :
    Integrable (fun y : ℝ => Real.log ‖ρ - (y : ℂ)‖) (muPw N e G) := by
  rw [integrable_muPw_iff hG]
  have h := integrable_mul_pwLin (N := N) (e := e) (G := G) (ψ := fun y : ℝ => Real.log ‖ρ - (y : ℂ)‖) 0
    (fun a b => by simpa using intervalIntegrable_log_norm_sub ρ a b) he
  simpa using h

/-- **Root formula for `μ`**: `∫ log |P| dμ = s log |a| + ∑_ρ U(ρ)`. -/
theorem integral_log_evR_muPw (he : ∀ k < N, e k < e (k + 1)) (hG : ∀ k ≤ N, 0 ≤ G k) {s : ℝ}
    (hs : ∑ k ∈ Finset.range N, (e (k + 1) - e k) * (G k + G (k + 1)) / 2 = s) (hs0 : 0 < s)
    {P : ℤ[X]} (hP : P ≠ 0) :
    Integrable (fun y => Real.log |evR P y|) (muPw N e G) ∧
      ∫ y, Real.log |evR P y| ∂(muPw N e G) =
        s * Real.log |(P.leadingCoeff : ℝ)| + ((toC P).roots.map (potC N e G)).sum := by
  have := isFiniteMeasure_muPw he hG
  have hac : muPw N e G ≪ volume := withDensity_absolutelyContinuous _ _
  obtain ⟨hi, he'⟩ := integral_log_abs_evR (muPw N e G) (ae_evR_ne_zero hac hP)
    (fun ρ _ => integrable_log_norm_sub_muPw he hG ρ)
  refine ⟨hi, ?_⟩
  rw [he', muPw_univ he hG, hs, ENNReal.toReal_ofReal hs0.le, mul_comm]
  congr 1
  congr 1
  apply Multiset.map_congr rfl
  intro ρ _
  rw [integral_muPw hG, potC]

end muPw

/-! ## Step 2: Smith's condition -/

theorem multiset_sum_finset_sum_comm {ι : Type*} (t : Finset ι) (f : ι → ℂ → ℝ) :
    ∀ m : Multiset ℂ, (m.map (fun ρ => ∑ j ∈ t, f j ρ)).sum = ∑ j ∈ t, (m.map (f j)).sum := by
  intro m
  induction m using Multiset.induction_on with
  | empty => simp
  | cons a m ih => simp only [Multiset.map_cons, Multiset.sum_cons, ih, Finset.sum_add_distrib]

namespace UpCertHyp

variable {J : ℕ} {Q : Fin J → ℤ[X]} {b : Fin J → ℝ} {N : ℕ} {e G : ℕ → ℝ} {s X : ℝ}

theorem root_formula (h : UpCertHyp Q b N e G s X) {P : ℤ[X]} (hP : P ≠ 0) :
    Integrable (fun y => Real.log |evR P y|) (muPw N e G) ∧
      ∫ y, Real.log |evR P y| ∂(muPw N e G) =
        s * Real.log |(P.leadingCoeff : ℝ)| + ((toC P).roots.map (potC N e G)).sum :=
  integral_log_evR_muPw h.nodes h.G_nonneg h.mass h.mass_pos hP

theorem log_abs_lead_nonneg {P : ℤ[X]} (hP : P ≠ 0) : 0 ≤ Real.log |(P.leadingCoeff : ℝ)| :=
  Real.log_nonneg (by exact_mod_cast Int.one_le_abs (leadingCoeff_ne_zero.mpr hP))

/-- Step 2 for `P` without a common root with a weighted `Qⱼ`: the resultant argument. -/
theorem integral_nonneg_of_no_common_root (h : UpCertHyp Q b N e G s X)
    (h1 : ∀ z : ℂ, (∀ j, 0 < b j → eval z (toC (Q j)) ≠ 0) → 0 ≤ hUp Q b N e G z) {P : ℤ[X]} (hP : P ≠ 0)
    (hno : ∀ j, 0 < b j → ∀ ρ ∈ (toC P).roots, eval ρ (toC (Q j)) ≠ 0) :
    0 ≤ ∫ y, Real.log |evR P y| ∂(muPw N e G) := by
  rw [(h.root_formula hP).2]
  have hLa : 0 ≤ Real.log |(P.leadingCoeff : ℝ)| := log_abs_lead_nonneg hP
  have hU : ((toC P).roots.map (fun ρ => ∑ j, b j * Real.log ‖eval ρ (toC (Q j))‖)).sum ≤
      ((toC P).roots.map (potC N e G)).sum := by
    apply Multiset.sum_map_le_sum_map
    intro ρ hρ
    have := h1 ρ (fun j hj => hno j hj ρ hρ)
    unfold hUp at this
    linarith
  rw [multiset_sum_finset_sum_comm] at hU
  have hres : ∀ j, b j * (-(((Q j).natDegree : ℝ) * Real.log |(P.leadingCoeff : ℝ)|)) ≤
      ((toC P).roots.map (fun ρ => b j * Real.log ‖eval ρ (toC (Q j))‖)).sum := by
    intro j
    rw [Multiset.sum_map_mul_left]
    rcases (h.b_nonneg j).lt_or_eq with hbj | hbj
    · exact mul_le_mul_of_nonneg_left
        (neg_mul_log_le_sum_log_norm_eval hP (Q j) _ le_rfl (fun β hβ => hno j hbj β hβ)) (h.b_nonneg j)
    · rw [← hbj]
      simp
  have hsum := Finset.sum_le_sum (fun j (_ : j ∈ Finset.univ) => hres j)
  have hlin : ∑ j, b j * (-(((Q j).natDegree : ℝ) * Real.log |(P.leadingCoeff : ℝ)|)) =
      -((∑ j, b j * ((Q j).natDegree : ℝ)) * Real.log |(P.leadingCoeff : ℝ)|) := by
    rw [Finset.sum_mul, ← Finset.sum_neg_distrib]
    exact Finset.sum_congr rfl (fun j _ => by ring)
  rw [hlin] at hsum
  have hC1 := h.C1
  have hfin : 0 ≤ (s - ∑ j, b j * ((Q j).natDegree : ℝ)) * Real.log |(P.leadingCoeff : ℝ)| :=
    mul_nonneg (by linarith) hLa
  nlinarith

/-- A weighted `Qⱼ` with a common root with `P` divides `P` in `ℤ[X]`. -/
theorem dvd_of_common_root (h : UpCertHyp Q b N e G s X) {P : ℤ[X]} (j : Fin J) {ρ : ℂ}
    (hρP : ρ ∈ (toC P).roots) (hρQ : eval ρ (toC (Q j)) = 0) : Q j ∣ P := by
  have hmin : IsMinpolyZ (Q j) ρ := ⟨h.Q_irred j, h.Q_deg j, by rw [← eval_toC]; exact hρQ⟩
  have hP0 : P ≠ 0 := by
    rintro rfl
    simp at hρP
  have hPρ : aeval ρ P = 0 := by
    rw [← eval_toC]
    exact (mem_roots (toC_ne_zero hP0)).mp hρP
  have hdvd := hmin.map_rat_dvd_of_aeval_eq_zero hPρ
  have hprim := (h.Q_irred j).isPrimitive (h.Q_deg j).ne'
  rw [← algebraMap_int_eq] at hdvd
  exact (Polynomial.IsPrimitive.dvd_iff_fraction_map_dvd_fraction_map ℚ hprim).mpr hdvd

theorem integral_nonneg_aux (h : UpCertHyp Q b N e G s X)
    (h1 : ∀ z : ℂ, (∀ j, 0 < b j → eval z (toC (Q j)) ≠ 0) → 0 ≤ hUp Q b N e G z) :
    ∀ n : ℕ, ∀ P : ℤ[X], P ≠ 0 → P.natDegree = n → 0 ≤ ∫ y, Real.log |evR P y| ∂(muPw N e G) := by
  intro n
  refine Nat.strong_induction_on n ?_
  intro n ih P hP hn
  by_cases hc : ∃ j, 0 < b j ∧ ∃ ρ ∈ (toC P).roots, eval ρ (toC (Q j)) = 0
  · obtain ⟨j, hbj, ρ, hρ, hQρ⟩ := hc
    obtain ⟨P', rfl⟩ := h.dvd_of_common_root j hρ hQρ
    have hQ0 : Q j ≠ 0 := (h.Q_irred j).ne_zero
    have hP'0 : P' ≠ 0 := by
      rintro rfl
      exact hP (mul_zero _)
    have hdeg : P'.natDegree < (Q j * P').natDegree := by
      rw [natDegree_mul hQ0 hP'0]
      have := h.Q_deg j
      omega
    have hIP' := ih P'.natDegree (hn ▸ hdeg) P' hP'0 rfl
    have hsplit : ∫ y, Real.log |evR (Q j * P') y| ∂(muPw N e G) =
        ∫ y, Real.log |evR (Q j) y| ∂(muPw N e G) + ∫ y, Real.log |evR P' y| ∂(muPw N e G) := by
      rw [(h.root_formula hP).2, (h.root_formula hQ0).2, (h.root_formula hP'0).2]
      have hroots : (toC (Q j * P')).roots = (toC (Q j)).roots + (toC P').roots := by
        rw [show toC (Q j * P') = toC (Q j) * toC P' from Polynomial.map_mul _]
        exact roots_mul (mul_ne_zero (toC_ne_zero hQ0) (toC_ne_zero hP'0))
      have ha : |((Q j).leadingCoeff : ℝ)| ≠ 0 := by
        rw [abs_ne_zero]
        exact_mod_cast leadingCoeff_ne_zero.mpr hQ0
      have hb : |(P'.leadingCoeff : ℝ)| ≠ 0 := by
        rw [abs_ne_zero]
        exact_mod_cast leadingCoeff_ne_zero.mpr hP'0
      rw [hroots, Multiset.map_add, Multiset.sum_add, leadingCoeff_mul, Int.cast_mul, abs_mul,
        Real.log_mul ha hb]
      ring
    have hC2 : 0 ≤ ∫ y, Real.log |evR (Q j) y| ∂(muPw N e G) := by
      rw [integral_muPw h.G_nonneg]
      exact h.C2 j hbj
    rw [hsplit]
    linarith
  · push Not at hc
    exact h.integral_nonneg_of_no_common_root h1 hP (fun j hj ρ hρ => hc j hj ρ hρ)

/-- **Step 2 (Smith's condition).** -/
theorem smith_cond (h : UpCertHyp Q b N e G s X)
    (h1 : ∀ z : ℂ, (∀ j, 0 < b j → eval z (toC (Q j)) ≠ 0) → 0 ≤ hUp Q b N e G z) :
    ∀ P : ℤ[X], P ≠ 0 → Integrable (fun x => Real.log |evR P x|) (muPw N e G) ∧
      0 ≤ ∫ x, Real.log |evR P x| ∂(muPw N e G) :=
  fun P hP => ⟨(h.root_formula hP).1, h.integral_nonneg_aux h1 _ P hP rfl⟩

end UpCertHyp

/-! ## Step 3: the sequence -/

/-- Two monic irreducible integer polynomials with a common root are equal. -/
theorem eq_of_common_root {R1 R2 : ℤ[X]} {α : ℂ} (h1 : R1.Monic) (h2 : R2.Monic) (hm1 : IsMinpolyZ R1 α)
    (hm2 : IsMinpolyZ R2 α) : R1 = R2 := by
  have hd12 := hm1.map_rat_dvd_of_aeval_eq_zero hm2.2.2
  have hd21 := hm2.map_rat_dvd_of_aeval_eq_zero hm1.2.2
  have hne2 : R2.map (Int.castRingHom ℚ) ≠ 0 :=
    (Polynomial.map_ne_zero_iff (RingHom.injective_int _)).mpr hm2.ne_zero
  have hdeg : (R1.map (Int.castRingHom ℚ)).natDegree ≤ (R2.map (Int.castRingHom ℚ)).natDegree :=
    natDegree_le_of_dvd hd12 hne2
  have heq := eq_of_monic_of_dvd_of_natDegree_le (h2.map _) (h1.map _) hd21 hdeg
  exact Polynomial.map_injective _ (RingHom.injective_int _) heq

/-- For a real-rooted `R`, the complex roots are the real roots. -/
theorem roots_toC_eq {R : ℤ[X]} (hcard : Multiset.card (R.map (Int.castRingHom ℝ)).roots = R.natDegree) :
    (toC R).roots = (R.map (Int.castRingHom ℝ)).roots.map Complex.ofRealHom := by
  have h1 : toC R = (R.map (Int.castRingHom ℝ)).map Complex.ofRealHom := by
    rw [Polynomial.map_map]
    congr 1
  have hdeg : (R.map (Int.castRingHom ℝ)).natDegree = R.natDegree :=
    natDegree_map_eq_of_injective (RingHom.injective_int _) R
  rw [h1, ← roots_map_of_injective_of_card_eq_natDegree Complex.ofRealHom.injective (by rw [hcard, hdeg])]

theorem log_le_posLog (x : ℝ) : Real.log x ≤ Real.posLog x := by
  rw [Real.posLog_def]
  exact le_max_right _ _

/-- The polynomials of Smith's theorem other than `X`: totally positive algebraic integers with
`log Ω = rootAvg log⁺`. -/
theorem smith_poly_facts {R : ℤ[X]} {X : ℝ} (hmon : R.Monic) (hirr : Irreducible R) (hdeg : 0 < R.natDegree)
    (hcard : Multiset.card (R.map (Int.castRingHom ℝ)).roots = R.natDegree)
    (hroots : ∀ x ∈ (R.map (Int.castRingHom ℝ)).roots, x ∈ Set.Icc 0 X) (hRX : R ≠ Polynomial.X) :
    ∃ α : ℂ, IsIntegral ℤ α ∧ IsMinpolyZ R α ∧ AllRootsPos R ∧
      Real.log ((toC R).mahlerMeasure ^ ((R.natDegree : ℝ)⁻¹)) = rootAvg R Real.posLog := by
  have hR0 : R ≠ 0 := hirr.ne_zero
  have hdegC : 0 < (toC R).degree := by
    rw [← natDegree_pos_iff_degree_pos, natDegree_toC]
    exact hdeg
  obtain ⟨α, hα⟩ := Complex.exists_root hdegC
  have hαR : aeval α R = 0 := by
    rw [← eval_toC]
    exact hα
  refine ⟨α, ⟨R, hmon, by rw [← aeval_def]; exact hαR⟩, ⟨hirr, hdeg, hαR⟩, ?_, ?_⟩
  · -- all roots are positive reals
    intro z hz
    rw [roots_toC_eq hcard] at hz
    obtain ⟨x, hx, rfl⟩ := Multiset.mem_map.mp hz
    have hxI := hroots x hx
    have hx0 : x ≠ 0 := by
      rintro rfl
      have hR' : R.map (Int.castRingHom ℝ) ≠ 0 :=
        (Polynomial.map_ne_zero_iff (RingHom.injective_int _)).mpr hR0
      have hroot := (mem_roots hR').mp hx
      have hc : R.coeff 0 = 0 := by
        have h0 : (R.map (Int.castRingHom ℝ)).coeff 0 = 0 := by
          rw [coeff_zero_eq_eval_zero]
          exact hroot
        rw [coeff_map, eq_intCast] at h0
        exact_mod_cast h0
      have hXR : (Polynomial.X : ℤ[X]) ∣ R := X_dvd_iff.mpr hc
      have hass := irreducible_X.associated_of_dvd hirr hXR
      exact hRX (eq_of_monic_of_associated monic_X hmon hass).symm
    refine ⟨?_, ?_⟩
    · simp only [Complex.ofRealHom_eq_coe, Complex.ofReal_re]
      exact lt_of_le_of_ne hxI.1 (Ne.symm hx0)
    · simp
  · -- log Ω = rootAvg log⁺
    have hM : 0 < (toC R).mahlerMeasure :=
      lt_of_lt_of_le zero_lt_one (one_le_mahlerMeasure_of_ne_zero hR0)
    rw [Real.log_rpow hM, log_mahlerMeasure_toC, hmon.leadingCoeff, Int.cast_one, abs_one, Real.log_one,
      zero_add, roots_toC_eq hcard, Multiset.map_map, rootAvg, div_eq_inv_mul]
    congr 2
    apply Multiset.map_congr rfl
    intro x _
    simp only [Function.comp_apply, Complex.ofRealHom_eq_coe, Complex.norm_real, Real.norm_eq_abs,
      Real.posLog_abs]

/-- **Step 3 (generic).** Smith's theorem for a probability measure `ν` on `[0, X]` with Smith's condition gives
distinct monic irreducible `R k`; those other than `X` are minimal polynomials of totally positive algebraic integers
with `log Ω = rootAvg (R k) log⁺ → ∫ log⁺ dν`. -/
theorem smith_step (hS : SmithTheorem) {X : ℝ} (hX : 4 < X) (ν : Measure ℝ) [IsProbabilityMeasure ν]
    (hsupp : ν (Set.Icc 0 X)ᶜ = 0)
    (hcond : ∀ P : ℤ[X], P ≠ 0 → ν {x | evR P x = 0} = 0 ∧ Integrable (fun x => Real.log |evR P x|) ν ∧
      0 ≤ ∫ x, Real.log |evR P x| ∂ν) :
    ∃ R : ℕ → ℤ[X], Function.Injective R ∧
      (∀ k, R k ≠ Polynomial.X → (R k).Monic ∧ ∃ α : ℂ, IsIntegral ℤ α ∧ IsMinpolyZ (R k) α ∧ AllRootsPos (R k) ∧
        Real.log ((toC (R k)).mahlerMeasure ^ (((R k).natDegree : ℝ)⁻¹)) = rootAvg (R k) Real.posLog) ∧
      Tendsto (fun k => rootAvg (R k) Real.posLog) atTop (𝓝 (∫ x, Real.posLog x ∂ν)) := by
  obtain ⟨R, hinj, hR, hconv⟩ := hS X hX ν inferInstance hsupp hcond
  refine ⟨R, hinj, fun k hk => ?_, hconv _ Real.continuous_posLog⟩
  obtain ⟨hmon, hirr, hdeg, hcard, hroots⟩ := hR k
  exact ⟨hmon, smith_poly_facts hmon hirr hdeg hcard hroots hk⟩

/-- `log⁺` is integrable for a finite measure supported in `[0, X]`. -/
theorem integrable_posLog_of_supp (ν : Measure ℝ) [IsFiniteMeasure ν] {X : ℝ} (hsupp : ν (Set.Icc 0 X)ᶜ = 0) :
    Integrable Real.posLog ν := by
  refine Integrable.of_bound Real.continuous_posLog.aestronglyMeasurable (Real.posLog X) ?_
  have hae : ∀ᵐ x ∂ν, x ∈ Set.Icc 0 X := by
    have := measure_eq_zero_iff_ae_notMem.mp hsupp
    filter_upwards [this] with x hx
    simpa using hx
  filter_upwards [hae] with x hx
  rw [Real.norm_eq_abs, abs_of_nonneg Real.posLog_nonneg]
  exact Real.posLog_le_posLog (by linarith [hx.1]) hx.2

/-- `μ / s`. -/
noncomputable def nu0 (N : ℕ) (e G : ℕ → ℝ) (s : ℝ) : Measure ℝ := (ENNReal.ofReal s)⁻¹ • muPw N e G

namespace UpCertHyp

variable {J : ℕ} {Q : Fin J → ℤ[X]} {b : Fin J → ℝ} {N : ℕ} {e G : ℕ → ℝ} {s X : ℝ}

theorem muPw_compl_Icc (h : UpCertHyp Q b N e G s X) : muPw N e G (Set.Icc 0 X)ᶜ = 0 := by
  rw [muPw, withDensity_apply _ measurableSet_Icc.compl]
  apply setLIntegral_eq_zero measurableSet_Icc.compl
  intro y hy
  have hy' : y < e 0 ∨ e N ≤ y := by
    simp only [Set.mem_compl_iff, Set.mem_Icc, not_and_or, not_le] at hy
    rcases hy with hy | hy
    · left
      linarith [h.e_first]
    · right
      linarith [h.e_last]
  show ENNReal.ofReal (pwLin N e G y) = 0
  rw [pwLin_eq_zero_of_notMem h.nodes hy', ENNReal.ofReal_zero]

theorem nu0_prob (h : UpCertHyp Q b N e G s X) : IsProbabilityMeasure (nu0 N e G s) := by
  constructor
  rw [nu0, Measure.smul_apply, muPw_univ h.nodes h.G_nonneg, h.mass, smul_eq_mul,
    ENNReal.inv_mul_cancel (ENNReal.ofReal_pos.mpr h.mass_pos).ne' ENNReal.ofReal_ne_top]

theorem nu0_supp (h : UpCertHyp Q b N e G s X) : nu0 N e G s (Set.Icc 0 X)ᶜ = 0 := by
  rw [nu0, Measure.smul_apply, h.muPw_compl_Icc, smul_zero]

theorem nu0_cond (h : UpCertHyp Q b N e G s X)
    (h1 : ∀ z : ℂ, (∀ j, 0 < b j → eval z (toC (Q j)) ≠ 0) → 0 ≤ hUp Q b N e G z) :
    ∀ P : ℤ[X], P ≠ 0 → nu0 N e G s {x | evR P x = 0} = 0 ∧ Integrable (fun x => Real.log |evR P x|) (nu0 N e G s) ∧
      0 ≤ ∫ x, Real.log |evR P x| ∂(nu0 N e G s) := by
  intro P hP
  obtain ⟨hi, hnn⟩ := h.smith_cond h1 P hP
  refine ⟨?_, hi.smul_measure (ENNReal.inv_ne_top.mpr (ENNReal.ofReal_pos.mpr h.mass_pos).ne'), ?_⟩
  · rw [nu0, Measure.smul_apply, muPw,
      measure_evR_zero (withDensity_absolutelyContinuous volume _) hP, smul_zero]
  rw [nu0, integral_smul_measure, smul_eq_mul]
  exact mul_nonneg ENNReal.toReal_nonneg hnn

theorem integral_posLog_nu0 (h : UpCertHyp Q b N e G s X) :
    ∫ x, Real.posLog x ∂(nu0 N e G s) = (∫ x, Real.posLog x * pwLin N e G x) / s := by
  rw [nu0, integral_smul_measure, integral_muPw h.G_nonneg, smul_eq_mul, ENNReal.toReal_inv,
    ENNReal.toReal_ofReal h.mass_pos.le, div_eq_inv_mul]

/-- **Step 3.** Infinitely many totally positive algebraic integers with `Ω(α) < B` for `log B > v`. -/
theorem infinite (h : UpCertHyp Q b N e G s X)
    (h1 : ∀ z : ℂ, (∀ j, 0 < b j → eval z (toC (Q j)) ≠ 0) → 0 ≤ hUp Q b N e G z) (hS : SmithTheorem)
    {v B : ℝ} (hB : 0 < B) (hV : (∫ x, Real.posLog x * pwLin N e G x) / s ≤ v) (hvB : v < Real.log B) :
    {α : ℂ | IsIntegral ℤ α ∧ ∃ P : ℤ[X], IsMinpolyZ P α ∧ AllRootsPos P ∧
      (toC P).mahlerMeasure ^ ((P.natDegree : ℝ)⁻¹) < B}.Infinite := by
  have := h.nu0_prob
  obtain ⟨R, hinj, hgood, hconv⟩ := smith_step hS h.X_gt (nu0 N e G s) h.nu0_supp (h.nu0_cond h1)
  rw [h.integral_posLog_nu0] at hconv
  have hlt : (∫ x, Real.posLog x * pwLin N e G x) / s < Real.log B := lt_of_le_of_lt hV hvB
  obtain ⟨k₀, hk₀⟩ := eventually_atTop.mp (hconv.eventually (gt_mem_nhds hlt))
  set T : Set ℕ := {k | k₀ ≤ k ∧ R k ≠ Polynomial.X} with hT
  have hTinf : T.Infinite := by
    have hsub : {k | R k = Polynomial.X}.Subsingleton := fun k hk m hm => hinj (hk.trans hm.symm)
    have hTeq : T = Set.Ici k₀ \ {k | R k = Polynomial.X} := by
      ext k
      simp [hT]
    rw [hTeq]
    exact (Set.Ici_infinite k₀).sdiff hsub.finite
  have := hTinf.to_subtype
  choose hmon α hα using fun k : T => hgood k.1 k.2.2
  refine Set.infinite_of_injective_forall_mem (f := α) ?_ ?_
  · intro k m hkm
    obtain ⟨-, hmk, -, -⟩ := hα k
    obtain ⟨-, hmm, -, -⟩ := hα m
    have hmm' : IsMinpolyZ (R m) (α k) := by
      rw [hkm]
      exact hmm
    exact Subtype.ext (hinj (eq_of_common_root (hmon k) (hmon m) hmk hmm'))
  · intro k
    obtain ⟨hint, hmin, hpos, hlog⟩ := hα k
    refine ⟨hint, R k, hmin, hpos, ?_⟩
    have hM : 0 < (toC (R k)).mahlerMeasure ^ (((R k).natDegree : ℝ)⁻¹) := by
      apply Real.rpow_pos_of_pos
      exact lt_of_lt_of_le zero_lt_one (one_le_mahlerMeasure_of_ne_zero hmin.ne_zero)
    rw [← Real.exp_log hM, hlog, ← Real.exp_log hB]
    exact Real.exp_lt_exp.mpr (hk₀ k k.2.1)

end UpCertHyp

/-! ## Step 4: the limit point -/

theorem arcsine_compl_Icc (X : ℝ) : arcsine X (Set.Icc 0 X)ᶜ = 0 := by
  rw [arcsine, withDensity_apply _ measurableSet_Icc.compl, Measure.restrict_restrict measurableSet_Icc.compl]
  have hempty : (Set.Icc 0 X)ᶜ ∩ Set.Ioo 0 X = ∅ := by
    apply Set.eq_empty_iff_forall_notMem.mpr
    rintro x ⟨hx1, hx2⟩
    exact hx1 ⟨hx2.1.le, hx2.2.le⟩
  rw [hempty, Measure.restrict_empty, lintegral_zero_measure]

theorem arcsine_ac (X : ℝ) : arcsine X ≪ volume :=
  (withDensity_absolutelyContinuous _ _).trans (Measure.absolutelyContinuous_of_le Measure.restrict_le_self)

/-- Smith's condition for the arcsine measure of `[0, X]`, `X > 4` (its potential is `≥ log (X/4) > 0`). -/
theorem arcsine_cond (hA : ArcsinePotential) {X : ℝ} (hX : 4 < X) :
    ∀ P : ℤ[X], P ≠ 0 → arcsine X {x | evR P x = 0} = 0 ∧ Integrable (fun x => Real.log |evR P x|) (arcsine X) ∧
      0 ≤ ∫ x, Real.log |evR P x| ∂(arcsine X) := by
  intro P hP
  obtain ⟨hprob, hpot⟩ := hA X (by linarith)
  obtain ⟨hi, heq⟩ := integral_log_abs_evR (arcsine X) (ae_evR_ne_zero (arcsine_ac X) hP)
    (fun ρ _ => (hpot ρ).1)
  refine ⟨measure_evR_zero (arcsine_ac X) hP, hi, ?_⟩
  rw [heq, measure_univ, ENNReal.toReal_one, mul_one]
  have hlog4 : 0 < Real.log (X / 4) := Real.log_pos (by linarith)
  have hLa := UpCertHyp.log_abs_lead_nonneg hP
  have hsum : 0 ≤ ((toC P).roots.map (fun ρ => ∫ y, Real.log ‖ρ - (y : ℂ)‖ ∂(arcsine X))).sum := by
    apply Multiset.sum_nonneg
    intro x hx
    obtain ⟨ρ, -, rfl⟩ := Multiset.mem_map.mp hx
    exact hlog4.le.trans (hpot ρ).2
  linarith

theorem arcsine_posLog_ge (hA : ArcsinePotential) {X : ℝ} (hX : 0 < X) :
    Real.log (X / 4) ≤ ∫ y, Real.posLog y ∂(arcsine X) := by
  obtain ⟨hprob, hpot⟩ := hA X hX
  obtain ⟨hi0, hge⟩ := hpot 0
  refine hge.trans (integral_mono hi0 (integrable_posLog_of_supp (arcsine X) (arcsine_compl_Icc X)) ?_)
  intro y
  simp only [zero_sub, norm_neg, Complex.norm_real, Real.norm_eq_abs, Real.log_abs]
  exact log_le_posLog y

/-- The mixture `(1 - t) ν + t ω`. -/
noncomputable def mix (t : ℝ) (ν ω : Measure ℝ) : Measure ℝ := ENNReal.ofReal (1 - t) • ν + ENNReal.ofReal t • ω

theorem mix_prob {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) (ν ω : Measure ℝ) [IsProbabilityMeasure ν]
    [IsProbabilityMeasure ω] : IsProbabilityMeasure (mix t ν ω) := by
  constructor
  rw [mix, Measure.add_apply, Measure.smul_apply, Measure.smul_apply, measure_univ, measure_univ, smul_eq_mul,
    smul_eq_mul, mul_one, mul_one, ← ENNReal.ofReal_add (by linarith) ht0, sub_add_cancel, ENNReal.ofReal_one]

theorem mix_supp {t : ℝ} {ν ω : Measure ℝ} {X : ℝ} (hν : ν (Set.Icc 0 X)ᶜ = 0) (hω : ω (Set.Icc 0 X)ᶜ = 0) :
    mix t ν ω (Set.Icc 0 X)ᶜ = 0 := by
  rw [mix, Measure.add_apply, Measure.smul_apply, Measure.smul_apply, hν, hω, smul_zero, smul_zero, add_zero]

theorem integral_mix {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) {ν ω : Measure ℝ} {f : ℝ → ℝ} (hν : Integrable f ν)
    (hω : Integrable f ω) :
    Integrable f (mix t ν ω) ∧ ∫ x, f x ∂(mix t ν ω) = (1 - t) * ∫ x, f x ∂ν + t * ∫ x, f x ∂ω := by
  have h1 := hν.smul_measure (c := ENNReal.ofReal (1 - t)) ENNReal.ofReal_ne_top
  have h2 := hω.smul_measure (c := ENNReal.ofReal t) ENNReal.ofReal_ne_top
  refine ⟨h1.add_measure h2, ?_⟩
  rw [mix, integral_add_measure h1 h2, integral_smul_measure, integral_smul_measure,
    ENNReal.toReal_ofReal (by linarith), ENNReal.toReal_ofReal ht0, smul_eq_mul, smul_eq_mul]

namespace UpCertHyp

variable {J : ℕ} {Q : Fin J → ℤ[X]} {b : Fin J → ℝ} {N : ℕ} {e G : ℕ → ℝ} {s X : ℝ}

/-- **Step 4.** Some accumulation point of `𝓛₊` is at most `B` when `log B ≥ v`. -/
theorem limit_point (h : UpCertHyp Q b N e G s X)
    (h1 : ∀ z : ℂ, (∀ j, 0 < b j → eval z (toC (Q j)) ≠ 0) → 0 ≤ hUp Q b N e G z) (hS : SmithTheorem)
    (hA : ArcsinePotential) {v B : ℝ} (hB : 0 < B) (hV : (∫ x, Real.posLog x * pwLin N e G x) / s ≤ v)
    (hvB : v ≤ Real.log B) : ∃ y : ℝ, AccPt y (𝓟 Lplus) ∧ y ≤ B := by
  set v' := (∫ x, Real.posLog x * pwLin N e G x) / s with hv'
  have hprob0 := h.nu0_prob
  -- the larger interval `[0, X']` with `log (X'/4) > v'`
  set X' := max X (4 * Real.exp v' + 1) with hX'
  have hXX' : X ≤ X' := le_max_left _ _
  have hX'4 : 4 < X' := lt_of_lt_of_le h.X_gt hXX'
  have hX'v : v' < Real.log (X' / 4) := by
    rw [Real.lt_log_iff_exp_lt (by linarith)]
    have : 4 * Real.exp v' + 1 ≤ X' := le_max_right _ _
    linarith
  obtain ⟨hprobω, -⟩ := hA X' (by linarith)
  set w := ∫ y, Real.posLog y ∂(arcsine X') with hw
  have hwv : v' < w := lt_of_lt_of_le hX'v (arcsine_posLog_ge hA (by linarith))
  have hsupp0 : nu0 N e G s (Set.Icc 0 X')ᶜ = 0 :=
    measure_mono_null (Set.compl_subset_compl.mpr (Set.Icc_subset_Icc le_rfl hXX')) h.nu0_supp
  have hpl0 : Integrable Real.posLog (nu0 N e G s) := integrable_posLog_of_supp _ h.nu0_supp
  have hplω : Integrable Real.posLog (arcsine X') := integrable_posLog_of_supp _ (arcsine_compl_Icc X')
  refine ⟨Real.exp v', ?_, ?_⟩
  swap
  · calc Real.exp v' ≤ Real.exp v := Real.exp_le_exp.mpr hV
      _ ≤ Real.exp (Real.log B) := Real.exp_le_exp.mpr hvB
      _ = B := Real.exp_log hB
  rw [accPt_iff_nhds]
  intro U hU
  obtain ⟨δ, hδ, hball⟩ := Metric.mem_nhds_iff.mp hU
  -- a small `t ∈ (0, 1]` with `exp v' < c := exp ((1 - t) v' + t w) < exp v' + δ / 2`
  have hcont : Continuous fun t : ℝ => Real.exp (v' + t * (w - v')) := by fun_prop
  have hev := (hcont.tendsto 0).eventually
    (gt_mem_nhds (show Real.exp (v' + 0 * (w - v')) < Real.exp v' + δ / 2 by
      rw [zero_mul, add_zero]
      linarith))
  obtain ⟨ε, hε, hεball⟩ := Metric.eventually_nhds_iff.mp hev
  set t := min (ε / 2) 1 with ht
  have ht0 : 0 < t := lt_min (by linarith) one_pos
  have ht1 : t ≤ 1 := min_le_right _ _
  have htε : dist t 0 < ε := by
    rw [Real.dist_eq, sub_zero, abs_of_pos ht0]
    exact lt_of_le_of_lt (min_le_left _ _) (by linarith)
  have hcδ : Real.exp (v' + t * (w - v')) < Real.exp v' + δ / 2 := hεball htε
  set c := Real.exp (v' + t * (w - v')) with hc
  have hc1 : Real.exp v' < c := by
    rw [hc]
    apply Real.exp_lt_exp.mpr
    have : 0 < t * (w - v') := mul_pos ht0 (by linarith)
    linarith
  -- Smith's theorem for the mixture
  have hprobt := mix_prob ht0.le ht1 (nu0 N e G s) (arcsine X')
  have hcondt : ∀ P : ℤ[X], P ≠ 0 → mix t (nu0 N e G s) (arcsine X') {x | evR P x = 0} = 0 ∧
      Integrable (fun x => Real.log |evR P x|) (mix t (nu0 N e G s) (arcsine X')) ∧
      0 ≤ ∫ x, Real.log |evR P x| ∂(mix t (nu0 N e G s) (arcsine X')) := by
    intro P hP
    obtain ⟨hz0, hi0, hn0⟩ := h.nu0_cond h1 P hP
    obtain ⟨hzω, hiω, hnω⟩ := arcsine_cond hA hX'4 P hP
    obtain ⟨hit, heqt⟩ := integral_mix ht0.le ht1 hi0 hiω
    refine ⟨?_, hit, ?_⟩
    · rw [mix, Measure.add_apply, Measure.smul_apply, Measure.smul_apply, hz0, hzω, smul_zero, smul_zero, add_zero]
    rw [heqt]
    have := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - t) hn0
    have := mul_nonneg ht0.le hnω
    linarith
  obtain ⟨R, hinj, hgood, hconv⟩ := smith_step hS hX'4 (mix t (nu0 N e G s) (arcsine X'))
    (mix_supp hsupp0 (arcsine_compl_Icc X')) hcondt
  have hpost : ∫ x, Real.posLog x ∂(mix t (nu0 N e G s) (arcsine X')) = v' + t * (w - v') := by
    rw [(integral_mix ht0.le ht1 hpl0 hplω).2, h.integral_posLog_nu0]
    ring
  rw [hpost] at hconv
  have hconv' : Tendsto (fun k => Real.exp (rootAvg (R k) Real.posLog)) atTop (𝓝 c) :=
    (Real.continuous_exp.tendsto _).comp hconv
  have hneX : ∀ᶠ k in atTop, R k ≠ Polynomial.X := by
    by_cases hex : ∃ k₁, R k₁ = Polynomial.X
    · obtain ⟨k₁, hk₁⟩ := hex
      refine eventually_atTop.mpr ⟨k₁ + 1, fun k hk hRk => ?_⟩
      have := hinj (hRk.trans hk₁.symm)
      omega
    · push Not at hex
      exact Eventually.of_forall hex
  set η := min (δ / 2) ((c - Real.exp v') / 2) with hη
  have hη0 : 0 < η := lt_min (by linarith) (by linarith)
  have hηδ : η ≤ δ / 2 := min_le_left _ _
  have hηc : η ≤ (c - Real.exp v') / 2 := min_le_right _ _
  obtain ⟨k, hk1, hk2⟩ := ((hconv'.eventually (Metric.ball_mem_nhds c hη0)).and hneX).exists
  obtain ⟨-, α, hint, hmin, hpos, hlog⟩ := hgood k hk2
  have hy0 : 0 < (toC (R k)).mahlerMeasure ^ (((R k).natDegree : ℝ)⁻¹) :=
    Real.rpow_pos_of_pos (lt_of_lt_of_le zero_lt_one (one_le_mahlerMeasure_of_ne_zero hmin.ne_zero)) _
  have hyexp : (toC (R k)).mahlerMeasure ^ (((R k).natDegree : ℝ)⁻¹) = Real.exp (rootAvg (R k) Real.posLog) := by
    rw [← hlog, Real.exp_log hy0]
  have hk1' := Metric.mem_ball.mp hk1
  rw [← hyexp, Real.dist_eq, abs_lt] at hk1'
  refine ⟨(toC (R k)).mahlerMeasure ^ (((R k).natDegree : ℝ)⁻¹), ⟨hball ?_, ⟨α, hint, R k, hmin, hpos, rfl⟩⟩, ?_⟩
  · rw [Metric.mem_ball, Real.dist_eq, abs_lt]
    constructor <;> linarith [hk1'.1, hk1'.2]
  · intro heq
    linarith [hk1'.1]

end UpCertHyp

end TPUpper
