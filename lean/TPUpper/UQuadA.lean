import TPUpper.USoundC2
import TPUpper.Step1

/-!
# Real-analysis lemmas for the rigorous quadrature of `∫ log |Q| G` (condition (C2) for `Q_15`)

* `pwLin_eq_aff`, `integral_pwLin_piece`: on a node piece the density is affine, and its integral over a sub-interval
  is the trapezoid value;
* `integral_ge_of_ge`: a pointwise lower bound of `log |Q|` gives `∫ log |Q| G ≥ L ∫ G`;
* `integral_log_abs_sub_ge`: `∫_a^b log |t - ρ| dt ≥ w log (w/2) - w` for `ρ ∈ [a, b]`, `w = b - a`;
* `abs_ge_of_deriv_ge`: `|Q(t)| ≥ m |t - ρ|` near a root `ρ` where `|Q'| ≥ m`.
-/

open Polynomial Set MeasureTheory intervalIntegral

namespace TPUpper.Cert

open TPMahler

theorem pwLin_eq_aff {N : ℕ} {e G : ℕ → ℝ} (he : ∀ k < N, e k < e (k + 1)) {i : ℕ} (hi : i < N) {t : ℝ}
    (ht : e i ≤ t ∧ t < e (i + 1)) : pwLin N e G t = pwAff e G i t := by
  rw [pwLin_eq_sum_pwPiece, Finset.sum_eq_single i]
  · rw [pwPiece_eq_indicator, Set.indicator_of_mem (Set.mem_Ico.mpr ht)]
  · intro k hk hne
    exact pwPiece_eq_zero_of_ne he hi (Finset.mem_range.mp hk) (Ne.symm hne) ht
  · intro h; exact absurd (Finset.mem_range.mpr hi) h

/-- The integral of an affine function is the trapezoid value. -/
theorem integral_pwAff (e G : ℕ → ℝ) (i : ℕ) (a b : ℝ) (hne : e (i + 1) - e i ≠ 0) :
    ∫ t in a..b, pwAff e G i t = (b - a) * (pwAff e G i a + pwAff e G i b) / 2 := by
  have hf : pwAff e G i = fun t => (G i * e (i + 1) - G (i + 1) * e i) / (e (i + 1) - e i) +
      ((G (i + 1) - G i) / (e (i + 1) - e i)) * t := by
    funext t; unfold pwAff; field_simp; ring
  rw [hf]
  rw [intervalIntegral.integral_add intervalIntegrable_const (by exact (continuous_const.mul continuous_id).intervalIntegrable _ _)]
  rw [intervalIntegral.integral_const, intervalIntegral.integral_const_mul, integral_id]
  simp only [smul_eq_mul]
  field_simp
  ring

theorem integral_pwLin_piece {N : ℕ} {e G : ℕ → ℝ} (he : ∀ k < N, e k < e (k + 1)) {i : ℕ} (hi : i < N)
    {a b : ℝ} (ha : e i ≤ a) (hab : a ≤ b) (hb : b ≤ e (i + 1)) :
    ∫ t in a..b, pwLin N e G t = (b - a) * (pwAff e G i a + pwAff e G i b) / 2 := by
  have hne : e (i + 1) - e i ≠ 0 := by linarith [he i hi]
  rw [← integral_pwAff e G i a b hne]
  apply intervalIntegral.integral_congr_ae
  rw [uIoc_of_le hab]
  have : ∀ᵐ t ∂volume, t ≠ b := by
    simp [ae_iff, measure_singleton]
  filter_upwards [this] with t htb ht
  exact pwLin_eq_aff he hi ⟨by linarith [ht.1], lt_of_lt_of_le (lt_of_le_of_ne ht.2 htb) hb⟩

theorem pwAff_le_max {e G : ℕ → ℝ} {i : ℕ} (hlt : e i < e (i + 1)) {a b t : ℝ} (ha : e i ≤ a) (hb : b ≤ e (i + 1))
    (ht : t ∈ Icc a b) : pwAff e G i t ≤ max (pwAff e G i a) (pwAff e G i b) := by
  have hne : e (i + 1) - e i ≠ 0 := by linarith
  have hf : pwAff e G i = fun t => (G i * e (i + 1) - G (i + 1) * e i) / (e (i + 1) - e i) +
      ((G (i + 1) - G i) / (e (i + 1) - e i)) * t := by
    funext t; unfold pwAff; field_simp; ring
  rw [hf]
  simp only
  rcases le_total 0 ((G (i + 1) - G i) / (e (i + 1) - e i)) with hs | hs
  · exact le_max_of_le_right (by nlinarith [ht.2])
  · exact le_max_of_le_left (by nlinarith [ht.1])

/-- A pointwise lower bound of `f` on `[a, b]` against a nonnegative weight. -/
theorem integral_ge_of_ge {f g : ℝ → ℝ} {a b L : ℝ} (hab : a ≤ b) (hf : IntervalIntegrable (fun t => f t * g t) volume a b)
    (hg : IntervalIntegrable g volume a b) (hg0 : ∀ t ∈ Icc a b, 0 ≤ g t) (hL : ∀ t ∈ Icc a b, L ≤ f t) :
    L * ∫ t in a..b, g t ≤ ∫ t in a..b, f t * g t := by
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_mono_on hab (hg.const_mul L) hf
  intro t ht
  exact mul_le_mul_of_nonneg_right (hL t ht) (hg0 t ht)

/-- `∫_a^b log |t - ρ| dt ≥ w log (w/2) - w` for `ρ ∈ [a, b]`, `w = b - a`. -/
theorem integral_log_abs_sub_ge {a b ρ : ℝ} (ha : a ≤ ρ) (hb : ρ ≤ b) :
    (b - a) * Real.log ((b - a) / 2) - (b - a) ≤ ∫ t in a..b, Real.log |t - ρ| := by
  have hshift : ∫ t in a..b, Real.log |t - ρ| = ∫ u in (a - ρ)..(b - ρ), Real.log u := by
    rw [intervalIntegral.integral_comp_sub_right (fun u => Real.log |u|) ρ]
    simp only [Real.log_abs]
  rw [hshift, integral_log]
  set u1 := b - ρ with hu1
  set u2 := ρ - a with hu2
  have hu1n : 0 ≤ u1 := by linarith
  have hu2n : 0 ≤ u2 := by linarith
  have hneg : (a - ρ) * Real.log (a - ρ) = -(u2 * Real.log u2) := by
    rw [show a - ρ = -u2 by linarith, Real.log_neg_eq_log]; ring
  rw [hneg]
  -- convexity of `u log u`
  have hconv := Real.convexOn_mul_log.2 (show u1 ∈ Set.Ici (0 : ℝ) from hu1n) (show u2 ∈ Set.Ici (0 : ℝ) from hu2n)
    (show (0 : ℝ) ≤ 1 / 2 by norm_num) (show (0 : ℝ) ≤ 1 / 2 by norm_num) (by norm_num)
  simp only [smul_eq_mul] at hconv
  have hw : b - a = u1 + u2 := by linarith
  rw [hw]
  have e1 : 1 / 2 * u1 + 1 / 2 * u2 = (u1 + u2) / 2 := by ring
  rw [e1] at hconv
  nlinarith [hconv]

/-- Mean value theorem: `|f(t)| ≥ m |t - ρ|` on an interval containing the root `ρ` where `|f'| ≥ m`. -/
theorem abs_ge_of_deriv_ge {f f' : ℝ → ℝ} {a b ρ m : ℝ} (hd : ∀ t ∈ Icc a b, HasDerivAt f (f' t) t)
    (hm : ∀ t ∈ Icc a b, m ≤ |f' t|) (hρ : ρ ∈ Icc a b) (hf0 : f ρ = 0) :
    ∀ t ∈ Icc a b, m * |t - ρ| ≤ |f t| := by
  intro t ht
  rcases lt_trichotomy t ρ with h | h | h
  · obtain ⟨ξ, hξ, hξe⟩ := exists_hasDerivAt_eq_slope f f' h
      (fun x hx => (hd x ⟨by linarith [ht.1, hx.1], by linarith [hρ.2, hx.2]⟩).continuousAt.continuousWithinAt)
      (fun x hx => hd x ⟨by linarith [ht.1, hx.1], by linarith [hρ.2, hx.2]⟩)
    have hξI : ξ ∈ Icc a b := ⟨by linarith [ht.1, hξ.1], by linarith [hρ.2, hξ.2]⟩
    rw [hf0] at hξe
    have hne : ρ - t ≠ 0 := by linarith
    have : f t = -(f' ξ * (ρ - t)) := by field_simp at hξe; linarith
    rw [this, abs_neg, abs_mul, abs_sub_comm t ρ, abs_of_pos (by linarith : (0 : ℝ) < ρ - t)]
    exact mul_le_mul_of_nonneg_right (hm ξ hξI) (by linarith)
  · subst h; simp [hf0]
  · obtain ⟨ξ, hξ, hξe⟩ := exists_hasDerivAt_eq_slope f f' h
      (fun x hx => (hd x ⟨by linarith [hρ.1, hx.1], by linarith [ht.2, hx.2]⟩).continuousAt.continuousWithinAt)
      (fun x hx => hd x ⟨by linarith [hρ.1, hx.1], by linarith [ht.2, hx.2]⟩)
    have hξI : ξ ∈ Icc a b := ⟨by linarith [hρ.1, hξ.1], by linarith [ht.2, hξ.2]⟩
    rw [hf0] at hξe
    have hne : t - ρ ≠ 0 := by linarith
    have : f t = f' ξ * (t - ρ) := by field_simp at hξe; linarith
    rw [this, abs_mul, abs_of_pos (by linarith : (0 : ℝ) < t - ρ)]
    exact mul_le_mul_of_nonneg_right (hm ξ hξI) (by linarith)

end TPUpper.Cert
