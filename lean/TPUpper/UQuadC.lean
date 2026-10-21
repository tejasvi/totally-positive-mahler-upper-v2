import TPUpper.UQuadB

/-!
# Soundness of the quadrature checker `TUCore.quadOK`, part 2: one piece, the tiling, (C2) by quadrature
-/

open Polynomial Set MeasureTheory intervalIntegral

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPCore (P QS logT fdiv cdiv taylorR encl derivAsc evalAsc TAB L2)
open TPMahler.Cert (QR Qd fdiv_le le_cdiv logT_sound eval_eq_taylor encl_spec mem_Icc_v evalAsc_spec
  evalAscR evalAscR_zero Qd_cons_ne_zero)

/-- `evR (Qd l)` is the evaluation of `QR l`. -/
theorem evR_Qd (l : List Int) (x : ℝ) : evR (Qd l) x = (QR l).eval x := rfl

/-- Lower bound of `|·|` from a one-sided enclosure that excludes `0`. -/
theorem abs_ge_of_encl {lo hi : ℤ} {y : ℝ} (h1 : (lo : ℝ) ≤ y) (h2 : y ≤ hi) (hc : 0 < lo ∨ hi < 0) :
    ((min lo.natAbs hi.natAbs : ℕ) : ℝ) ≤ |y| ∧ 0 < min lo.natAbs hi.natAbs := by
  rcases hc with hc | hc
  · have hhi : 0 < hi := by have : (lo : ℝ) ≤ hi := le_trans h1 h2; exact_mod_cast lt_of_lt_of_le hc (by exact_mod_cast this)
    refine ⟨?_, by omega⟩
    have : ((lo.natAbs : ℕ) : ℝ) = (lo : ℝ) := by rw [Nat.cast_natAbs, Int.cast_abs, abs_of_pos (by exact_mod_cast hc)]
    rw [Nat.cast_min, abs_of_pos (lt_of_lt_of_le (by exact_mod_cast hc) h1)]
    exact le_trans (min_le_left _ _) (by rw [this]; exact h1)
  · have hlo : lo < 0 := by have : (lo : ℝ) ≤ hi := le_trans h1 h2; exact_mod_cast lt_of_le_of_lt (by exact_mod_cast this) hc
    refine ⟨?_, by omega⟩
    have : ((hi.natAbs : ℕ) : ℝ) = -(hi : ℝ) := by rw [Nat.cast_natAbs, Int.cast_abs, abs_of_neg (by exact_mod_cast hc)]
    rw [Nat.cast_min, abs_of_neg (lt_of_le_of_lt h2 (by exact_mod_cast hc))]
    exact le_trans (min_le_right _ _) (by rw [this]; linarith)

/-- The intermediate value theorem for a polynomial with a sign change. -/
theorem exists_root_of_mul_neg (Q : ℝ[X]) {a b : ℝ} (hab : a ≤ b) (h : Q.eval a * Q.eval b < 0) :
    ∃ ρ ∈ Icc a b, Q.eval ρ = 0 := by
  have hcont : ContinuousOn (fun x => Q.eval x) (Icc a b) := (Polynomial.continuous _).continuousOn
  rcases lt_or_gt_of_ne (show Q.eval a ≠ 0 by intro h0; rw [h0, zero_mul] at h; exact lt_irrefl 0 h) with hneg | hpos
  · have hq : 0 < Q.eval b := by by_contra hc; push Not at hc; nlinarith
    obtain ⟨ρ, hρ, hρ0⟩ := intermediate_value_Icc hab hcont ⟨hneg.le, hq.le⟩
    exact ⟨ρ, hρ, hρ0⟩
  · have hq : Q.eval b < 0 := by by_contra hc; push Not at hc; nlinarith
    obtain ⟨ρ, hρ, hρ0⟩ := intermediate_value_Icc' hab hcont ⟨hq.le, hpos.le⟩
    exact ⟨ρ, hρ, hρ0⟩

/-- **One piece of the quadrature.** -/
theorem pieceLo_sound {desc : List Int} (hd : 2 ≤ desc.length) (hh : desc.headD 0 ≠ 0) {i Xa Xb k kind : ℕ}
    (hin : pieceIn i Xa Xb k = true) {v : ℤ} (h : pieceLo TAB L2 desc i Xa Xb k kind = some v) :
    (v : ℝ) / 2 ^ P ≤ ∫ t in (Xa : ℝ) / (DEN * 2 ^ k : ℕ)..(Xb : ℝ) / (DEN * 2 ^ k : ℕ),
      Real.log |evR (Qd desc) t| * pwLin NN eR GR t := by
  have hD : 0 < DEN * 2 ^ k := Nat.mul_pos (by decide) (Nat.two_pow_pos k)
  have hDR := DEN_pos_k k
  have hP : (0 : ℝ) < 2 ^ P := by positivity
  obtain ⟨hi, h1, h2, h3⟩ := pieceIn_facts hin
  obtain ⟨hb1, hb2, hb3⟩ := piece_bounds hin
  have hQne : Qd desc ≠ 0 := by
    obtain ⟨b0, t, rfl⟩ : ∃ b0 t, desc = b0 :: t := by
      cases desc with
      | nil => simp at hd
      | cons b0 t => exact ⟨b0, t, rfl⟩
    exact Qd_cons_ne_zero (by simpa using hh) t
  have hint : IntervalIntegrable (fun t => Real.log |evR (Qd desc) t| * pwLin NN eR GR t) volume
      ((Xa : ℝ) / (DEN * 2 ^ k : ℕ)) ((Xb : ℝ) / (DEN * 2 ^ k : ℕ)) :=
    (integrable_log_evR_mul_pwLin eR_lt hQne).intervalIntegrable
  have hGint : IntervalIntegrable (pwLin NN eR GR) volume ((Xa : ℝ) / (DEN * 2 ^ k : ℕ))
      ((Xb : ℝ) / (DEN * 2 ^ k : ℕ)) := (integrable_pwLin _ _ _).intervalIntegrable
  have hG0 : ∀ t, 0 ≤ pwLin NN eR GR t := pwLin_nonneg (fun k _ => GR_nonneg k)
  have hmass := piece_mass hin
  have hW : (0 : ℝ) < (gParts i Xa Xb k).2.2 := by exact_mod_cast gParts_W_pos hin
  have hLD := logT_DU k
  have hdeg1 : 1 ≤ desc.length - 1 := by omega
  -- the Taylor shift at `Xa`
  have hev : ∀ t : ℝ, (QR desc).eval t =
      evalAscR (taylorR Xa (DEN * 2 ^ k) desc) ((DEN * 2 ^ k : ℕ) * t - Xa) / ((DEN * 2 ^ k : ℕ) : ℝ) ^ (desc.length - 1) :=
    fun t => (eval_eq_taylor hD Xa desc t).1
  have hevd : ∀ t : ℝ, (derivative (QR desc)).eval t =
      evalAscR (derivAsc (taylorR Xa (DEN * 2 ^ k) desc)) ((DEN * 2 ^ k : ℕ) * t - Xa) * (DEN * 2 ^ k : ℕ) /
        ((DEN * 2 ^ k : ℕ) : ℝ) ^ (desc.length - 1) :=
    fun t => (eval_eq_taylor hD Xa desc t).2.1
  have hpow : (0 : ℝ) < ((DEN * 2 ^ k : ℕ) : ℝ) ^ (desc.length - 1) := pow_pos hDR _
  unfold pieceLo at h
  dsimp only at h
  generalize hgp : gParts i Xa Xb k = gp at h hmass hW
  generalize hbeta : taylorR Xa (DEN * 2 ^ k) desc = beta at h hev hevd
  by_cases hk : kind = 0
  · -- plain piece
    rw [if_pos hk] at h
    split_ifs at h with hc
    simp only [Option.some.injEq] at h
    subst h
    simp only [Bool.or_eq_true, decide_eq_true_eq] at hc
    -- pointwise lower bound of `log |Q|`
    set m := min (encl (Xb - Xa) beta).1.natAbs (encl (Xb - Xa) beta).2.natAbs with hm
    have hencl : ∀ t ∈ Icc ((Xa : ℝ) / (DEN * 2 ^ k : ℕ)) ((Xb : ℝ) / (DEN * 2 ^ k : ℕ)),
        ((m : ℕ) : ℝ) ≤ |evalAscR beta ((DEN * 2 ^ k : ℕ) * t - Xa)| ∧ 0 < m := by
      intro t ht
      have hv := mem_Icc_v hD h2.le ht
      obtain ⟨e1, e2⟩ := encl_spec hv.1 hv.2 beta
      exact abs_ge_of_encl e1 e2 hc
    have hm0 : 0 < m := (hencl _ ⟨le_rfl, hb2.le⟩).2
    obtain ⟨hlm, -⟩ := logT_sound (a := m) (b := 1) hm0 one_pos
    simp only [Nat.cast_one, div_one] at hlm
    have hL : ∀ t ∈ Icc ((Xa : ℝ) / (DEN * 2 ^ k : ℕ)) ((Xb : ℝ) / (DEN * 2 ^ k : ℕ)),
        (((logT TAB L2 m 1).1 - ((desc.length - 1 : ℕ) : ℤ) * (logT TAB L2 (DEN * 2 ^ k) 1).2 : ℤ) : ℝ) / 2 ^ P ≤
          Real.log |evR (Qd desc) t| := by
      intro t ht
      obtain ⟨hmt, -⟩ := hencl t ht
      rw [evR_Qd, hev t, abs_div, abs_of_pos hpow]
      have hpos : (0 : ℝ) < |evalAscR beta ((DEN * 2 ^ k : ℕ) * t - Xa)| :=
        lt_of_lt_of_le (by exact_mod_cast hm0) hmt
      rw [Real.log_div hpos.ne' hpow.ne', Real.log_pow, div_le_iff₀ hP]
      have h4 := Real.log_le_log (by exact_mod_cast hm0) hmt
      have h5 := hLD.2
      have h6 := mul_le_mul_of_nonneg_left h5 (Nat.cast_nonneg (desc.length - 1) : (0 : ℝ) ≤ ((desc.length - 1 : ℕ) : ℝ))
      have h7 := mul_le_mul_of_nonneg_left h4 hP.le
      push_cast at hlm h5 h6 h7 ⊢
      linarith
    have hI := integral_ge_of_ge hb2.le hint hGint (fun t _ => hG0 t) hL
    rw [hmass] at hI
    have hden : 0 < DEN * 2 ^ k * 2 * gp.2.2 := by
      have : 0 < gp.2.2 := by rw [← hgp]; exact gParts_W_pos hin
      positivity
    refine le_trans ?_ hI
    rw [div_le_iff₀ hP]
    have hf := fdiv_le ((((logT TAB L2 m 1).1 - ((desc.length - 1 : ℕ) : ℤ) * (logT TAB L2 (DEN * 2 ^ k) 1).2) *
      (((Xb - Xa) * (gp.1 + gp.2.1) : ℕ) : ℤ))) hden
    push_cast at hf ⊢
    have e : (((logT TAB L2 m 1).1 : ℝ) - ((desc.length - 1 : ℕ) : ℝ) * (logT TAB L2 (DEN * 2 ^ k) 1).2) / 2 ^ P *
        ((((Xb - Xa : ℕ) : ℝ) * ((gp.1 : ℝ) + gp.2.1)) / ((DEN : ℝ) * 2 ^ k * 2 * gp.2.2)) * 2 ^ P =
        (((logT TAB L2 m 1).1 : ℝ) - ((desc.length - 1 : ℕ) : ℝ) * (logT TAB L2 (DEN * 2 ^ k) 1).2) *
        (((Xb - Xa : ℕ) : ℝ) * ((gp.1 : ℝ) + gp.2.1)) / ((DEN : ℝ) * 2 ^ k * 2 * gp.2.2) := by
      field_simp
    rw [e]
    exact hf
  · -- root window
    rw [if_neg hk] at h
    split_ifs at h with hc
    simp only [Option.some.injEq] at h
    subst h
    simp only [Bool.and_eq_true, Bool.or_eq_true, decide_eq_true_eq] at hc
    obtain ⟨⟨hHD, hsg⟩, hc1⟩ := hc
    set a : ℝ := (Xa : ℝ) / (DEN * 2 ^ k : ℕ) with ha
    set b : ℝ := (Xb : ℝ) / (DEN * 2 ^ k : ℕ) with hb
    -- the sign change gives a root
    have hQa : (QR desc).eval a = (beta.headD 0 : ℝ) / ((DEN * 2 ^ k : ℕ) : ℝ) ^ (desc.length - 1) := by
      rw [hev a, ha, mul_div_cancel₀ _ hDR.ne', sub_self, evalAscR_zero]
    have hQb : (QR desc).eval b = ((evalAsc ((Xb - Xa : ℕ) : ℤ) beta : ℤ) : ℝ) /
        ((DEN * 2 ^ k : ℕ) : ℝ) ^ (desc.length - 1) := by
      rw [hev b, hb, mul_div_cancel₀ _ hDR.ne', evalAsc_spec]
      push_cast [Nat.cast_sub h2.le]
      ring_nf
    have hsgR : (QR desc).eval a * (QR desc).eval b < 0 := by
      rw [hQa, hQb]
      have : ((beta.headD 0 : ℤ) : ℝ) * ((evalAsc ((Xb - Xa : ℕ) : ℤ) beta : ℤ) : ℝ) < 0 := by exact_mod_cast hsg
      rw [div_mul_div_comm]
      exact div_neg_of_neg_of_pos this (by positivity)
    obtain ⟨ρ, hρ, hρ0⟩ := exists_root_of_mul_neg (QR desc) hb2.le hsgR
    -- the derivative bound
    set m1 := min (encl (Xb - Xa) (derivAsc beta)).1.natAbs (encl (Xb - Xa) (derivAsc beta)).2.natAbs with hm1
    have hencl1 : ∀ t ∈ Icc a b, ((m1 : ℕ) : ℝ) ≤ |evalAscR (derivAsc beta) ((DEN * 2 ^ k : ℕ) * t - Xa)| ∧ 0 < m1 := by
      intro t ht
      have hv := mem_Icc_v hD h2.le ht
      obtain ⟨e1, e2⟩ := encl_spec hv.1 hv.2 (derivAsc beta)
      exact abs_ge_of_encl e1 e2 hc1
    have hm10 : 0 < m1 := (hencl1 a ⟨le_rfl, hb2.le⟩).2
    set c1 : ℝ := (m1 : ℝ) / ((DEN * 2 ^ k : ℕ) : ℝ) ^ (desc.length - 1 - 1) with hc1def
    have hc1pos : 0 < c1 := div_pos (by exact_mod_cast hm10) (pow_pos hDR _)
    have hderiv : ∀ t ∈ Icc a b, c1 ≤ |(derivative (QR desc)).eval t| := by
      intro t ht
      obtain ⟨hmt, -⟩ := hencl1 t ht
      rw [hevd t, abs_div, abs_mul, abs_of_pos hpow, abs_of_pos hDR]
      have hsplit : ((DEN * 2 ^ k : ℕ) : ℝ) ^ (desc.length - 1) =
          ((DEN * 2 ^ k : ℕ) : ℝ) ^ (desc.length - 1 - 1) * ((DEN * 2 ^ k : ℕ) : ℝ) := by
        rw [← pow_succ, Nat.sub_add_cancel hdeg1]
      rw [hsplit, hc1def, mul_div_mul_right _ _ hDR.ne']
      exact div_le_div_of_nonneg_right hmt (pow_pos hDR _).le
    have hmvt := abs_ge_of_deriv_ge (f := fun t => (QR desc).eval t) (f' := fun t => (derivative (QR desc)).eval t)
      (fun t _ => Polynomial.hasDerivAt _ t) hderiv hρ hρ0
    -- logs
    obtain ⟨hlm1, -⟩ := logT_sound (a := m1) (b := 1) hm10 one_pos
    simp only [Nat.cast_one, div_one] at hlm1
    have hH0 : 0 < Xb - Xa := by omega
    have hD2 : 0 < 2 * (DEN * 2 ^ k) := by omega
    obtain ⟨hlw, -⟩ := logT_sound (a := Xb - Xa) (b := 2 * (DEN * 2 ^ k)) hH0 hD2
    set L1 : ℤ := (logT TAB L2 m1 1).1 - ((desc.length - 1 - 1 : ℕ) : ℤ) * (logT TAB L2 (DEN * 2 ^ k) 1).2 with hL1
    have hL1le : (L1 : ℝ) / 2 ^ P ≤ Real.log c1 := by
      rw [hc1def, Real.log_div (by exact_mod_cast hm10.ne') (pow_pos hDR _).ne', Real.log_pow, div_le_iff₀ hP, hL1]
      have h5 := hLD.2
      push_cast
      have hn : (0 : ℝ) ≤ ((desc.length - 1 - 1 : ℕ) : ℝ) := Nat.cast_nonneg _
      have h6 := mul_le_mul_of_nonneg_left h5 hn
      push_cast at hlm1 h5 h6 ⊢
      linarith
    -- `Gmax`
    obtain ⟨ga, gb⟩ := gParts_eq hin
    rw [hgp] at ga gb
    set Gmax : ℝ := max ((gp.1 : ℝ) / gp.2.2) ((gp.2.1 : ℝ) / gp.2.2) with hGmax
    have hGmax0 : 0 ≤ Gmax := le_max_of_le_left (div_nonneg (Nat.cast_nonneg _) hW.le)
    have hGle : ∀ t ∈ Ico a b, pwLin NN eR GR t ≤ Gmax := by
      intro t ht
      rw [pwLin_eq_aff eR_lt hi ⟨le_trans hb1 ht.1, lt_of_lt_of_le ht.2 hb3⟩, hGmax, ← ga, ← gb]
      exact pwAff_le_max (eR_lt i hi) hb1 hb3 ⟨ht.1, ht.2.le⟩
    have hw1 : b - a ≤ 1 := by
      rw [ha, hb, ← sub_div, div_le_one hDR, ← Nat.cast_sub h2.le]
      exact_mod_cast hHD
    -- pointwise a.e. bound
    have hpt : ∀ t ∈ Icc a b, t ≠ ρ → t ≠ b →
        (L1 : ℝ) / 2 ^ P * pwLin NN eR GR t + Gmax * Real.log |t - ρ| ≤
          Real.log |evR (Qd desc) t| * pwLin NN eR GR t := by
      intro t ht htρ htb
      have hQt := hmvt t ht
      have htρ' : 0 < |t - ρ| := abs_pos.mpr (sub_ne_zero.mpr htρ)
      have hQpos : 0 < |(QR desc).eval t| := lt_of_lt_of_le (mul_pos hc1pos htρ') hQt
      have hlog : (L1 : ℝ) / 2 ^ P + Real.log |t - ρ| ≤ Real.log |evR (Qd desc) t| := by
        rw [evR_Qd]
        have := Real.log_le_log (mul_pos hc1pos htρ') hQt
        rw [Real.log_mul hc1pos.ne' htρ'.ne'] at this
        linarith
      have hlogneg : Real.log |t - ρ| ≤ 0 := by
        apply Real.log_nonpos (abs_nonneg _)
        rw [abs_le]; constructor <;> linarith [ht.1, ht.2, hρ.1, hρ.2]
      have hGt : pwLin NN eR GR t ≤ Gmax := hGle t ⟨ht.1, lt_of_le_of_ne ht.2 htb⟩
      have h1' : Gmax * Real.log |t - ρ| ≤ pwLin NN eR GR t * Real.log |t - ρ| :=
        mul_le_mul_of_nonpos_right hGt hlogneg
      have h2' : ((L1 : ℝ) / 2 ^ P + Real.log |t - ρ|) * pwLin NN eR GR t ≤
          Real.log |evR (Qd desc) t| * pwLin NN eR GR t := mul_le_mul_of_nonneg_right hlog (hG0 t)
      linarith
    have hlogint : IntervalIntegrable (fun t => Real.log |t - ρ|) volume a b := by
      have := (intervalIntegral.intervalIntegrable_log' (a := a - ρ) (b := b - ρ)).comp_sub_right ρ
      simpa [Real.log_abs] using this
    have hRint : IntervalIntegrable (fun t => (L1 : ℝ) / 2 ^ P * pwLin NN eR GR t + Gmax * Real.log |t - ρ|)
        volume a b := (hGint.const_mul _).add (hlogint.const_mul _)
    have hmono : ∫ t in a..b, ((L1 : ℝ) / 2 ^ P * pwLin NN eR GR t + Gmax * Real.log |t - ρ|) ≤
        ∫ t in a..b, Real.log |evR (Qd desc) t| * pwLin NN eR GR t := by
      apply intervalIntegral.integral_mono_ae_restrict hb2.le hRint hint
      have h1 : ∀ᵐ t ∂volume, t ≠ ρ := by simp [ae_iff, measure_singleton]
      have h2 : ∀ᵐ t ∂volume, t ≠ b := by simp [ae_iff, measure_singleton]
      rw [Filter.EventuallyLE, ae_restrict_iff' measurableSet_Icc]
      filter_upwards [h1, h2] with t ht1 ht2 htI using hpt t htI ht1 ht2
    rw [intervalIntegral.integral_add (hGint.const_mul _) (hlogint.const_mul _),
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul, hmass] at hmono
    have hlogI := integral_log_abs_sub_ge hρ.1 hρ.2
    -- assemble
    refine le_trans ?_ hmono
    have hden : 0 < DEN * 2 ^ k * 2 * gp.2.2 := by
      have : 0 < gp.2.2 := by rw [← hgp]; exact gParts_W_pos hin
      positivity
    have hden2 : 0 < gp.2.2 * (DEN * 2 ^ k) := by
      have : 0 < gp.2.2 := by rw [← hgp]; exact gParts_W_pos hin
      positivity
    have hf1 := fdiv_le (L1 * (((Xb - Xa) * (gp.1 + gp.2.1) : ℕ) : ℤ)) hden
    have hf2 := fdiv_le ((((max gp.1 gp.2.1) * (Xb - Xa) : ℕ) : ℤ) *
      ((logT TAB L2 (Xb - Xa) (2 * (DEN * 2 ^ k))).1 - 2 ^ P)) hden2
    have hGm : ((max gp.1 gp.2.1 : ℕ) : ℝ) / gp.2.2 = Gmax := by
      rw [hGmax, Nat.cast_max, max_div_div_right hW.le]
    have hwb : b - a = ((Xb - Xa : ℕ) : ℝ) / ((DEN * 2 ^ k : ℕ) : ℝ) := by
      rw [ha, hb, ← sub_div, Nat.cast_sub h2.le]
    have hlwle : ((logT TAB L2 (Xb - Xa) (2 * (DEN * 2 ^ k))).1 : ℝ) ≤ 2 ^ P * Real.log ((b - a) / 2) := by
      have e : ((b - a) / 2) = ((Xb - Xa : ℕ) : ℝ) / ((2 * (DEN * 2 ^ k) : ℕ) : ℝ) := by
        rw [hwb]; push_cast; ring
      rw [e]; exact hlw
    rw [div_le_iff₀ hP]
    push_cast at hf1 hf2 ⊢
    have hw0 : 0 ≤ b - a := hb2.le.trans' (le_refl _) |> fun _ => by linarith
    have key2 : ((max (gp.1 : ℝ) gp.2.1) * ((Xb - Xa : ℕ) : ℝ)) *
        (((logT TAB L2 (Xb - Xa) (2 * (DEN * 2 ^ k))).1 : ℝ) - 2 ^ P) / ((gp.2.2 : ℝ) * ((DEN : ℝ) * 2 ^ k)) ≤
        Gmax * ((b - a) * Real.log ((b - a) / 2) - (b - a)) * 2 ^ P := by
      have hGm' : max (gp.1 : ℝ) gp.2.1 / gp.2.2 = Gmax := by rw [← hGm]; push_cast; rfl
      have hwb' : ((Xb - Xa : ℕ) : ℝ) / ((DEN : ℝ) * 2 ^ k) = b - a := by rw [hwb]; push_cast; ring
      have e : ((max (gp.1 : ℝ) gp.2.1) * ((Xb - Xa : ℕ) : ℝ)) *
          (((logT TAB L2 (Xb - Xa) (2 * (DEN * 2 ^ k))).1 : ℝ) - 2 ^ P) / ((gp.2.2 : ℝ) * ((DEN : ℝ) * 2 ^ k)) =
          (max (gp.1 : ℝ) gp.2.1 / gp.2.2) * (((Xb - Xa : ℕ) : ℝ) / ((DEN : ℝ) * 2 ^ k)) *
            (((logT TAB L2 (Xb - Xa) (2 * (DEN * 2 ^ k))).1 : ℝ) - 2 ^ P) := by
        field_simp
      rw [e, hGm', hwb']
      have hGw : 0 ≤ Gmax * (b - a) := mul_nonneg hGmax0 hw0
      have : Gmax * (b - a) * (((logT TAB L2 (Xb - Xa) (2 * (DEN * 2 ^ k))).1 : ℝ) - 2 ^ P) ≤
          Gmax * (b - a) * (2 ^ P * Real.log ((b - a) / 2) - 2 ^ P) :=
        mul_le_mul_of_nonneg_left (by linarith) hGw
      linarith
    have key1 : (L1 : ℝ) * (((Xb - Xa : ℕ) : ℝ) * ((gp.1 : ℝ) + gp.2.1)) / ((DEN : ℝ) * 2 ^ k * 2 * gp.2.2) =
        (L1 : ℝ) / 2 ^ P * ((((Xb - Xa : ℕ) : ℝ) * ((gp.1 : ℝ) + gp.2.1)) / ((DEN : ℝ) * 2 ^ k * 2 * gp.2.2)) *
          2 ^ P := by
      field_simp
    have hGI := mul_le_mul_of_nonneg_left hlogI hGmax0
    have hGI' := mul_le_mul_of_nonneg_right hGI hP.le
    linarith [hf1, hf2, key1, key2, hGI']

end TPUpper.Cert
