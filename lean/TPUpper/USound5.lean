import TPUpper.USound4

/-!
# Soundness of the checker, part 5: context facts, the polynomial fold, `∑ |Cᵢ|`

Adapted from `TPMahler.CheckSound5`, `TPMahler.CheckSound6` (`polyRes_facts`) and `TPMahler.CheckSound9`
(`sumC_ge`, `eR_range`) for the data of this certificate.
-/

open Polynomial

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPCore (P QS NRec LAcc fdiv cdiv imul yEncl logT TAB L2 polyLeaf sumAbsC)
open TPMahler.Cert (logT_sound polyFold polyFold_some list_sum_range foldl_add_eq_sum QR)

theorem ctxU_tab : mkCtxU.tab = TAB := by simp only [mkCtxU]
theorem ctxU_l2 : mkCtxU.l2 = L2 := by simp only [mkCtxU]
theorem ctxU_rs : mkCtxU.rs = mkRecsU TUCore.GS TUCore.nodes TUCore.gvals := by simp only [mkCtxU]
theorem ctxU_sumC : mkCtxU.sumC = sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) := by simp only [mkCtxU]

theorem logT_DU (k : ℕ) :
    ((logT TAB L2 (DEN * 2 ^ k) 1).1 : ℝ) ≤ 2 ^ P * Real.log (DEN * 2 ^ k : ℕ) ∧
      2 ^ P * Real.log (DEN * 2 ^ k : ℕ) ≤ ((logT TAB L2 (DEN * 2 ^ k) 1).2 : ℝ) := by
  have h := logT_sound (a := DEN * 2 ^ k) (b := 1) (Nat.mul_pos (by decide) (Nat.two_pow_pos k)) one_pos
  simpa using h

/-- The zipped list of the polynomials, weights and indices. -/
theorem polyList_eqU : (List.zip TUCore.polys (List.zip bNum bSh)).zipIdx =
    (List.range 21).map (fun j => ((TUCore.polys.getD j [], (bNum.getD j 0, bSh.getD j 0)), j)) := by
  decide +kernel

/-- The per-polynomial results of a successful fold. -/
theorem polyRes_factsU {Xp Xq D : ℕ} {LD : ℤ × ℤ} {x0q : Bool} {mask : ℕ} {T : ℤ × ℤ × ℤ × ℤ × ℤ}
    (h : (List.zip TUCore.polys (List.zip bNum bSh)).zipIdx.foldl
      (polyFold (fun x => polyLeaf TAB L2 Xp Xq D LD x0q (Nat.testBit mask x.2) x.1.1 x.1.2.1 x.1.2.2))
      (some (0, 0, 0, 0, 0)) = some T) :
    ∃ v : ℕ → ℤ × ℤ × ℤ × ℤ × ℤ,
      (∀ j < 21, polyLeaf TAB L2 Xp Xq D LD x0q (Nat.testBit mask j) (TUCore.polys.getD j []) (bNum.getD j 0)
        (bSh.getD j 0) = some (v j)) ∧
      T = ∑ j ∈ Finset.range 21, v j := by
  set g := fun x : (List Int × ℕ × ℕ) × ℕ =>
    polyLeaf TAB L2 Xp Xq D LD x0q (Nat.testBit mask x.2) x.1.1 x.1.2.1 x.1.2.2 with hg
  obtain ⟨hsome, hT⟩ := polyFold_some g _ _ _ h
  rw [polyList_eqU] at hsome hT
  set elt := fun j : ℕ => ((TUCore.polys.getD j [], (bNum.getD j 0, bSh.getD j 0)), j) with helt
  refine ⟨fun j => (g (elt j)).getD 0, ?_, ?_⟩
  · intro j hj
    have hmem : elt j ∈ (List.range 21).map elt := List.mem_map.mpr ⟨j, List.mem_range.mpr hj, rfl⟩
    have := hsome (elt j) hmem
    obtain ⟨v, hv⟩ := Option.isSome_iff_exists.mp this
    show g (elt j) = some ((g (elt j)).getD 0)
    rw [hv]; rfl
  · rw [hT, show ((0, 0, 0, 0, 0) : ℤ × ℤ × ℤ × ℤ × ℤ) = 0 from rfl, zero_add, List.map_map]
    exact list_sum_range (fun j => (g (elt j)).getD 0) 21

/-- The sum over the polynomials, indexed by `Fin JJ` or by `range 21`. -/
theorem hR_poly_sum (x : ℝ) : ∑ j : Fin JJ, bR j * Real.log |(QR (TUCore.polys.getD j [])).eval x| =
    ∑ j ∈ Finset.range 21, bj j * Real.log |(QR (TUCore.polys.getD j [])).eval x| := by
  exact Fin.sum_univ_eq_sum_range (fun j => bj j * Real.log |(QR (TUCore.polys.getD j [])).eval x|) JJ

/-! ## `∑ |Cᵢ|` -/

theorem sumAbsC_recs : sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) =
    sumAbsC ((List.range (NN + 1)).map recOf) := by
  rw [mkRecs_eq]

theorem sumAbsC_eq (l : List NRec) : sumAbsC l = (l.map (fun r => max r.clo.natAbs r.chi.natAbs)).sum := by
  unfold sumAbsC
  rw [foldl_add_eq_sum, zero_add]

theorem sum_map_recOf (g : NRec → ℕ) :
    (((List.range (NN + 1)).map recOf).map g).sum = ∑ i ∈ Finset.range (NN + 1), g (recOf i) := by
  rw [List.map_map, list_sum_range]
  rfl

/-- `sumC` bounds `2^QS ∑ |Cᵢ|`. -/
theorem sumC_ge : 2 ^ QS * ∑ i ∈ Finset.range (NN + 1), |CR i| ≤
    (sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) : ℝ) := by
  have key : ∀ i ≤ NN, 2 ^ QS * |CR i| ≤ ((max (recOf i).clo.natAbs (recOf i).chi.natAbs : ℕ) : ℝ) := by
    intro i hi
    obtain ⟨h1, h2, -, -, -⟩ := recOf_spec hi
    have e1 : (((recOf i).clo.natAbs : ℕ) : ℝ) = |((recOf i).clo : ℝ)| := by
      rw [Nat.cast_natAbs, Int.cast_abs]
    have e2 : (((recOf i).chi.natAbs : ℕ) : ℝ) = |((recOf i).chi : ℝ)| := by
      rw [Nat.cast_natAbs, Int.cast_abs]
    rw [Nat.cast_max, e1, e2]
    rcases le_total 0 (CR i) with hc | hc
    · rw [abs_of_nonneg hc]
      exact le_trans (le_trans h2 (le_abs_self _)) (le_max_right _ _)
    · rw [abs_of_nonpos hc]
      have h3 : 2 ^ QS * -CR i ≤ -((recOf i).clo : ℝ) := by linarith
      exact le_trans (le_trans h3 (neg_le_abs _)) (le_max_left _ _)
  rw [sumAbsC_recs, sumAbsC_eq, sum_map_recOf, Nat.cast_sum, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i hi
  exact key i (Nat.lt_succ_iff.mp (Finset.mem_range.mp hi))

theorem abs_eR_sub_le {y : ℝ} (hy0 : 0 ≤ y) (hy : y ≤ 22) : ∀ i ≤ NN, |eR i - y| ≤ 22 := by
  intro i hi
  obtain ⟨h1, h2⟩ := eR_range hi
  rw [abs_le]; constructor <;> linarith

/-- `U` is Lipschitz on `[0, 22]` (from `TPMahler.Cert.sum_Hk_lipschitz`). -/
theorem UR_le_add {y z : ℝ} (hy : ∀ i ≤ NN, |eR i - y| ≤ 22) (hz : ∀ i ≤ NN, |eR i - z| ≤ 22) :
    UR z ≤ UR y + 47 * (∑ i ∈ Finset.range (NN + 1), |CR i|) * |y - z| := by
  have h := TPMahler.Cert.sum_Hk_lipschitz NN eR CR hy hz
  have := neg_abs_le (UR y - UR z)
  unfold UR at *
  linarith

end TPUpper.Cert
