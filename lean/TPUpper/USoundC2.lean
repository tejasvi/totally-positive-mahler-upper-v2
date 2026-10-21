import TPUpper.USound9
import TUCore.C2
import TPMahler.CertData

/-!
# Soundness of the (C2) check for real-rooted polynomials

`c2OK_sound`: if `c2OK mkCtxU desc brs = true`, the `deg Q` brackets contain `deg Q` distinct real roots, which are
all the roots of `Q = Qd desc`, and `s log |a| + ∑_ρ U(ρ) ≥ 0` (`a` the leading coefficient). With the identity
`∫ log |Q| dμ = s log |a| + ∑_ρ U(ρ)` this is condition (C2) for `Q`.
-/

open Polynomial Set

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPCore (P QS logT fdiv cdiv taylorR pointPass TAB L2 sumAbsC)
open TPMahler.Cert (QR Qd QR_eval_eq Qd_map_eval foldl_ofReal taylorR_spec evalAscR_zero fdiv_le le_cdiv
  logT_sound Qd_cons degree_Qd_lt_lead natDegree_Qd_cons Qd_cons_ne_zero foldl_add_eq_sum)

/-- `toC (Qd l)` at a real point. -/
theorem toC_eval_ofReal (l : List Int) (x : ℝ) :
    (toC (Qd l)).eval (x : ℂ) = (((QR l).eval x : ℝ) : ℂ) := by
  unfold AuxCommon.toC
  rw [Qd_map_eval, QR_eval_eq]
  have := foldl_ofReal l x 0
  simpa using this

theorem valD_eq {D : ℕ} (hD : 0 < D) (X : ℕ) (desc : List Int) :
    (valD desc X D : ℝ) = (D : ℝ) ^ (desc.length - 1) * (QR desc).eval ((X : ℝ) / D) := by
  have h := taylorR_spec hD X desc 0
  rw [evalAscR_zero] at h
  simpa [valD] using h

theorem leadingCoeff_Qd_cons {b : ℤ} (hb : b ≠ 0) (t : List ℤ) : (Qd (b :: t)).leadingCoeff = b := by
  rw [Qd_cons, leadingCoeff_add_of_degree_lt' (degree_Qd_lt_lead hb t), leadingCoeff_C_mul_X_pow]

/-- A valid bracket lies in `[0, 22]` and contains a root. -/
theorem bracket_root {desc : List Int} {D : ℕ} (hD : 0 < D) {b : ℕ × ℕ} (h : bracketOK desc D b = true) :
    b.1 ≤ b.2 ∧ ∃ ρ : ℝ, (b.1 : ℝ) / D ≤ ρ ∧ ρ ≤ (b.2 : ℝ) / D ∧ (QR desc).eval ρ = 0 ∧ (b.2 : ℝ) / D ≤ 22 := by
  unfold bracketOK at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨h22, h⟩ := h
  have hDR : (0 : ℝ) < D := by exact_mod_cast hD
  have hpow : (0 : ℝ) < (D : ℝ) ^ (desc.length - 1) := pow_pos hDR _
  have h22' : (b.2 : ℝ) / D ≤ 22 := by
    rw [div_le_iff₀ hDR]; exact_mod_cast h22
  split_ifs at h with heq
  · refine ⟨heq.le, ?_⟩
    have hv : valD desc b.1 D = 0 := by simpa using h
    have := valD_eq hD b.1 desc
    rw [hv] at this
    refine ⟨(b.1 : ℝ) / D, le_rfl, by rw [heq], ?_, h22'⟩
    push_cast at this
    rcases mul_eq_zero.mp this.symm with h0 | h0
    · exact absurd h0 hpow.ne'
    · exact h0
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨hlt, hsg⟩ := h
    refine ⟨hlt.le, ?_⟩
    have hl := valD_eq hD b.1 desc
    have hh := valD_eq hD b.2 desc
    have hcont : ContinuousOn (fun x => (QR desc).eval x) (Icc ((b.1 : ℝ) / D) ((b.2 : ℝ) / D)) :=
      (Polynomial.continuous _).continuousOn
    have hle : (b.1 : ℝ) / D ≤ (b.2 : ℝ) / D := div_le_div_of_nonneg_right (by exact_mod_cast hlt.le) hDR.le
    have hprod : (QR desc).eval ((b.1 : ℝ) / D) * (QR desc).eval ((b.2 : ℝ) / D) < 0 := by
      have h1 : ((valD desc b.1 D : ℤ) : ℝ) * (valD desc b.2 D : ℝ) < 0 := by exact_mod_cast hsg
      rw [hl, hh] at h1
      have e : (D : ℝ) ^ (desc.length - 1) * (QR desc).eval ((b.1 : ℝ) / D) *
          ((D : ℝ) ^ (desc.length - 1) * (QR desc).eval ((b.2 : ℝ) / D)) =
          ((D : ℝ) ^ (desc.length - 1)) ^ 2 * ((QR desc).eval ((b.1 : ℝ) / D) * (QR desc).eval ((b.2 : ℝ) / D)) := by
        ring
      rw [e] at h1
      by_contra hc
      push Not at hc
      have := mul_nonneg (sq_nonneg ((D : ℝ) ^ (desc.length - 1))) hc
      linarith
    rcases lt_or_gt_of_ne (show (QR desc).eval ((b.1 : ℝ) / D) ≠ 0 by
        intro h0; rw [h0, zero_mul] at hprod; exact lt_irrefl 0 hprod) with hneg | hpos
    · have hq : 0 < (QR desc).eval ((b.2 : ℝ) / D) := by
        by_contra hc; push Not at hc; nlinarith
      obtain ⟨ρ, hρ, hρ0⟩ := intermediate_value_Icc hle hcont ⟨hneg.le, hq.le⟩
      exact ⟨ρ, hρ.1, hρ.2, hρ0, h22'⟩
    · have hq : (QR desc).eval ((b.2 : ℝ) / D) < 0 := by
        by_contra hc; push Not at hc; nlinarith
      obtain ⟨ρ, hρ, hρ0⟩ := intermediate_value_Icc' hle hcont ⟨hq.le, hpos.le⟩
      exact ⟨ρ, hρ.1, hρ.2, hρ0, h22'⟩

/-- In a sorted list of valid brackets, every later bracket starts after the first one ends. -/
theorem bracketsSorted_lt {desc : List Int} {D : ℕ} :
    ∀ (b : ℕ × ℕ) (bs : List (ℕ × ℕ)), bracketsSorted (b :: bs) = true → (bs.all (bracketOK desc D)) = true →
      ∀ b' ∈ bs, b.2 < b'.1
  | b, [], _, _, b', hb' => absurd hb' (by simp)
  | b, b2 :: bs, hs, hall, b', hb' => by
    simp only [bracketsSorted, Bool.and_eq_true, decide_eq_true_eq] at hs
    simp only [List.all_cons, Bool.and_eq_true] at hall
    rcases List.mem_cons.mp hb' with rfl | hmem
    · exact hs.1
    · have h2 := bracketsSorted_lt b2 bs hs.2 hall.2 b' hmem
      have hb2 : b2.1 ≤ b2.2 := by
        unfold bracketOK at hall
        simp only [Bool.and_eq_true, decide_eq_true_eq] at hall
        obtain ⟨⟨_, h⟩, _⟩ := hall
        split_ifs at h with heq
        · exact heq.le
        · simp only [Bool.and_eq_true, decide_eq_true_eq] at h; exact h.1.le
      omega

theorem forall2_lo {desc : List Int} {D : ℕ} : ∀ {ρs : List ℝ} {brs : List (ℕ × ℕ)},
    List.Forall₂ (fun ρ (b : ℕ × ℕ) => (b.1 : ℝ) / D ≤ ρ ∧ ρ ≤ (b.2 : ℝ) / D ∧ (QR desc).eval ρ = 0 ∧
      (b.2 : ℝ) / D ≤ 22) ρs brs → ∀ ρ ∈ ρs, ∃ b ∈ brs, (b.1 : ℝ) / D ≤ ρ
  | [], [], _, ρ, hρ => absurd hρ (by simp)
  | ρ0 :: ρs, b :: bs, List.Forall₂.cons hab hF, ρ, hρ => by
    rcases List.mem_cons.mp hρ with rfl | hm
    · exact ⟨b, List.mem_cons_self .., hab.1⟩
    · obtain ⟨b', hb', h'⟩ := forall2_lo hF ρ hm
      exact ⟨b', List.mem_cons_of_mem _ hb', h'⟩

/-- The roots in the brackets: a strictly increasing list, one root per bracket. -/
theorem brackets_roots {desc : List Int} {D : ℕ} (hD : 0 < D) :
    ∀ (brs : List (ℕ × ℕ)), brs.all (bracketOK desc D) = true → bracketsSorted brs = true →
      ∃ ρs : List ℝ, List.Forall₂ (fun ρ (b : ℕ × ℕ) => (b.1 : ℝ) / D ≤ ρ ∧ ρ ≤ (b.2 : ℝ) / D ∧
          (QR desc).eval ρ = 0 ∧ (b.2 : ℝ) / D ≤ 22) ρs brs ∧ ρs.Pairwise (· < ·)
  | [], _, _ => ⟨[], List.Forall₂.nil, List.Pairwise.nil⟩
  | b :: bs, hall, hs => by
    have hall' := hall
    simp only [List.all_cons, Bool.and_eq_true] at hall'
    obtain ⟨_, ρ, hρ1, hρ2, hρ0, h22⟩ := bracket_root hD hall'.1
    have hs' : bracketsSorted bs = true := by
      cases bs with
      | nil => rfl
      | cons b2 bs => simp only [bracketsSorted, Bool.and_eq_true] at hs; exact hs.2
    obtain ⟨ρs, hF, hP⟩ := brackets_roots hD bs hall'.2 hs'
    have hlt := bracketsSorted_lt b bs hs hall'.2
    have hDR : (0 : ℝ) < D := by exact_mod_cast hD
    refine ⟨ρ :: ρs, List.Forall₂.cons ⟨hρ1, hρ2, hρ0, h22⟩ hF, List.Pairwise.cons ?_ hP⟩
    intro ρ' hρ'
    obtain ⟨b', hb', hρ'b'⟩ : ∃ b' ∈ bs, (b'.1 : ℝ) / D ≤ ρ' := forall2_lo hF ρ' hρ'
    have h1 : (b.2 : ℝ) / D < (b'.1 : ℝ) / D :=
      div_lt_div_of_pos_right (by exact_mod_cast hlt b' hb') hDR
    linarith

/-- `deg Q` distinct real roots are all the roots of `toC Q`. -/
theorem roots_eq_of_list {desc : List Int} (hd : 2 ≤ desc.length) (hh : desc.headD 0 ≠ 0) {ρs : List ℝ}
    (hlen : ρs.length = desc.length - 1) (hp : ρs.Pairwise (· < ·)) (hr : ∀ ρ ∈ ρs, (QR desc).eval ρ = 0) :
    (toC (Qd desc)).roots = ((ρs.map (fun x : ℝ => (x : ℂ)) : List ℂ) : Multiset ℂ) := by
  obtain ⟨b, t, rfl⟩ : ∃ b t, desc = b :: t := by
    cases desc with
    | nil => simp at hd
    | cons b t => exact ⟨b, t, rfl⟩
  have hb : b ≠ 0 := by simpa using hh
  have hne : toC (Qd (b :: t)) ≠ 0 := by
    unfold AuxCommon.toC
    exact (Polynomial.map_ne_zero_iff (Int.castRingHom ℂ).injective_int).mpr (Qd_cons_ne_zero hb t)
  have hdeg : (toC (Qd (b :: t))).natDegree = t.length := by
    unfold AuxCommon.toC
    rw [natDegree_map_eq_of_injective (Int.castRingHom ℂ).injective_int, natDegree_Qd_cons hb]
  have hnd : (((ρs.map (fun x : ℝ => (x : ℂ))) : List ℂ) : Multiset ℂ).Nodup := by
    rw [Multiset.coe_nodup]
    exact (hp.imp (fun h => ne_of_lt h)).map _ (fun _ _ h => by exact_mod_cast h)
  have hle : (((ρs.map (fun x : ℝ => (x : ℂ))) : List ℂ) : Multiset ℂ) ≤ (toC (Qd (b :: t))).roots := by
    rw [Multiset.le_iff_subset hnd]
    intro z hz
    rw [Multiset.mem_coe, List.mem_map] at hz
    obtain ⟨ρ, hρ, rfl⟩ := hz
    rw [mem_roots hne, IsRoot.def, toC_eval_ofReal, hr ρ hρ]
    simp
  apply (Multiset.eq_of_le_of_card_le hle _).symm
  rw [Multiset.coe_card, List.length_map, hlen]
  calc Multiset.card (toC (Qd (b :: t))).roots ≤ (toC (Qd (b :: t))).natDegree := card_roots' _
    _ = t.length := hdeg
    _ = (b :: t).length - 1 := by simp

/-- One bracket: the checker's term is at most `2^P U(ρ)` for the root `ρ` in the bracket. -/
theorem bracket_term_le {b : ℕ × ℕ} {ρ : ℝ}
    (hρ1 : (b.1 : ℝ) / (DEN * 2 ^ 60 : ℕ) ≤ ρ) (hρ2 : ρ ≤ (b.2 : ℝ) / (DEN * 2 ^ 60 : ℕ))
    (h22 : (b.2 : ℝ) / (DEN * 2 ^ 60 : ℕ) ≤ 22) :
    ((uLo (pointPass TAB L2 (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) 60 b.1
        (logT TAB L2 (DEN * 2 ^ 60) 1)) (DEN * 2 ^ 60) -
      cdiv (((47 * sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) * (b.2 - b.1) : ℕ) : ℤ) * 2 ^ P)
        (DEN * 2 ^ 60 * 2 ^ QS) : ℤ) : ℝ) ≤ 2 ^ P * UR ρ := by
  have hD : 0 < DEN * 2 ^ 60 := Nat.mul_pos (by decide) (Nat.two_pow_pos 60)
  have hDR : (0 : ℝ) < ((DEN * 2 ^ 60 : ℕ) : ℝ) := by exact_mod_cast hD
  have hP : (0 : ℝ) < 2 ^ P := by positivity
  have hQS : (0 : ℝ) < 2 ^ QS := by positivity
  have hLDs := logT_DU 60
  have hU0 : (uLo (pointPass TAB L2 (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) 60 b.1
      (logT TAB L2 (DEN * 2 ^ 60) 1)) (DEN * 2 ^ 60) : ℝ) ≤ 2 ^ P * UR (b.1 / (DEN * 2 ^ 60 : ℕ)) :=
    uLo_le_of hD (pointPass_sound (X := b.1) hLDs).1
  have hsC := sumC_ge
  have hdU := le_cdiv (((47 * sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) * (b.2 - b.1) : ℕ) : ℤ) * 2 ^ P)
    (b := DEN * 2 ^ 60 * 2 ^ QS) (Nat.mul_pos hD (Nat.two_pow_pos QS))
  generalize uLo (pointPass TAB L2 (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) 60 b.1
    (logT TAB L2 (DEN * 2 ^ 60) 1)) (DEN * 2 ^ 60) = ul at hU0 ⊢
  generalize cdiv (((47 * sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) * (b.2 - b.1) : ℕ) : ℤ) * 2 ^ P)
    (DEN * 2 ^ 60 * 2 ^ QS) = dU at hdU ⊢
  generalize sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) = sC at hsC hdU
  set D : ℕ := DEN * 2 ^ 60 with hDdef
  set u : ℝ := (b.1 : ℝ) / D with hudef
  set SC : ℝ := ∑ i ∈ Finset.range (NN + 1), |CR i| with hSC
  have hSC0 : 0 ≤ SC := Finset.sum_nonneg (fun i _ => abs_nonneg _)
  have hu0 : 0 ≤ u := div_nonneg (Nat.cast_nonneg _) hDR.le
  have hbl : b.1 ≤ b.2 := by
    have : (b.1 : ℝ) / D ≤ (b.2 : ℝ) / D := le_trans hρ1 hρ2
    have := (div_le_div_iff_of_pos_right hDR).mp this
    exact_mod_cast this
  have hHD : ρ - u ≤ ((b.2 - b.1 : ℕ) : ℝ) / D := by
    rw [Nat.cast_sub hbl, sub_div]; linarith
  have hUx : UR u ≤ UR ρ + 47 * SC * (((b.2 - b.1 : ℕ) : ℝ) / D) := by
    have h : UR u ≤ UR ρ + 47 * SC * |ρ - u| :=
      UR_le_add (abs_eR_sub_le (le_trans hu0 hρ1) (le_trans hρ2 h22)) (abs_eR_sub_le hu0 (by linarith))
    rw [abs_of_nonneg (by linarith)] at h
    have := mul_le_mul_of_nonneg_left hHD (mul_nonneg (by norm_num : (0 : ℝ) ≤ 47) hSC0)
    linarith
  have hUxP : 2 ^ P * UR u ≤ 2 ^ P * UR ρ + 2 ^ P * (47 * SC * (((b.2 - b.1 : ℕ) : ℝ) / D)) := by
    have := mul_le_mul_of_nonneg_left hUx hP.le
    linarith
  have hdU' : 2 ^ P * (47 * SC * (((b.2 - b.1 : ℕ) : ℝ) / D)) ≤ (dU : ℝ) := by
    refine le_trans ?_ hdU
    have hDQ : ((D * 2 ^ QS : ℕ) : ℝ) = (D : ℝ) * 2 ^ QS := by push_cast; ring
    rw [hDQ, le_div_iff₀ (mul_pos hDR hQS)]
    have e : 2 ^ P * (47 * SC * (((b.2 - b.1 : ℕ) : ℝ) / D)) * ((D : ℝ) * 2 ^ QS) =
        47 * (2 ^ QS * SC) * ((b.2 - b.1 : ℕ) : ℝ) * 2 ^ P := by field_simp
    rw [e]
    push_cast
    have h47 : (0 : ℝ) ≤ 47 * ((b.2 - b.1 : ℕ) : ℝ) * 2 ^ P :=
      mul_nonneg (mul_nonneg (by norm_num) (Nat.cast_nonneg _)) hP.le
    have hsC' : 2 ^ QS * SC ≤ (sC : ℝ) := hsC
    push_cast at h47
    nlinarith
  push_cast
  linarith

/-- The checker's sum over the brackets is at most `2^P ∑ U(ρ)`. -/
theorem rootsULo_le : ∀ (brs : List (ℕ × ℕ)) (ρs : List ℝ),
    List.Forall₂ (fun ρ (b : ℕ × ℕ) => (b.1 : ℝ) / (DEN * 2 ^ 60 : ℕ) ≤ ρ ∧ ρ ≤ (b.2 : ℝ) / (DEN * 2 ^ 60 : ℕ) ∧
      (b.2 : ℝ) / (DEN * 2 ^ 60 : ℕ) ≤ 22) ρs brs →
    ((brs.map (fun b : ℕ × ℕ => uLo (pointPass TAB L2 (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) 60 b.1
        (logT TAB L2 (DEN * 2 ^ 60) 1)) (DEN * 2 ^ 60) -
      cdiv (((47 * sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) * (b.2 - b.1) : ℕ) : ℤ) * 2 ^ P)
        (DEN * 2 ^ 60 * 2 ^ QS))).sum : ℝ) ≤ 2 ^ P * (ρs.map UR).sum
  | [], [], _ => by
    simp only [List.map_nil, List.sum_nil, Int.cast_zero, mul_zero, le_refl]
  | b :: bs, ρ :: ρs, List.Forall₂.cons h hF => by
    have h1 := bracket_term_le h.1 h.2.1 h.2.2
    have h2 := rootsULo_le bs ρs hF
    simp only [List.map_cons, List.sum_cons]
    push_cast at h1 h2 ⊢
    linarith

theorem rootsULo_eq (k : ℕ) (brs : List (ℕ × ℕ)) : rootsULo mkCtxU k brs =
    (brs.map (fun b : ℕ × ℕ => uLo (pointPass TAB L2 (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) k b.1
        (logT TAB L2 (DEN * 2 ^ k) 1)) (DEN * 2 ^ k) -
      cdiv (((47 * sumAbsC (mkRecsU TUCore.GS TUCore.nodes TUCore.gvals) * (b.2 - b.1) : ℕ) : ℤ) * 2 ^ P)
        (DEN * 2 ^ k * 2 ^ QS))).sum := by
  unfold rootsULo
  rw [ctxU_tab, ctxU_l2, ctxU_rs, ctxU_sumC]
  exact (foldl_add_eq_sum _ brs 0).trans (zero_add _)

theorem sLog_aux {n d : ℕ} (hd : 0 < d) {L : ℤ} {y : ℝ} (hL : (L : ℝ) ≤ 2 ^ P * y) :
    (fdiv ((n : ℤ) * L) d : ℝ) ≤ 2 ^ P * ((n : ℝ) / d * y) := by
  have h := fdiv_le ((n : ℤ) * L) hd
  refine le_trans h ?_
  have hdR : (0 : ℝ) < d := by exact_mod_cast hd
  rw [div_le_iff₀ hdR]
  push_cast
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg _
  have := mul_le_mul_of_nonneg_left hL hn
  have e : 2 ^ P * ((n : ℝ) / d * y) * d = (n : ℝ) * (2 ^ P * y) := by
    field_simp
  rw [e]
  linarith

theorem sLogLo_le {a : ℤ} (ha : a ≠ 0) : (sLogLo mkCtxU a : ℝ) ≤ 2 ^ P * (sR * Real.log |(a : ℝ)|) := by
  unfold sLogLo
  rw [ctxU_tab, ctxU_l2]
  have hpos : 0 < a.natAbs := Int.natAbs_pos.mpr ha
  have hL := (logT_sound (a := a.natAbs) (b := 1) hpos one_pos).1
  simp only [Nat.cast_one, div_one] at hL
  have hab : ((a.natAbs : ℕ) : ℝ) = |(a : ℝ)| := by rw [Nat.cast_natAbs, Int.cast_abs]
  rw [hab] at hL
  have hden : 0 < sDenU := Nat.mul_pos (Nat.mul_pos (by norm_num) (by unfold DEN; norm_num)) (pow_pos (by norm_num) _)
  exact sLog_aux hden hL

theorem forall2_root {desc : List Int} {D : ℕ} : ∀ {ρs : List ℝ} {brs : List (ℕ × ℕ)},
    List.Forall₂ (fun ρ (b : ℕ × ℕ) => (b.1 : ℝ) / D ≤ ρ ∧ ρ ≤ (b.2 : ℝ) / D ∧ (QR desc).eval ρ = 0 ∧
      (b.2 : ℝ) / D ≤ 22) ρs brs → ∀ ρ ∈ ρs, (QR desc).eval ρ = 0
  | [], [], _, ρ, hρ => absurd hρ (by simp)
  | ρ0 :: ρs, b :: bs, List.Forall₂.cons hab hF, ρ, hρ => by
    rcases List.mem_cons.mp hρ with rfl | hm
    · exact hab.2.2.1
    · exact forall2_root hF ρ hm

/-- **(C2) for a real-rooted polynomial.** -/
theorem c2OK_sound {desc : List Int} {brs : List (ℕ × ℕ)} (hd : 2 ≤ desc.length) (hh : desc.headD 0 ≠ 0)
    (hpot : ∀ x : ℝ, potC NN eR GR (x : ℂ) = UR x) (h : c2OK mkCtxU desc brs = true) :
    0 ≤ sR * Real.log |((Qd desc).leadingCoeff : ℝ)| + ((toC (Qd desc)).roots.map (potC NN eR GR)).sum := by
  unfold c2OK at h
  simp only [Bool.and_eq_true, beq_iff_eq, decide_eq_true_eq] at h
  obtain ⟨⟨⟨hlen, hall⟩, hsort⟩, hlo⟩ := h
  have hD : 0 < DEN * 2 ^ 60 := Nat.mul_pos (by decide) (Nat.two_pow_pos 60)
  have hP : (0 : ℝ) < 2 ^ P := by positivity
  obtain ⟨ρs, hF, hpw⟩ := brackets_roots hD brs hall hsort
  have hlenρ : ρs.length = desc.length - 1 := by rw [hF.length_eq, hlen]
  have hr : ∀ ρ ∈ ρs, (QR desc).eval ρ = 0 := forall2_root hF
  have hroots := roots_eq_of_list hd hh hlenρ hpw hr
  have hsum : ((toC (Qd desc)).roots.map (potC NN eR GR)).sum = (ρs.map UR).sum := by
    rw [hroots, Multiset.map_coe, Multiset.sum_coe, List.map_map]
    have hc : ∀ x ∈ ρs, (potC NN eR GR ∘ fun x : ℝ => (x : ℂ)) x = UR x := fun x _ => hpot x
    rw [List.map_congr_left hc]
  have hF' : List.Forall₂ (fun ρ (b : ℕ × ℕ) => (b.1 : ℝ) / (DEN * 2 ^ 60 : ℕ) ≤ ρ ∧
      ρ ≤ (b.2 : ℝ) / (DEN * 2 ^ 60 : ℕ) ∧ (b.2 : ℝ) / (DEN * 2 ^ 60 : ℕ) ≤ 22) ρs brs :=
    hF.imp (fun _ _ h => ⟨h.1, h.2.1, h.2.2.2⟩)
  have h1 := rootsULo_le brs ρs hF'
  rw [← rootsULo_eq 60] at h1
  obtain ⟨b0, t, rfl⟩ : ∃ b0 t, desc = b0 :: t := by
    cases desc with
    | nil => simp at hd
    | cons b0 t => exact ⟨b0, t, rfl⟩
  have hb0 : b0 ≠ 0 := by simpa using hh
  have h2 := sLogLo_le hb0
  rw [leadingCoeff_Qd_cons hb0, hsum]
  have h3 : (0 : ℝ) ≤ (c2Lo mkCtxU (b0 :: t) brs : ℝ) := by exact_mod_cast hlo
  have e : (c2Lo mkCtxU (b0 :: t) brs : ℝ) = (sLogLo mkCtxU b0 : ℝ) + (rootsULo mkCtxU 60 brs : ℝ) := by
    simp only [c2Lo, List.headD_cons]; push_cast; ring
  rw [e] at h3
  have : 0 ≤ 2 ^ P * (sR * Real.log |(b0 : ℝ)| + (ρs.map UR).sum) := by nlinarith
  exact (mul_nonneg_iff_of_pos_left hP).mp this

end TPUpper.Cert
