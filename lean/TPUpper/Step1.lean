import TPUpper.Criterion
import AuxCommon.Energy.MinPrinciple

/-!
# Lemma 2.1 of the paper: two potential identities and Step 1 (the minimum principle)

* `potC_ofReal`: on `ℝ` the potential `U(x) = ∫ log |x - y| G(y) dy` has the closed form `∑ᵢ Cᵢ H(eᵢ - x)`;
* `integral_log_evR_eq`: `∫ log |P| dμ = s log |a| + ∑_ρ U(ρ)` for a nonzero `P ∈ ℤ[X]` with leading coefficient `a`
  and complex roots `ρ` (with multiplicity);
* `UpCertHyp.hUp_nonneg`: Step 1, `h = U - ∑ bⱼ log |Qⱼ| ≥ 0` on `ℂ` off the roots of the weighted `Qⱼ`, from the
  minimum principle `AuxCommon.Energy.nonneg_of_superMean` on `Ω = ℂ ∖ ([e₀, e_N] ∪ roots)`.
-/

open Polynomial MeasureTheory Filter Topology Set Metric
open AuxCommon TPMahler

namespace TPUpper

variable {N : ℕ} {e G : ℕ → ℝ}

/-! ## The potential on `ℝ` -/

theorem norm_ofReal_sub_ofReal (x y : ℝ) : ‖(x : ℂ) - (y : ℂ)‖ = |x - y| := by
  rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]

/-- **The closed form of the potential on `ℝ`.** -/
theorem potC_ofReal (he : ∀ k < N, e k < e (k + 1)) (hG0 : G 0 = 0) (hGN : G N = 0) (x : ℝ) :
    potC N e G x = ∑ i ∈ Finset.range (N + 1), slopeJump N e G i * Hk (e i - x) := by
  unfold potC
  simp_rw [norm_ofReal_sub_ofReal]
  exact (pwLinClosedForm N e G he hG0 hGN).1 x

/-! ## Integrability -/

theorem integrable_mul_pwLin' (he : ∀ k < N, e k < e (k + 1)) {φ : ℝ → ℝ}
    (hφ : ∀ a b : ℝ, IntervalIntegrable φ volume a b) : Integrable (fun y => φ y * pwLin N e G y) := by
  have h : (fun y => φ y * pwLin N e G y) = fun y => ∑ k ∈ Finset.range N, φ y * pwPiece e G k y := by
    funext y
    rw [pwLin_eq_sum_pwPiece, Finset.mul_sum]
  rw [h]
  refine integrable_finsetSum _ (fun k hk => ?_)
  have hk := Finset.mem_range.mp hk
  have hind : (fun y => φ y * pwPiece e G k y) =
      Set.indicator (Ico (e k) (e (k + 1))) (fun y => φ y * pwAff e G k y) := by
    funext y
    rw [pwPiece_eq_indicator]
    by_cases hy : y ∈ Ico (e k) (e (k + 1))
    · rw [Set.indicator_of_mem hy, Set.indicator_of_mem hy]
    · rw [Set.indicator_of_notMem hy, Set.indicator_of_notMem hy, mul_zero]
  rw [hind]
  exact (integrable_indicator_iff measurableSet_Ico).mpr
    ((intervalIntegrable_iff_integrableOn_Ico_of_le (he k hk).le).mp
      ((hφ _ _).mul_continuousOn (continuous_pwAff e G k).continuousOn))

theorem intervalIntegrable_log_norm_sub (z : ℂ) (a b : ℝ) :
    IntervalIntegrable (fun y : ℝ => Real.log ‖z - (y : ℂ)‖) volume a b := by
  apply MeromorphicOn.intervalIntegrable_log_norm
  intro y _
  have h : AnalyticAt ℝ (fun y : ℝ => z - (y : ℂ)) y :=
    analyticAt_const.sub (Complex.ofRealCLM.analyticAt y)
  exact h.meromorphicAt

theorem integrable_log_norm_mul_pwLin (he : ∀ k < N, e k < e (k + 1)) (z : ℂ) :
    Integrable (fun y : ℝ => Real.log ‖z - (y : ℂ)‖ * pwLin N e G y) :=
  integrable_mul_pwLin' he (intervalIntegrable_log_norm_sub z)

/-! ## `∫ log |P| dμ` -/

theorem toC_eval_ofReal (P : ℤ[X]) (x : ℝ) : (toC P).eval (x : ℂ) = ((evR P x : ℝ) : ℂ) := by
  have hmap : toC P = (P.map (Int.castRingHom ℝ)).map Complex.ofRealHom := by
    rw [Polynomial.map_map]
    congr 1
  rw [hmap, eval_map, ← Complex.ofRealHom_eq_coe, eval₂_at_apply]
  rfl

theorem abs_evR_eq (P : ℤ[X]) (x : ℝ) : |evR P x| = ‖(toC P).eval (x : ℂ)‖ := by
  rw [toC_eval_ofReal, Complex.norm_real, Real.norm_eq_abs]

theorem log_norm_multiset_prod (w : ℂ) : ∀ (m : Multiset ℂ), (∀ ρ ∈ m, w ≠ ρ) →
    Real.log ‖(m.map (fun ρ => w - ρ)).prod‖ = (m.map (fun ρ => Real.log ‖w - ρ‖)).sum := by
  intro m
  induction m using Multiset.induction_on with
  | empty => intro _; simp
  | cons a m ih =>
    intro hw
    have ha : w - a ≠ 0 := sub_ne_zero.mpr (hw a (Multiset.mem_cons_self a m))
    have hm : ∀ ρ ∈ m, w ≠ ρ := fun ρ hρ => hw ρ (Multiset.mem_cons_of_mem hρ)
    have hprod : (m.map (fun ρ => w - ρ)).prod ≠ 0 := by
      intro h0
      rw [Multiset.prod_eq_zero_iff] at h0
      obtain ⟨ρ, hρ, h⟩ := Multiset.mem_map.mp h0
      exact hm ρ hρ (sub_eq_zero.mp h)
    rw [Multiset.map_cons, Multiset.prod_cons, norm_mul,
      Real.log_mul (norm_ne_zero_iff.mpr ha) (norm_ne_zero_iff.mpr hprod), ih hm, Multiset.map_cons,
      Multiset.sum_cons]

theorem integrable_multiset_sum' (f : ℂ → ℝ → ℝ) : ∀ (m : Multiset ℂ), (∀ ρ ∈ m, Integrable (f ρ)) →
    Integrable (fun x => (m.map (fun ρ => f ρ x)).sum) := by
  intro m
  induction m using Multiset.induction_on with
  | empty => intro _; simp
  | cons a m ih =>
    intro hf
    simp only [Multiset.map_cons, Multiset.sum_cons]
    exact (hf a (Multiset.mem_cons_self a m)).add (ih (fun ρ hρ => hf ρ (Multiset.mem_cons_of_mem hρ)))

theorem integral_multiset_sum' (f : ℂ → ℝ → ℝ) : ∀ (m : Multiset ℂ), (∀ ρ ∈ m, Integrable (f ρ)) →
    ∫ x, (m.map (fun ρ => f ρ x)).sum = (m.map (fun ρ => ∫ x, f ρ x)).sum := by
  intro m
  induction m using Multiset.induction_on with
  | empty => intro _; simp
  | cons a m ih =>
    intro hf
    have hm : ∀ ρ ∈ m, Integrable (f ρ) := fun ρ hρ => hf ρ (Multiset.mem_cons_of_mem hρ)
    simp only [Multiset.map_cons, Multiset.sum_cons]
    rw [integral_add (hf a (Multiset.mem_cons_self a m)) (integrable_multiset_sum' f m hm), ih hm]

/-- **`∫ log |P| dμ = s log |a| + ∑_ρ U(ρ)`.** -/
theorem integral_log_evR_eq (he : ∀ k < N, e k < e (k + 1)) (hG : ∀ k ≤ N, 0 ≤ G k) {s : ℝ}
    (hs : ∑ k ∈ Finset.range N, (e (k + 1) - e k) * (G k + G (k + 1)) / 2 = s) {P : ℤ[X]} (hP : P ≠ 0) :
    ∫ x, Real.log |evR P x| * pwLin N e G x =
      s * Real.log |(P.leadingCoeff : ℝ)| + ((toC P).roots.map (potC N e G)).sum := by
  have _hG := hG
  set m := (toC P).roots with hm
  have hinj : Function.Injective (Int.castRingHom ℂ) := Int.cast_injective
  have hlc : (toC P).leadingCoeff = ((P.leadingCoeff : ℤ) : ℂ) := leadingCoeff_map_of_injective hinj P
  have hfac : toC P = Polynomial.C ((P.leadingCoeff : ℤ) : ℂ) * (m.map (fun a => X - Polynomial.C a)).prod := by
    rw [← hlc]
    exact (C_leadingCoeff_mul_prod_multiset_X_sub_C IsAlgClosed.card_roots_eq_natDegree).symm
  -- pointwise, off the roots
  have hpt : ∀ x : ℝ, (x : ℂ) ∉ m → Real.log |evR P x| =
      Real.log |(P.leadingCoeff : ℝ)| + (m.map (fun ρ => Real.log ‖(x : ℂ) - ρ‖)).sum := by
    intro x hx
    have hev : (toC P).eval (x : ℂ) = ((P.leadingCoeff : ℤ) : ℂ) * (m.map (fun ρ => (x : ℂ) - ρ)).prod := by
      conv_lhs => rw [hfac]
      rw [eval_mul, eval_C, eval_multiset_prod, Multiset.map_map]
      congr 1
      refine congrArg Multiset.prod (Multiset.map_congr rfl (fun a _ => ?_))
      simp
    have hlc0 : ((P.leadingCoeff : ℤ) : ℂ) ≠ 0 := by
      exact_mod_cast (leadingCoeff_ne_zero.mpr hP)
    have hne : ∀ ρ ∈ m, (x : ℂ) ≠ ρ := fun ρ hρ h => hx (h ▸ hρ)
    have hprod : (m.map (fun ρ => (x : ℂ) - ρ)).prod ≠ 0 := by
      intro h0
      rw [Multiset.prod_eq_zero_iff] at h0
      obtain ⟨ρ, hρ, h⟩ := Multiset.mem_map.mp h0
      exact hne ρ hρ (sub_eq_zero.mp h)
    rw [abs_evR_eq, hev, norm_mul, Real.log_mul (norm_ne_zero_iff.mpr hlc0) (norm_ne_zero_iff.mpr hprod),
      log_norm_multiset_prod _ m hne, Complex.norm_intCast]
  -- the exceptional set is finite
  have hfin : {x : ℝ | (x : ℂ) ∈ m}.Finite := by
    have : {x : ℝ | (x : ℂ) ∈ m} = (fun x : ℝ => (x : ℂ)) ⁻¹' (m.toFinset : Set ℂ) := by
      ext x
      simp
    rw [this]
    exact (m.toFinset.finite_toSet).preimage (fun a _ b _ h => Complex.ofReal_injective h)
  have hae : (fun x => Real.log |evR P x| * pwLin N e G x) =ᵐ[volume]
      (fun x => Real.log |(P.leadingCoeff : ℝ)| * pwLin N e G x +
        (m.map (fun ρ => Real.log ‖(x : ℂ) - ρ‖ * pwLin N e G x)).sum) := by
    have hnull : volume {x : ℝ | (x : ℂ) ∈ m} = 0 := hfin.measure_zero volume
    rw [Filter.EventuallyEq, ae_iff]
    refine measure_mono_null (fun x hx => ?_) hnull
    simp only [Set.mem_ofPred_eq] at hx ⊢
    by_contra hxm
    apply hx
    rw [hpt x hxm, add_mul, Multiset.sum_map_mul_right]
  have hint : ∀ ρ ∈ m, Integrable (fun x : ℝ => Real.log ‖(x : ℂ) - ρ‖ * pwLin N e G x) := by
    intro ρ _
    have h := integrable_log_norm_mul_pwLin (G := G) he ρ
    refine h.congr (Eventually.of_forall (fun x => ?_))
    simp only
    rw [norm_sub_rev]
  rw [integral_congr_ae hae, integral_add ((integrable_pwLin N e G).const_mul _)
      (integrable_multiset_sum' (fun ρ x => Real.log ‖(x : ℂ) - ρ‖ * pwLin N e G x) m hint),
    integral_const_mul, integral_pwLin he, hs,
    integral_multiset_sum' (fun ρ x => Real.log ‖(x : ℂ) - ρ‖ * pwLin N e G x) m hint]
  congr 1
  · ring
  · congr 1
    refine Multiset.map_congr rfl (fun ρ _ => ?_)
    unfold potC
    congr 1
    funext y
    rw [norm_sub_rev]


/-! ## Step 1: tools -/

/-- The segment `[e₀, e_N] ⊆ ℂ` carrying `μ`. -/
def segC (N : ℕ) (e : ℕ → ℝ) : Set ℂ := (fun x : ℝ => (x : ℂ)) '' Icc (e 0) (e N)

theorem isCompact_segC (N : ℕ) (e : ℕ → ℝ) : IsCompact (segC N e) :=
  isCompact_Icc.image Complex.continuous_ofReal

theorem pwLin_eq_zero_of_notMem_Icc (he : ∀ k < N, e k < e (k + 1)) {y : ℝ} (hy : y ∉ Icc (e 0) (e N)) :
    pwLin N e G y = 0 := by
  apply pwLin_eq_zero_of_notMem he
  rw [mem_Icc, not_and_or, not_le, not_le] at hy
  rcases hy with hy | hy
  · exact Or.inl hy
  · exact Or.inr hy.le

/-- The closed form of the potential on `ℝ`, as a function. -/
noncomputable def cfU (N : ℕ) (e G : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑ i ∈ Finset.range (N + 1), slopeJump N e G i * Hk (e i - x)

theorem continuous_cfU (N : ℕ) (e G : ℕ → ℝ) : Continuous (cfU N e G) := by
  unfold cfU
  exact continuous_finsetSum _ (fun i _ =>
    continuous_const.mul (continuous_Hk.comp (continuous_const.sub continuous_id)))

/-- `U(z) ≥ U(Re z)`: moving off the real axis increases every `log |z - y|`. -/
theorem potC_re_le (he : ∀ k < N, e k < e (k + 1)) (hG : ∀ k ≤ N, 0 ≤ G k) (z : ℂ) :
    potC N e G (z.re : ℂ) ≤ potC N e G z := by
  unfold potC
  apply integral_mono_ae (integrable_log_norm_mul_pwLin he _) (integrable_log_norm_mul_pwLin he _)
  have hae : ∀ᵐ y ∂(volume : Measure ℝ), y ≠ z.re := by
    rw [ae_iff]
    simp only [ne_eq, not_not]
    have : {a : ℝ | a = z.re} = {z.re} := by ext a; simp
    rw [this]
    exact measure_singleton _
  filter_upwards [hae] with y hy
  apply mul_le_mul_of_nonneg_right _ (pwLin_nonneg hG y)
  rw [norm_ofReal_sub_ofReal]
  apply Real.log_le_log (abs_pos.mpr (sub_ne_zero.mpr hy.symm))
  calc |z.re - y| = |(z - (y : ℂ)).re| := by simp
    _ ≤ ‖z - (y : ℂ)‖ := Complex.abs_re_le_norm _

theorem cfU_re_le_potC (he : ∀ k < N, e k < e (k + 1)) (hG : ∀ k ≤ N, 0 ≤ G k) (hG0 : G 0 = 0)
    (hGN : G N = 0) (z : ℂ) : cfU N e G z.re ≤ potC N e G z := by
  have h := potC_re_le he hG z
  rwa [potC_ofReal he hG0 hGN] at h

/-- A positive lower bound for `‖z - y‖`, `y ∈ [e₀, e_N]`, for `z` off the segment. -/
theorem exists_dist_segC (he : ∀ k < N, e k < e (k + 1)) {z : ℂ} (hz : z ∉ segC N e) :
    ∃ δ > 0, ∀ y ∈ Icc (e 0) (e N), δ ≤ ‖z - (y : ℂ)‖ := by
  have hle : e 0 ≤ e N := nodes_mono he (Nat.zero_le N) le_rfl
  obtain ⟨y0, hy0, hmin⟩ := isCompact_Icc.exists_isMinOn (nonempty_Icc.mpr hle)
    (f := fun y : ℝ => ‖z - (y : ℂ)‖) (by fun_prop)
  refine ⟨‖z - (y0 : ℂ)‖, ?_, fun y hy => hmin hy⟩
  show 0 < ‖z - (y0 : ℂ)‖
  rw [norm_pos_iff, sub_ne_zero]
  intro h
  exact hz ⟨y0, hy0, h.symm⟩

/-- `|log t| ≤ max |log δ| |log M|` for `δ ≤ t ≤ M`, `0 < δ`. -/
theorem abs_log_le_of_mem {δ M t : ℝ} (hδ : 0 < δ) (h1 : δ ≤ t) (h2 : t ≤ M) :
    |Real.log t| ≤ max |Real.log δ| |Real.log M| := by
  have ht : 0 < t := lt_of_lt_of_le hδ h1
  have l1 := Real.log_le_log hδ h1
  have l2 := Real.log_le_log ht h2
  rcases le_total 0 (Real.log t) with h | h
  · rw [abs_of_nonneg h]
    exact le_trans (le_trans l2 (le_abs_self _)) (le_max_right _ _)
  · rw [abs_of_nonpos h]
    exact le_trans (le_trans (neg_le_neg l1) (neg_le_abs _)) (le_max_left _ _)

/-- `U` is continuous off the segment. -/
theorem continuousAt_potC (he : ∀ k < N, e k < e (k + 1)) {z0 : ℂ} (hz0 : z0 ∉ segC N e) :
    ContinuousAt (potC N e G) z0 := by
  obtain ⟨δ, hδ, hdist⟩ := exists_dist_segC he hz0
  set E : ℝ := |e 0| + |e N| with hE
  set M : ℝ := ‖z0‖ + δ + E with hM
  set K : ℝ := max |Real.log (δ / 2)| |Real.log M| with hK
  have hyE : ∀ y ∈ Icc (e 0) (e N), |y| ≤ E := by
    intro y hy
    rw [hE, abs_le]
    constructor
    · linarith [neg_abs_le (e 0), abs_nonneg (e N), hy.1]
    · linarith [le_abs_self (e N), abs_nonneg (e 0), hy.2]
  unfold potC
  apply continuousAt_of_dominated (bound := fun y => K * |pwLin N e G y|)
  · exact Eventually.of_forall (fun z => (integrable_log_norm_mul_pwLin he z).aestronglyMeasurable)
  · filter_upwards [ball_mem_nhds z0 (half_pos hδ)] with z hz
    refine Eventually.of_forall (fun y => ?_)
    rw [Real.norm_eq_abs, abs_mul]
    by_cases hy : y ∈ Icc (e 0) (e N)
    · apply mul_le_mul_of_nonneg_right _ (abs_nonneg _)
      rw [mem_ball, dist_eq_norm] at hz
      have h1 : δ / 2 ≤ ‖z - (y : ℂ)‖ := by
        have := hdist y hy
        have h3 : ‖z0 - (y : ℂ)‖ ≤ ‖z - (y : ℂ)‖ + ‖z - z0‖ := by
          calc ‖z0 - (y : ℂ)‖ = ‖(z - (y : ℂ)) - (z - z0)‖ := by ring_nf
            _ ≤ ‖z - (y : ℂ)‖ + ‖z - z0‖ := norm_sub_le _ _
        linarith
      have h2 : ‖z - (y : ℂ)‖ ≤ M := by
        have h4 : ‖z‖ ≤ ‖z0‖ + δ := by
          have := norm_le_norm_add_norm_sub' z z0
          have : ‖z - z0‖ ≤ δ := by linarith
          linarith [norm_le_norm_add_norm_sub' z z0]
        have h5 : ‖(y : ℂ)‖ ≤ E := by rw [Complex.norm_real, Real.norm_eq_abs]; exact hyE y hy
        calc ‖z - (y : ℂ)‖ ≤ ‖z‖ + ‖(y : ℂ)‖ := norm_sub_le _ _
          _ ≤ M := by rw [hM]; linarith
      exact abs_log_le_of_mem (half_pos hδ) h1 h2
    · rw [pwLin_eq_zero_of_notMem_Icc he hy]
      simp
  · exact (integrable_pwLin N e G).abs.const_mul K
  · refine Eventually.of_forall (fun y => ?_)
    by_cases hy : y ∈ Icc (e 0) (e N)
    · have hne : z0 - (y : ℂ) ≠ 0 := by
        have := hdist y hy
        intro h0
        rw [h0, norm_zero] at this
        linarith
      exact ((continuous_norm.comp (continuous_id.sub continuous_const)).continuousAt.log
        (norm_ne_zero_iff.mpr hne)).mul continuousAt_const
    · simp only [pwLin_eq_zero_of_notMem_Icc he hy, mul_zero]
      exact continuousAt_const

/-- `U(z) ≥ s log (|z| - X)` for `|z| > X ≥ e_N`, `e₀ ≥ 0`. -/
theorem potC_ge_log (he : ∀ k < N, e k < e (k + 1)) (hG : ∀ k ≤ N, 0 ≤ G k) (he0 : 0 ≤ e 0) {X : ℝ}
    (heX : e N ≤ X) {s : ℝ} (hs : ∑ k ∈ Finset.range N, (e (k + 1) - e k) * (G k + G (k + 1)) / 2 = s)
    {z : ℂ} (hz : X < ‖z‖) : s * Real.log (‖z‖ - X) ≤ potC N e G z := by
  have hint : ∫ y, Real.log (‖z‖ - X) * pwLin N e G y = s * Real.log (‖z‖ - X) := by
    rw [integral_const_mul, integral_pwLin he, hs, mul_comm]
  rw [← hint]
  unfold potC
  apply integral_mono ((integrable_pwLin N e G).const_mul _) (integrable_log_norm_mul_pwLin he z)
  intro y
  by_cases hy : y ∈ Icc (e 0) (e N)
  · apply mul_le_mul_of_nonneg_right _ (pwLin_nonneg hG y)
    have hy0 : 0 ≤ y := le_trans he0 hy.1
    have hyX : y ≤ X := le_trans hy.2 heX
    have h1 : ‖z‖ - X ≤ ‖z - (y : ℂ)‖ := by
      have := norm_sub_norm_le z (y : ℂ)
      rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hy0] at this
      linarith
    exact Real.log_le_log (by linarith) h1
  · simp only [pwLin_eq_zero_of_notMem_Icc he hy, mul_zero, le_refl]

/-- `log |P(z)| ≤ deg P · log |z| + log (∑ |aᵢ| + 1)` for `|z| ≥ 1`. -/
theorem log_norm_eval_le (P : ℤ[X]) {z : ℂ} (hz : 1 ≤ ‖z‖) :
    Real.log ‖(toC P).eval z‖ ≤ P.natDegree * Real.log ‖z‖ +
      Real.log (∑ i ∈ Finset.range (P.natDegree + 1), |(P.coeff i : ℝ)| + 1) := by
  set C : ℝ := ∑ i ∈ Finset.range (P.natDegree + 1), |(P.coeff i : ℝ)| + 1 with hC
  have hC1 : 1 ≤ C := by
    rw [hC]
    have := Finset.sum_nonneg (fun i (_ : i ∈ Finset.range (P.natDegree + 1)) => abs_nonneg ((P.coeff i : ℝ)))
    linarith
  have hz0 : 0 < ‖z‖ := lt_of_lt_of_le one_pos hz
  have hlz : 0 ≤ Real.log ‖z‖ := Real.log_nonneg hz
  have hinj : Function.Injective (Int.castRingHom ℂ) := Int.cast_injective
  have hbound : ‖(toC P).eval z‖ ≤ C * ‖z‖ ^ P.natDegree := by
    rw [eval_eq_sum_range, natDegree_map_eq_of_injective hinj]
    calc ‖∑ i ∈ Finset.range (P.natDegree + 1), (toC P).coeff i * z ^ i‖
        ≤ ∑ i ∈ Finset.range (P.natDegree + 1), ‖(toC P).coeff i * z ^ i‖ := norm_sum_le _ _
      _ ≤ ∑ i ∈ Finset.range (P.natDegree + 1), |(P.coeff i : ℝ)| * ‖z‖ ^ P.natDegree := by
          apply Finset.sum_le_sum
          intro i hi
          have hi' : i ≤ P.natDegree := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
          rw [norm_mul, norm_pow, coeff_map, eq_intCast, Complex.norm_intCast]
          exact mul_le_mul_of_nonneg_left (pow_le_pow_right₀ hz hi') (abs_nonneg _)
      _ = (C - 1) * ‖z‖ ^ P.natDegree := by rw [← Finset.sum_mul, hC]; ring
      _ ≤ C * ‖z‖ ^ P.natDegree := by
          have := pow_nonneg hz0.le P.natDegree
          nlinarith
  rcases eq_or_ne ((toC P).eval z) 0 with h0 | h0
  · rw [h0, norm_zero, Real.log_zero]
    have := Real.log_nonneg hC1
    positivity
  · have hpos : 0 < ‖(toC P).eval z‖ := norm_pos_iff.mpr h0
    have h1 := Real.log_le_log hpos hbound
    rw [Real.log_mul (by linarith) (pow_ne_zero _ hz0.ne'), Real.log_pow] at h1
    linarith

/-- The mean-value property of `log |P|` on a disc without zeros of `P`. -/
theorem circleAverage_log_norm_eval {P : ℂ[X]} {c : ℂ} {r : ℝ} (hr : 0 < r)
    (hroots : ∀ z ∈ closedBall c r, P.eval z ≠ 0) :
    Real.circleAverage (fun z => Real.log ‖P.eval z‖) c r = Real.log ‖P.eval c‖ := by
  apply InnerProductSpace.HarmonicOnNhd.circleAverage_eq
  intro z hz
  rw [abs_of_pos hr] at hz
  exact (P.differentiable.analyticAt z).harmonicAt_log_norm (hroots z hz)


/-- `∫₀^{2π} log |c + r e^{iθ} - a| dθ = 2π log |c - a|` for `|c - a| > r > 0`. -/
theorem integral_log_norm_circleMap {c a : ℂ} {r : ℝ} (hr : 0 < r) (hca : r < ‖c - a‖) :
    ∫ θ in Ioc 0 (2 * Real.pi), Real.log ‖circleMap c r θ - a‖ = 2 * Real.pi * Real.log ‖c - a‖ := by
  have h := circleAverage_log_norm_sub_const_eq_log_radius_add_posLog (a := a) (c := c) hr.ne'
  have hge : 1 ≤ |r⁻¹ * ‖c - a‖| := by
    rw [abs_of_nonneg (by positivity), ← div_eq_inv_mul, le_div_iff₀ hr, one_mul]
    exact hca.le
  rw [Real.posLog_eq_log hge, Real.log_mul (inv_ne_zero hr.ne') (by linarith), Real.log_inv,
    Real.circleAverage_def, smul_eq_mul] at h
  rw [← intervalIntegral.integral_of_le (by positivity)]
  have hpi : (0 : ℝ) < 2 * Real.pi := by positivity
  field_simp at h
  linarith

/-- **The mean-value property of `U`** on a closed disc that does not meet the segment. -/
theorem circleAverage_potC (he : ∀ k < N, e k < e (k + 1)) {c : ℂ} {r : ℝ} (hr : 0 < r)
    (hball : ∀ z ∈ closedBall c r, z ∉ segC N e) :
    Real.circleAverage (potC N e G) c r = potC N e G c := by
  have hle : e 0 ≤ e N := nodes_mono he (Nat.zero_le N) le_rfl
  obtain ⟨y0, hy0, hmin⟩ := isCompact_Icc.exists_isMinOn (nonempty_Icc.mpr hle)
    (f := fun y : ℝ => ‖c - (y : ℂ)‖) (by fun_prop)
  have hr0 : r < ‖c - (y0 : ℂ)‖ := by
    by_contra hcon
    push Not at hcon
    exact hball (y0 : ℂ) (by rw [mem_closedBall, dist_comm, dist_eq_norm]; exact hcon) ⟨y0, hy0, rfl⟩
  set δ : ℝ := ‖c - (y0 : ℂ)‖ - r with hδ
  have hδpos : 0 < δ := by linarith
  have hcy : ∀ y ∈ Icc (e 0) (e N), r + δ ≤ ‖c - (y : ℂ)‖ := fun y hy => by
    have := hmin hy
    simp only [Set.mem_ofPred_eq] at this
    linarith
  set E : ℝ := |e 0| + |e N| with hE
  have hyE : ∀ y ∈ Icc (e 0) (e N), |y| ≤ E := by
    intro y hy
    rw [hE, abs_le]
    constructor
    · linarith [neg_abs_le (e 0), abs_nonneg (e N), hy.1]
    · linarith [le_abs_self (e N), abs_nonneg (e 0), hy.2]
  set M : ℝ := ‖c‖ + r + E with hM
  set K : ℝ := max |Real.log δ| |Real.log M| with hK
  have hcirc : ∀ θ : ℝ, ‖circleMap c r θ - c‖ = r := fun θ => by
    rw [circleMap_sub_center, norm_circleMap_zero, abs_of_pos hr]
  have hbound : ∀ θ : ℝ, ∀ y ∈ Icc (e 0) (e N), |Real.log ‖circleMap c r θ - (y : ℂ)‖| ≤ K := by
    intro θ y hy
    have h1 : δ ≤ ‖circleMap c r θ - (y : ℂ)‖ := by
      have h3 : ‖c - (y : ℂ)‖ ≤ ‖circleMap c r θ - (y : ℂ)‖ + ‖circleMap c r θ - c‖ := by
        calc ‖c - (y : ℂ)‖ = ‖(circleMap c r θ - (y : ℂ)) - (circleMap c r θ - c)‖ := by ring_nf
          _ ≤ _ := norm_sub_le _ _
      have := hcy y hy
      rw [hcirc] at h3
      linarith
    have h2 : ‖circleMap c r θ - (y : ℂ)‖ ≤ M := by
      have h4 : ‖circleMap c r θ‖ ≤ ‖c‖ + r := by
        have := norm_le_norm_add_norm_sub' (circleMap c r θ) c
        rw [hcirc] at this
        exact this
      have h5 : ‖(y : ℂ)‖ ≤ E := by rw [Complex.norm_real, Real.norm_eq_abs]; exact hyE y hy
      calc ‖circleMap c r θ - (y : ℂ)‖ ≤ ‖circleMap c r θ‖ + ‖(y : ℂ)‖ := norm_sub_le _ _
        _ ≤ M := by rw [hM]; linarith
    exact abs_log_le_of_mem hδpos h1 h2
  set F : ℝ → ℝ → ℝ := fun θ y => Real.log ‖circleMap c r θ - (y : ℂ)‖ * pwLin N e G y with hF
  have hFmeas : Measurable (Function.uncurry F) := by
    apply Measurable.mul
    · exact Real.measurable_log.comp (measurable_norm.comp
        (((continuous_circleMap c r).measurable.comp measurable_fst).sub
          (Complex.measurable_ofReal.comp measurable_snd)))
    · exact (measurable_pwLin N e G).comp measurable_snd
  have hFint : Integrable (Function.uncurry F) ((volume.restrict (Ioc 0 (2 * Real.pi))).prod volume) := by
    refine Integrable.mono' ((integrable_const K).mul_prod (integrable_pwLin N e G).abs)
      hFmeas.aestronglyMeasurable (Eventually.of_forall (fun p => ?_))
    obtain ⟨θ, y⟩ := p
    simp only [Function.uncurry_apply_pair, hF, Real.norm_eq_abs, abs_mul]
    by_cases hy : y ∈ Icc (e 0) (e N)
    · exact mul_le_mul_of_nonneg_right (hbound θ y hy) (abs_nonneg _)
    · rw [pwLin_eq_zero_of_notMem_Icc he hy]
      simp
  have hinner : ∀ y : ℝ, ∫ θ in Ioc 0 (2 * Real.pi), F θ y =
      2 * Real.pi * (Real.log ‖c - (y : ℂ)‖ * pwLin N e G y) := by
    intro y
    simp only [hF]
    rw [integral_mul_const]
    by_cases hy : y ∈ Icc (e 0) (e N)
    · rw [integral_log_norm_circleMap hr (by linarith [hcy y hy])]
      ring
    · rw [pwLin_eq_zero_of_notMem_Icc he hy]
      ring
  rw [Real.circleAverage_def, smul_eq_mul, intervalIntegral.integral_of_le (by positivity)]
  have hswap := integral_integral_swap hFint
  have hU : ∀ θ : ℝ, potC N e G (circleMap c r θ) = ∫ y, F θ y := fun θ => rfl
  simp_rw [hU]
  rw [hswap]
  simp_rw [hinner]
  rw [integral_const_mul]
  have hpi : (0 : ℝ) < 2 * Real.pi := by positivity
  field_simp
  rfl


/-! ## Step 1: the minimum principle -/

section step1

variable {J : ℕ} {Q : Fin J → ℤ[X]} {b : Fin J → ℝ} {s X : ℝ}

/-- The domain of the minimum principle: `ℂ` minus the segment and the zeros of the weighted `Qⱼ`. -/
def OmegaUp (Q : Fin J → ℤ[X]) (b : Fin J → ℝ) (N : ℕ) (e : ℕ → ℝ) : Set ℂ :=
  (segC N e)ᶜ ∩ ⋂ j, {z | 0 < b j → eval z (toC (Q j)) ≠ 0}

theorem isOpen_OmegaUp : IsOpen (OmegaUp Q b N e) := by
  apply IsOpen.inter (isCompact_segC N e).isClosed.isOpen_compl
  apply isOpen_iInter_of_finite
  intro j
  by_cases hb : 0 < b j
  · have : {z : ℂ | 0 < b j → eval z (toC (Q j)) ≠ 0} = {z | eval z (toC (Q j)) ≠ 0} := by
      ext z
      simp [hb]
    rw [this]
    exact isOpen_ne_fun (Polynomial.continuous _) continuous_const
  · have : {z : ℂ | 0 < b j → eval z (toC (Q j)) ≠ 0} = univ := by
      ext z
      simp [hb]
    rw [this]
    exact isOpen_univ

theorem continuousAt_term {j : Fin J} (hb : 0 ≤ b j) {z : ℂ} (hz : 0 < b j → eval z (toC (Q j)) ≠ 0) :
    ContinuousAt (fun w => b j * Real.log ‖eval w (toC (Q j))‖) z := by
  rcases hb.eq_or_lt with h0 | hpos
  · simp only [← h0, zero_mul]
    exact continuousAt_const
  · exact continuousAt_const.mul ((continuous_norm.comp (Polynomial.continuous _)).continuousAt.log
      (norm_ne_zero_iff.mpr (hz hpos)))

theorem continuousAt_sum_terms (hb : ∀ j, 0 ≤ b j) {z : ℂ} (hz : ∀ j, 0 < b j → eval z (toC (Q j)) ≠ 0) :
    ContinuousAt (fun w => ∑ j, b j * Real.log ‖eval w (toC (Q j))‖) z :=
  tendsto_finsetSum _ (fun j _ => continuousAt_term (hb j) (hz j))

/-- **Step 1 of Lemma 2.1 of the paper**: `h = U - ∑ bⱼ log |Qⱼ| ≥ 0` on `ℂ` off the zeros of the weighted `Qⱼ`. -/
theorem UpCertHyp.hUp_nonneg (h : UpCertHyp Q b N e G s X) :
    ∀ z : ℂ, (∀ j, 0 < b j → eval z (toC (Q j)) ≠ 0) → 0 ≤ hUp Q b N e G z := by
  have he := h.nodes
  have hG := h.G_nonneg
  have hG0 := h.G_first
  have hGN := h.G_last
  have hb := h.b_nonneg
  have hle : e 0 ≤ e N := nodes_mono he (Nat.zero_le N) le_rfl
  -- the lower bound `φ(z) = U(Re z) - ∑ bⱼ log |Qⱼ(z)| ≤ h(z)`
  have hphi : ∀ z : ℂ, cfU N e G z.re - ∑ j, b j * Real.log ‖eval z (toC (Q j))‖ ≤ hUp Q b N e G z := by
    intro z
    unfold hUp
    linarith [cfU_re_le_potC he hG hG0 hGN z]
  -- the segment: (C3)
  have hseg : ∀ x ∈ Icc (e 0) (e N), (∀ j, 0 < b j → eval (x : ℂ) (toC (Q j)) ≠ 0) →
      0 ≤ cfU N e G x - ∑ j, b j * Real.log ‖eval (x : ℂ) (toC (Q j))‖ := by
    intro x hx hQ
    have hQ' : ∀ j, 0 < b j → evR (Q j) x ≠ 0 := fun j hj h0 =>
      hQ j hj (by rw [toC_eval_ofReal, h0, Complex.ofReal_zero])
    have h3 := h.C3 x hx hQ'
    simp_rw [abs_evR_eq] at h3
    exact h3
  intro z hz
  by_cases hzs : z ∈ segC N e
  · obtain ⟨x, hx, rfl⟩ := hzs
    have h1 := hseg x hx hz
    have h2 := hphi (x : ℂ)
    rw [Complex.ofReal_re] at h2
    linarith
  -- the minimum principle on `Ω`
  have hΩ : IsOpen (OmegaUp Q b N e) := isOpen_OmegaUp
  have hne : (OmegaUp Q b N e)ᶜ.Nonempty :=
    ⟨(e 0 : ℂ), fun hmem => hmem.1 ⟨e 0, ⟨le_rfl, hle⟩, rfl⟩⟩
  have hzΩ : z ∈ OmegaUp Q b N e := ⟨hzs, mem_iInter.mpr hz⟩
  refine AuxCommon.Energy.nonneg_of_superMean (h := hUp Q b N e G) hΩ hne ?_ ?_ ?_ ?_ z hzΩ
  · -- continuity on `Ω`
    intro w hw
    have hw2 : ∀ j, 0 < b j → eval w (toC (Q j)) ≠ 0 := mem_iInter.mp hw.2
    exact ((continuousAt_potC he hw.1).sub (continuousAt_sum_terms hb hw2)).continuousWithinAt
  · -- the mean-value property (with equality)
    intro c r hr hball
    have hseg' : ∀ w ∈ closedBall c r, w ∉ segC N e := fun w hw => (hball hw).1
    have hroot : ∀ w ∈ closedBall c r, ∀ j, 0 < b j → eval w (toC (Q j)) ≠ 0 :=
      fun w hw => mem_iInter.mp (hball hw).2
    have hci1 : CircleIntegrable (potC N e G) c r := by
      apply ContinuousOn.circleIntegrable hr.le
      intro w hw
      exact (continuousAt_potC he (hseg' w (sphere_subset_closedBall hw))).continuousWithinAt
    have hci2 : ∀ j ∈ (Finset.univ : Finset (Fin J)),
        CircleIntegrable (fun w => b j * Real.log ‖eval w (toC (Q j))‖) c r := by
      intro j _
      have hmero : MeromorphicOn (fun w => eval w (toC (Q j))) (sphere c |r|) :=
        fun w _ => ((toC (Q j)).differentiable.analyticAt w).meromorphicAt
      exact (MeromorphicOn.circleIntegrable_log_norm hmero).const_smul (a := b j)
    have hsumci : CircleIntegrable (fun w => ∑ j, b j * Real.log ‖eval w (toC (Q j))‖) c r :=
      CircleIntegrable.fun_sum _ hci2
    have hav : Real.circleAverage (hUp Q b N e G) c r = hUp Q b N e G c := by
      unfold hUp
      rw [Real.circleAverage_fun_sub hci1 hsumci, Real.circleAverage_fun_sum hci2,
        circleAverage_potC he hr hseg']
      congr 1
      refine Finset.sum_congr rfl (fun j _ => ?_)
      rcases (hb j).eq_or_lt with h0 | hpos
      · simp [← h0, Real.circleAverage_const]
      · have hsm := Real.circleAverage_fun_smul (c := c) (R := r) (a := b j)
          (f := fun w => Real.log ‖eval w (toC (Q j))‖)
        simp only [smul_eq_mul] at hsm
        rw [hsm, circleAverage_log_norm_eval hr (fun w hw => hroot w hw j hpos)]
    exact hav.le
  · -- the boundary of `Ω`
    intro ζ hζ c0 hc0
    by_cases hroot : ∃ j0, 0 < b j0 ∧ eval ζ (toC (Q j0)) = 0
    · obtain ⟨j0, hj0, hζ0⟩ := hroot
      set m : ℝ := cfU N e G ζ.re - 1 with hmdef
      have hcf : ContinuousAt (fun z : ℂ => cfU N e G z.re) ζ :=
        ((continuous_cfU N e G).comp Complex.continuous_re).continuousAt
      have hm : ∀ᶠ z in 𝓝 ζ, m < cfU N e G z.re :=
        continuousAt_const.eventually_lt hcf (by rw [hmdef]; linarith)
      set L : Fin J → ℝ := fun j => Real.log (‖eval ζ (toC (Q j))‖ + 1) with hLdef
      have hL0 : ∀ j, 0 ≤ L j := fun j =>
        Real.log_nonneg (by linarith [norm_nonneg (eval ζ (toC (Q j)))])
      have hLj : ∀ j, ∀ᶠ z in 𝓝 ζ, Real.log ‖eval z (toC (Q j))‖ ≤ L j := by
        intro j
        have hc : ContinuousAt (fun z => ‖eval z (toC (Q j))‖) ζ :=
          (continuous_norm.comp (Polynomial.continuous _)).continuousAt
        filter_upwards [hc.eventually_lt continuousAt_const (lt_add_one _)] with z hz'
        rcases eq_or_ne (eval z (toC (Q j))) 0 with h0 | h0
        · rw [h0, norm_zero, Real.log_zero]
          exact hL0 j
        · exact Real.log_le_log (norm_pos_iff.mpr h0) hz'.le
      set S : ℝ := ∑ j, b j * L j with hSdef
      have hS0 : 0 ≤ S := Finset.sum_nonneg (fun j _ => mul_nonneg (hb j) (hL0 j))
      set T : ℝ := (|m| + S + |c0| + 1) / b j0 with hTdef
      have hbT : b j0 * T = |m| + S + |c0| + 1 := by
        rw [hTdef]
        field_simp
      have hj0near : ∀ᶠ z in 𝓝 ζ, ‖eval z (toC (Q j0))‖ < Real.exp (-T) := by
        have hc : ContinuousAt (fun z => ‖eval z (toC (Q j0))‖) ζ :=
          (continuous_norm.comp (Polynomial.continuous _)).continuousAt
        exact hc.eventually_lt continuousAt_const (by rw [hζ0, norm_zero]; exact Real.exp_pos _)
      filter_upwards [hm, eventually_all.mpr hLj, hj0near] with z hzm hzL hz0 hzΩ'
      have hzne : eval z (toC (Q j0)) ≠ 0 := mem_iInter.mp hzΩ'.2 j0 hj0
      have hlog0 : Real.log ‖eval z (toC (Q j0))‖ < -T := by
        have := Real.log_lt_log (norm_pos_iff.mpr hzne) hz0
        rwa [Real.log_exp] at this
      have hterm : ∀ j ∈ (Finset.univ : Finset (Fin J)), b j * Real.log ‖eval z (toC (Q j))‖ ≤
          b j * L j - (if j = j0 then b j0 * (L j0 + T) else 0) := by
        intro j _
        by_cases hj : j = j0
        · subst hj
          simp only [ite_true]
          have := mul_le_mul_of_nonneg_left hlog0.le (hb j)
          linarith
        · simp only [hj, ite_false, sub_zero]
          exact mul_le_mul_of_nonneg_left (hzL j) (hb j)
      have hsum := Finset.sum_le_sum hterm
      rw [Finset.sum_sub_distrib, Finset.sum_ite_eq' Finset.univ j0, ite_eq_left (Finset.mem_univ _)] at hsum
      have hphiz := hphi z
      have hLj0 := mul_nonneg (hb j0) (hL0 j0)
      have hm' : -|m| ≤ m := neg_abs_le m
      have hc0' : c0 ≤ |c0| := le_abs_self c0
      nlinarith
    · push Not at hroot
      have hζseg : ζ ∈ segC N e := by
        by_contra hns
        exact hζ ⟨hns, mem_iInter.mpr hroot⟩
      obtain ⟨x, hx, rfl⟩ := hζseg
      have hφ : ContinuousAt (fun z : ℂ => cfU N e G z.re - ∑ j, b j * Real.log ‖eval z (toC (Q j))‖) (x : ℂ) :=
        ((continuous_cfU N e G).comp Complex.continuous_re).continuousAt.sub (continuousAt_sum_terms hb hroot)
      have h0 : c0 < cfU N e G (x : ℂ).re - ∑ j, b j * Real.log ‖eval (x : ℂ) (toC (Q j))‖ := by
        rw [Complex.ofReal_re]
        linarith [hseg x hx hroot]
      filter_upwards [continuousAt_const.eventually_lt hφ h0] with w hw _
      linarith [hphi w]
  · -- infinity
    intro c0 hc0
    set B : ℝ := ∑ j, b j * ((Q j).natDegree : ℝ) with hBdef
    have hB : B < s := h.C1
    set Cj : Fin J → ℝ := fun j => ∑ i ∈ Finset.range ((Q j).natDegree + 1), |((Q j).coeff i : ℝ)| + 1 with hCj
    set K : ℝ := ∑ j, b j * Real.log (Cj j) with hKdef
    have hX0 : 0 < X := by linarith [h.X_gt]
    refine ⟨max (2 * X) (Real.exp ((s * Real.log 2 + |K|) / (s - B))), fun w _ hR => ?_⟩
    have hR1 : 2 * X < ‖w‖ := lt_of_le_of_lt (le_max_left _ _) hR
    have hR2 : Real.exp ((s * Real.log 2 + |K|) / (s - B)) < ‖w‖ := lt_of_le_of_lt (le_max_right _ _) hR
    have hw1 : 1 ≤ ‖w‖ := by linarith [h.X_gt]
    have hwpos : 0 < ‖w‖ := by linarith
    have hU := potC_ge_log he hG h.e_first h.e_last h.mass (show X < ‖w‖ by linarith)
    have hlog2 : Real.log ‖w‖ - Real.log 2 ≤ Real.log (‖w‖ - X) := by
      rw [← Real.log_div hwpos.ne' (by norm_num)]
      exact Real.log_le_log (by positivity) (by linarith)
    have hQ : ∑ j, b j * Real.log ‖eval w (toC (Q j))‖ ≤ B * Real.log ‖w‖ + K := by
      rw [hBdef, hKdef, Finset.sum_mul, ← Finset.sum_add_distrib]
      apply Finset.sum_le_sum
      intro j _
      have h1 := mul_le_mul_of_nonneg_left (log_norm_eval_le (Q j) hw1) (hb j)
      have e1 : b j * (((Q j).natDegree : ℝ) * Real.log ‖w‖ + Real.log (Cj j)) =
          b j * ((Q j).natDegree : ℝ) * Real.log ‖w‖ + b j * Real.log (Cj j) := by ring
      rw [hCj] at e1
      simp only at e1 ⊢
      linarith
    have hsB : 0 < s - B := by linarith
    have hlogw : (s * Real.log 2 + |K|) / (s - B) < Real.log ‖w‖ := by
      rw [Real.lt_log_iff_exp_lt hwpos]
      exact hR2
    have key : s * Real.log 2 + |K| < (s - B) * Real.log ‖w‖ := by
      rw [div_lt_iff₀ hsB] at hlogw
      linarith
    have hs0 : 0 < s := h.mass_pos
    have hsl := mul_le_mul_of_nonneg_left hlog2 hs0.le
    have hK' : K ≤ |K| := le_abs_self K
    unfold hUp
    nlinarith

end step1

end TPUpper
