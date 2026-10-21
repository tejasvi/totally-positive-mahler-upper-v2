import TPUpper.USound8

/-!
# Soundness of the checker, part 9: `windowLBU_sound`

A window leaf `[Xu, Xv] / D` is checked from the left end: every `|Qⱼ|` is bounded on the window by the Taylor
enclosure, and `U` moves by at most `47 (∑ |Cᵢ|) (Xv - Xu) / D`. Adapted from `TPMahler.CheckSound9`.
-/

open Polynomial Set

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPCore (P QS NRec LAcc fdiv cdiv imul yEncl logT TAB L2 polyLeaf sumAbsC encl taylorR pointPass)
open TPMahler.Cert (logT_all QR fdiv_le le_cdiv encl_log_term foldl_add_eq_sum list_sum_range)

theorem polyZip_eqU : List.zip TUCore.polys (List.zip bNum bSh) =
    (List.range 21).map (fun j => (TUCore.polys.getD j [], (bNum.getD j 0, bSh.getD j 0))) := by
  decide +kernel

/-- The polynomial part of `windowLBU`. -/
def polyPartWU (Xu H D : ℕ) (LD : ℤ × ℤ) : ℤ :=
  (List.zip TUCore.polys (List.zip bNum bSh)).foldl
    (fun (acc : Int) (y : List Int × Nat × Nat) =>
      acc + fdiv (-(y.2.1 : Int) * ((logT TAB L2 (max (encl H (taylorR Xu D y.1)).1.natAbs
        (encl H (taylorR Xu D y.1)).2.natAbs) 1).2 - ((y.1.length - 1 : Nat) : Int) * LD.1)) (2 ^ y.2.2))
    0

theorem windowLBU_eq (Xu Xv k : ℕ) : windowLBU mkCtxU Xu Xv k =
    uLo (pointPass TAB L2 (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) k Xu (logT TAB L2 (DEN * 2 ^ k) 1))
        (DEN * 2 ^ k) +
      polyPartWU Xu (Xv - Xu) (DEN * 2 ^ k) (logT TAB L2 (DEN * 2 ^ k) 1) -
      cdiv (((47 * sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) * (Xv - Xu) : ℕ) : ℤ) * 2 ^ P)
        (DEN * 2 ^ k * 2 ^ QS) := by
  simp only [windowLBU, polyPartWU, ctxU_tab, ctxU_l2, ctxU_rs, ctxU_sumC]

theorem polyPartWU_le {Xu H D : ℕ} (hD : 0 < D) {LD : ℤ × ℤ}
    (hLD : (LD.1 : ℝ) ≤ 2 ^ P * Real.log D ∧ 2 ^ P * Real.log D ≤ LD.2) {x : ℝ}
    (hx0 : (Xu : ℝ) / D ≤ x) (hxH : x ≤ ((Xu : ℝ) + H) / D)
    (hQx : ∀ j < 21, (QR (TUCore.polys.getD j [])).eval x ≠ 0) :
    (polyPartWU Xu H D LD : ℝ) ≤
      2 ^ P * -∑ j ∈ Finset.range 21, bj j * Real.log |(QR (TUCore.polys.getD j [])).eval x| := by
  unfold polyPartWU
  rw [polyZip_eqU, foldl_add_eq_sum, zero_add, List.map_map, list_sum_range, Int.cast_sum,
    ← Finset.sum_neg_distrib, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro j hj
  have := encl_log_term logT_all hLD hD Xu H (TUCore.polys.getD j []) hx0 hxH (hQx j (Finset.mem_range.mp hj))
    (bNum.getD j 0) (bSh.getD j 0)
  refine le_trans this (le_of_eq ?_)
  unfold bj
  ring

/-- **Window leaves.** -/
theorem windowLBU_sound {Xu Xv k : ℕ} (huv : Xu < Xv)
    (hv : (Xv : ℝ) / (DEN * 2 ^ k : ℕ) ≤ 22) {x : ℝ}
    (hx : x ∈ Icc ((Xu : ℝ) / (DEN * 2 ^ k : ℕ)) ((Xv : ℝ) / (DEN * 2 ^ k : ℕ)))
    (hQx : ∀ j < 21, (QR (TUCore.polys.getD j [])).eval x ≠ 0) :
    (windowLBU mkCtxU Xu Xv k : ℝ) / 2 ^ P ≤ hR x := by
  have hD : 0 < DEN * 2 ^ k := Nat.mul_pos (by decide) (Nat.two_pow_pos k)
  have hDR : (0 : ℝ) < ((DEN * 2 ^ k : ℕ) : ℝ) := by exact_mod_cast hD
  have hP : (0 : ℝ) < 2 ^ P := by positivity
  have hQS : (0 : ℝ) < 2 ^ QS := by positivity
  rw [windowLBU_eq]
  have hLDs := logT_DU k
  have hU0 : (uLo (pointPass TAB L2 (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) k Xu
      (logT TAB L2 (DEN * 2 ^ k) 1)) (DEN * 2 ^ k) : ℝ) ≤ 2 ^ P * UR (Xu / (DEN * 2 ^ k : ℕ)) :=
    uLo_le_of hD (pointPass_sound (X := Xu) hLDs).1
  have hxH : x ≤ ((Xu : ℝ) + ((Xv - Xu : ℕ) : ℝ)) / ((DEN * 2 ^ k : ℕ) : ℝ) := by
    rw [Nat.cast_sub huv.le, add_sub_cancel]; exact hx.2
  have hpp := polyPartWU_le (Xu := Xu) (H := Xv - Xu) hD hLDs hx.1 hxH hQx
  have hsC := sumC_ge
  have hdU := le_cdiv (((47 * sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) * (Xv - Xu) : ℕ) : ℤ) * 2 ^ P)
    (b := DEN * 2 ^ k * 2 ^ QS) (Nat.mul_pos hD (Nat.two_pow_pos QS))
  generalize uLo (pointPass TAB L2 (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) k Xu
    (logT TAB L2 (DEN * 2 ^ k) 1)) (DEN * 2 ^ k) = ul at hU0 ⊢
  generalize polyPartWU Xu (Xv - Xu) (DEN * 2 ^ k) (logT TAB L2 (DEN * 2 ^ k) 1) = pp at hpp ⊢
  generalize cdiv (((47 * sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) * (Xv - Xu) : ℕ) : ℤ) * 2 ^ P)
    (DEN * 2 ^ k * 2 ^ QS) = dU at hdU ⊢
  generalize sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) = sC at hsC hdU
  set D : ℕ := DEN * 2 ^ k with hDdef
  set Hn : ℕ := Xv - Xu with hHn
  set u : ℝ := (Xu : ℝ) / D with hudef
  set SC : ℝ := ∑ i ∈ Finset.range (NN + 1), |CR i| with hSC
  have hSC0 : 0 ≤ SC := Finset.sum_nonneg (fun i _ => abs_nonneg _)
  have hu0 : 0 ≤ u := div_nonneg (Nat.cast_nonneg _) hDR.le
  have hux : u ≤ x := hx.1
  have hx22 : x ≤ 22 := le_trans hx.2 hv
  -- the potential moves by at most `47 ∑ |Cᵢ| (Xv - Xu) / D`
  have hHD : x - u ≤ (Hn : ℝ) / D := by
    rw [hHn, Nat.cast_sub huv.le, sub_div]; linarith [hx.2]
  have hUx : UR u ≤ UR x + 47 * SC * ((Hn : ℝ) / D) := by
    have h : UR u ≤ UR x + 47 * SC * |x - u| :=
      UR_le_add (abs_eR_sub_le (le_trans hu0 hux) hx22) (abs_eR_sub_le hu0 (le_trans hux hx22))
    rw [abs_of_nonneg (by linarith)] at h
    have := mul_le_mul_of_nonneg_left hHD (mul_nonneg (by norm_num : (0 : ℝ) ≤ 47) hSC0)
    linarith
  have hUxP : 2 ^ P * UR u ≤ 2 ^ P * UR x + 2 ^ P * (47 * SC * ((Hn : ℝ) / D)) := by
    have := mul_le_mul_of_nonneg_left hUx hP.le
    linarith
  have hdU' : 2 ^ P * (47 * SC * ((Hn : ℝ) / D)) ≤ (dU : ℝ) := by
    refine le_trans ?_ hdU
    have hDQ : ((D * 2 ^ QS : ℕ) : ℝ) = (D : ℝ) * 2 ^ QS := by push_cast; ring
    rw [hDQ, le_div_iff₀ (mul_pos hDR hQS)]
    have e : 2 ^ P * (47 * SC * ((Hn : ℝ) / D)) * ((D : ℝ) * 2 ^ QS) =
        47 * (2 ^ QS * SC) * (Hn : ℝ) * 2 ^ P := by field_simp
    rw [e]
    push_cast
    have h47 : (0 : ℝ) ≤ 47 * (Hn : ℝ) * 2 ^ P :=
      mul_nonneg (mul_nonneg (by norm_num) (Nat.cast_nonneg _)) hP.le
    nlinarith
  have hhR : hR x = UR x - ∑ j ∈ Finset.range 21, bj j * Real.log |(QR (TUCore.polys.getD j [])).eval x| := rfl
  rw [hhR, div_le_iff₀ hP]
  push_cast
  linarith

end TPUpper.Cert
