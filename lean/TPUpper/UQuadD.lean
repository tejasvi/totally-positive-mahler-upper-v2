import TPUpper.UQuadC
import TPUpper.USound10

/-!
# Soundness of the quadrature checker `TUCore.quadOK`, part 3: the tiling and (C2) by quadrature
-/

open Polynomial Set MeasureTheory intervalIntegral

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPCore (P QS logT TAB L2 ptEq)
open TPMahler.Cert (QR Qd Qd_cons_ne_zero)

theorem quadSum_sound {desc : List Int} (hd : 2 ≤ desc.length) (hh : desc.headD 0 ≠ 0) :
    ∀ (ps : List (ℕ × ℕ × ℕ × ℕ × ℕ)) (X kx XT kT : ℕ) (v : ℤ),
      quadSum TAB L2 desc X kx ps XT kT = some v →
      (X : ℝ) / (DEN * 2 ^ kx : ℕ) ≤ (XT : ℝ) / (DEN * 2 ^ kT : ℕ) ∧
      (v : ℝ) / 2 ^ P ≤ ∫ t in (X : ℝ) / (DEN * 2 ^ kx : ℕ)..(XT : ℝ) / (DEN * 2 ^ kT : ℕ),
        Real.log |evR (Qd desc) t| * pwLin NN eR GR t
  | [], X, kx, XT, kT, v, h => by
    simp only [quadSum] at h
    split_ifs at h with hpt
    simp only [Option.some.injEq] at h
    subst h
    have he := ptEq_realU hpt
    refine ⟨he.le, ?_⟩
    rw [he, intervalIntegral.integral_same]
    simp
  | (i, Xa, Xb, k, kind) :: ps, X, kx, XT, kT, v, h => by
    simp only [quadSum] at h
    split_ifs at h with hc
    simp only [Bool.and_eq_true] at hc
    obtain ⟨hpt, hin⟩ := hc
    rcases hp : pieceLo TAB L2 desc i Xa Xb k kind with _ | v1
    · rw [hp] at h; exact absurd h (by simp)
    rcases hq : quadSum TAB L2 desc Xb k ps XT kT with _ | w
    · rw [hp, hq] at h; exact absurd h (by simp)
    rw [hp, hq] at h
    simp only [Option.some.injEq] at h
    subst h
    have he := ptEq_realU hpt
    obtain ⟨hle, hw⟩ := quadSum_sound hd hh ps Xb k XT kT w hq
    have h1 := pieceLo_sound hd hh hin hp
    obtain ⟨-, hb2, -⟩ := piece_bounds hin
    have hQne : Qd desc ≠ 0 := by
      obtain ⟨b0, t, rfl⟩ : ∃ b0 t, desc = b0 :: t := by
        cases desc with
        | nil => simp at hd
        | cons b0 t => exact ⟨b0, t, rfl⟩
      exact Qd_cons_ne_zero (by simpa using hh) t
    have hI := integrable_log_evR_mul_pwLin (G := GR) eR_lt hQne
    refine ⟨by rw [he]; linarith, ?_⟩
    have hsplit := intervalIntegral.integral_add_adjacent_intervals
      (hI.intervalIntegrable (a := (Xa : ℝ) / (DEN * 2 ^ k : ℕ)) (b := (Xb : ℝ) / (DEN * 2 ^ k : ℕ)))
      (hI.intervalIntegrable (a := (Xb : ℝ) / (DEN * 2 ^ k : ℕ)) (b := (XT : ℝ) / (DEN * 2 ^ kT : ℕ)))
    rw [he, ← hsplit, Int.cast_add, add_div]
    linarith

/-- **(C2) by quadrature.** -/
theorem quadOK_sound {desc : List Int} (hd : 2 ≤ desc.length) (hh : desc.headD 0 ≠ 0)
    {ps : List (ℕ × ℕ × ℕ × ℕ × ℕ)} (h : quadOK mkCtxU desc ps = true) :
    0 ≤ ∫ x, Real.log |evR (Qd desc) x| * pwLin NN eR GR x := by
  unfold quadOK at h
  rw [ctxU_tab, ctxU_l2] at h
  rcases hq : quadSum TAB L2 desc 45 0 ps 3525 0 with _ | v
  · rw [hq] at h; exact absurd h (by simp)
  rw [hq] at h
  simp only [decide_eq_true_eq] at h
  obtain ⟨hle, hv⟩ := quadSum_sound hd hh ps 45 0 3525 0 v hq
  have hP : (0 : ℝ) < 2 ^ P := by positivity
  have h0 : (0 : ℝ) ≤ (v : ℝ) / 2 ^ P := div_nonneg (by exact_mod_cast h) hP.le
  have ha : ((45 : ℕ) : ℝ) / ((DEN * 2 ^ 0 : ℕ) : ℝ) = eR 0 := by rw [eR_first]; unfold DEN; norm_num
  have hb : ((3525 : ℕ) : ℝ) / ((DEN * 2 ^ 0 : ℕ) : ℝ) = eR NN := by rw [eR_last]; unfold DEN; norm_num
  rw [ha, hb] at hv hle
  have hzero : ∀ x ∉ Icc (eR 0) (eR NN), Real.log |evR (Qd desc) x| * pwLin NN eR GR x = 0 := by
    intro x hx
    rw [pwLin_eq_zero_of_notMem_Icc eR_lt hx, mul_zero]
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero hzero, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le hle]
  linarith

end TPUpper.Cert
