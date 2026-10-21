import TPUpper.UQuadD
import TPUpper.VSound
import TPUpper.Steps234
import TUCore.Leaves
import TUCore.Quad15Data

/-!
# The certificate hypothesis `UpCertHyp` from the checker results

`upCertHyp_of_checks`: the irreducibility of the `Qⱼ`, `C1OK`, the (C2) checks (`c2OK` for the real-rooted `Qⱼ`,
`quadOK` for `Q₁₅`) and the tiling `leavesOKU` give `UpCertHyp Qc bR NN eR GR sR 9`. The checks themselves are
decided in the track files (`native_decide` or `decide +kernel`).
-/

open Polynomial Set MeasureTheory

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPMahler.Cert (QR Qd Qd_cons_ne_zero)

set_option maxRecDepth 20000 in
theorem polys_len : ∀ j < 21, 2 ≤ (TUCore.polys.getD j []).length := by decide +kernel

set_option maxRecDepth 20000 in
theorem bNum_pos : ∀ j < 21, 0 < bNum.getD j 0 := by decide +kernel

theorem bR_pos (j : Fin JJ) : 0 < bR j := by
  unfold bR
  have : (0 : ℝ) < bNum.getD j 0 := by exact_mod_cast bNum_pos j j.isLt
  positivity

theorem Qc_deg (j : Fin JJ) : 0 < (Qc j).natDegree := by
  rw [natDegree_QcU]
  have := polys_len j j.isLt
  omega

theorem Qd_ne_zero_of {desc : List Int} (hd : 2 ≤ desc.length) (hh : desc.headD 0 ≠ 0) : Qd desc ≠ 0 := by
  obtain ⟨b0, t, rfl⟩ : ∃ b0 t, desc = b0 :: t := by
    cases desc with
    | nil => simp at hd
    | cons b0 t => exact ⟨b0, t, rfl⟩
  exact Qd_cons_ne_zero (by simpa using hh) t

theorem potC_eq_UR (x : ℝ) : potC NN eR GR (x : ℂ) = UR x := by
  rw [potC_ofReal eR_lt GR_zero GR_NN]
  unfold UR CR
  rfl

/-- (C2) for a real-rooted polynomial, from `c2OK` and the root formula. -/
theorem C2_of_c2OK {desc : List Int} {brs : List (ℕ × ℕ)} (hd : 2 ≤ desc.length) (hh : desc.headD 0 ≠ 0)
    (h : c2OK mkCtxU desc brs = true) : 0 ≤ ∫ x, Real.log |evR (Qd desc) x| * pwLin NN eR GR x := by
  rw [integral_log_evR_eq eR_lt (fun k _ => GR_nonneg k) sR_eq_trapezoid.symm (Qd_ne_zero_of hd hh)]
  exact c2OK_sound hd hh potC_eq_UR h

theorem c2_of_all (h : c2AllOK mkCtxU = true) :
    ∀ j < 21, j ≠ 15 → c2OK mkCtxU (TUCore.polys.getD j []) (c2brs.getD j []) = true := by
  intro j hj h15
  unfold c2AllOK at h
  rw [List.all_eq_true] at h
  have := h j (List.mem_range.mpr hj)
  rw [Bool.or_eq_true, beq_iff_eq] at this
  exact this.resolve_left h15

theorem C2_all (hC2 : ∀ j < 21, j ≠ 15 → c2OK mkCtxU (TUCore.polys.getD j []) (c2brs.getD j []) = true)
    (hQ : quadOK mkCtxU (TUCore.polys.getD 15 []) quad15 = true) (j : Fin JJ) :
    0 ≤ ∫ x, Real.log |evR (Qc j) x| * pwLin NN eR GR x := by
  obtain ⟨j, hj⟩ := j
  have hj' : j < 21 := hj
  obtain ⟨-, hh⟩ := polysU_ok j hj'
  have hd := polys_len j hj'
  unfold Qc
  dsimp only
  by_cases h15 : j = 15
  · subst h15
    exact quadOK_sound hd hh hQ
  · exact C2_of_c2OK hd hh (hC2 j hj' h15)

/-- (C3), from the tiling `[45, 3526] / 400 ⊇ [e₀, e_N]`. -/
theorem C3_of_leaves (hL : leavesOKU mkCtxU 45 0 leavesU 3526 0 = true) :
    ∀ x ∈ Icc (eR 0) (eR NN), (∀ j, 0 < bR j → evR (Qc j) x ≠ 0) →
      0 ≤ ∑ i ∈ Finset.range (NN + 1), slopeJump NN eR GR i * Hk (eR i - x) -
        ∑ j, bR j * Real.log |evR (Qc j) x| := by
  intro x hx hne
  have hT : ((3526 : ℕ) : ℝ) / ((DEN * 2 ^ 0 : ℕ) : ℝ) ≤ 22 := by unfold DEN; norm_num
  obtain ⟨-, hsound⟩ := leavesOKU_sound leavesU 45 0 3526 0 hT hL
  rw [eR_first, eR_last] at hx
  have hx' : x ∈ Ico (((45 : ℕ) : ℝ) / ((DEN * 2 ^ 0 : ℕ) : ℝ)) (((3526 : ℕ) : ℝ) / ((DEN * 2 ^ 0 : ℕ) : ℝ)) := by
    unfold DEN
    constructor
    · norm_num; linarith [hx.1]
    · norm_num; linarith [hx.2]
  have hall : ∀ j < 21, (QR (TUCore.polys.getD j [])).eval x ≠ 0 := fun j hj => hne ⟨j, hj⟩ (bR_pos _)
  have h := (hsound x hx' hall).le
  have hsum : ∑ j : Fin JJ, bR j * Real.log |evR (Qc j) x| =
      ∑ j ∈ Finset.range 21, bj j * Real.log |(QR (TUCore.polys.getD j [])).eval x| :=
    Fin.sum_univ_eq_sum_range (fun j => bj j * Real.log |(QR (TUCore.polys.getD j [])).eval x|) 21
  rw [hsum]
  have hU : UR x = ∑ i ∈ Finset.range (NN + 1), slopeJump NN eR GR i * Hk (eR i - x) := by
    unfold UR CR
    rfl
  rw [← hU]
  unfold hR at h
  exact h

/-- **The certificate hypothesis of Lemma 2.1 of the paper**, from the checks. -/
theorem upCertHyp_of_checks (hirr : ∀ j, Irreducible (Qc j)) (hC1 : C1OK = true)
    (hC2 : ∀ j < 21, j ≠ 15 → c2OK mkCtxU (TUCore.polys.getD j []) (c2brs.getD j []) = true)
    (hQ : quadOK mkCtxU (TUCore.polys.getD 15 []) quad15 = true)
    (hL : leavesOKU mkCtxU 45 0 leavesU 3526 0 = true) :
    UpCertHyp Qc bR NN eR GR sR 9 where
  Q_irred := hirr
  Q_deg := Qc_deg
  b_nonneg j := (bR_pos j).le
  nodes := eR_lt
  e_first := by rw [eR_first]; norm_num
  e_last := by rw [eR_last]; norm_num
  X_gt := by norm_num
  G_nonneg k _ := GR_nonneg k
  G_first := GR_zero
  G_last := GR_NN
  mass := sR_eq_trapezoid.symm
  mass_pos := sR_pos
  C1 := C1_sound hC1
  C2 j _ := C2_all hC2 hQ j
  C3 := C3_of_leaves hL

theorem UB_pos : (0 : ℝ) < UB := by
  unfold UB
  norm_num

theorem v0_lt_log_UB : v0 < Real.log UB := (Real.lt_log_iff_exp_lt UB_pos).mpr exp_v0_lt

end TPUpper.Cert
