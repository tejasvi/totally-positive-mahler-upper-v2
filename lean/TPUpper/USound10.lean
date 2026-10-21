import TPUpper.USound9

/-!
# Soundness of the checker, part 10: leaves and the tiling. Adapted from `TPMahler.CheckSound10`.
-/

open Polynomial Set

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPCore (P QS Leaf ptEq)
open TPMahler.Cert (ptEq_eq ptEq_trans QR)

theorem DEN_pow_pos (k : ℕ) : (0 : ℝ) < ((DEN * 2 ^ k : ℕ) : ℝ) := by
  exact_mod_cast Nat.mul_pos (by decide) (Nat.two_pow_pos k)

theorem ptEq_eq {a ka b kb : ℕ} (h : ptEq a ka b kb = true) : a * 2 ^ kb = b * 2 ^ ka := by
  unfold ptEq at h
  simpa using h

/-- `ptEq` is equality of the points `a / (400 · 2^ka)` and `b / (400 · 2^kb)`. -/
theorem ptEq_realU {a ka b kb : ℕ} (h : ptEq a ka b kb = true) :
    (a : ℝ) / (DEN * 2 ^ ka : ℕ) = (b : ℝ) / (DEN * 2 ^ kb : ℕ) := by
  have h' : (a : ℝ) * 2 ^ kb = b * 2 ^ ka := by exact_mod_cast ptEq_eq h
  rw [div_eq_div_iff (DEN_pow_pos ka).ne' (DEN_pow_pos kb).ne']
  push_cast
  linear_combination (DEN : ℝ) * h'

theorem ptEq_trans {a ka b kb c kc : ℕ} (h1 : ptEq a ka b kb = true) (h2 : ptEq b kb c kc = true) :
    ptEq a ka c kc = true := by
  have e1 := ptEq_eq h1
  have e2 := ptEq_eq h2
  unfold ptEq
  simp only [beq_iff_eq]
  apply Nat.eq_of_mul_eq_mul_right (Nat.two_pow_pos kb)
  calc a * 2 ^ kc * 2 ^ kb = (a * 2 ^ kb) * 2 ^ kc := by ring
    _ = (b * 2 ^ ka) * 2 ^ kc := by rw [e1]
    _ = (b * 2 ^ kc) * 2 ^ ka := by ring
    _ = (c * 2 ^ kb) * 2 ^ ka := by rw [e2]
    _ = c * 2 ^ ka * 2 ^ kb := by ring

/-- A passing chord leaf has `Xp < Xq`. -/
theorem chordLBU_lt {c : UCtx} {Xp Xq k : ℕ} {x0q : Bool} {mask : ℕ} {v : ℤ × ℤ}
    (h : chordLBU c Xp Xq k x0q mask = some v) : Xp < Xq := by
  by_contra hlt
  unfold chordLBU at h
  dsimp only at h
  rw [if_neg (fun hc => hlt hc.1)] at h
  exact absurd h (by simp)

/-- **One leaf.** -/
theorem leafOKU_sound {l : Leaf} (h : leafOKU mkCtxU l = true)
    (hv : (l.X2 : ℝ) / (DEN * 2 ^ l.k : ℕ) ≤ 22) :
    (l.X1 : ℝ) / (DEN * 2 ^ l.k : ℕ) < (l.X2 : ℝ) / (DEN * 2 ^ l.k : ℕ) ∧
    ∀ x ∈ Icc ((l.X1 : ℝ) / (DEN * 2 ^ l.k : ℕ)) ((l.X2 : ℝ) / (DEN * 2 ^ l.k : ℕ)),
      (∀ j < 21, (QR (TUCore.polys.getD j [])).eval x ≠ 0) → 0 < hR x := by
  have hP : (0 : ℝ) < 2 ^ P := by positivity
  have hD := DEN_pow_pos l.k
  unfold leafOKU at h
  split_ifs at h with hk
  · unfold chordOKU at h
    rcases hc : chordLBU mkCtxU l.X1 l.X2 l.k l.x0q l.mask with _ | ⟨lp, lq⟩
    · rw [hc] at h; exact absurd h (by simp)
    · rw [hc] at h
      simp only [Bool.and_eq_true, decide_eq_true_eq] at h
      have hlt := chordLBU_lt hc
      refine ⟨div_lt_div_of_pos_right (by exact_mod_cast hlt) hD, ?_⟩
      intro x hx _
      have h1 := chordLBU_sound hc x hx
      have h2 : (0 : ℝ) < min (lp : ℝ) lq := lt_min (by exact_mod_cast h.1) (by exact_mod_cast h.2)
      have h3 : 0 < min (lp : ℝ) lq / 2 ^ P := div_pos h2 hP
      linarith
  · unfold windowOKU at h
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    refine ⟨div_lt_div_of_pos_right (by exact_mod_cast h.1) hD, ?_⟩
    intro x hx hQ
    have h1 := windowLBU_sound h.1 hv hx hQ
    have h3 : 0 < (windowLBU mkCtxU l.X1 l.X2 l.k : ℝ) / 2 ^ P :=
      div_pos (by exact_mod_cast h.2) hP
    linarith

/-- **The tiling.** -/
theorem leavesOKU_sound : ∀ (ls : List Leaf) (X kx XT kT : ℕ),
    (XT : ℝ) / (DEN * 2 ^ kT : ℕ) ≤ 22 → leavesOKU mkCtxU X kx ls XT kT = true →
    (X : ℝ) / (DEN * 2 ^ kx : ℕ) ≤ (XT : ℝ) / (DEN * 2 ^ kT : ℕ) ∧
    ∀ x ∈ Ico ((X : ℝ) / (DEN * 2 ^ kx : ℕ)) ((XT : ℝ) / (DEN * 2 ^ kT : ℕ)),
      (∀ j < 21, (QR (TUCore.polys.getD j [])).eval x ≠ 0) → 0 < hR x
  | [], X, kx, XT, kT, _, h => by
    simp only [leavesOKU] at h
    have he := ptEq_realU h
    refine ⟨he.le, ?_⟩
    intro x hx
    rw [he] at hx
    exact absurd hx.2 (not_lt.mpr hx.1)
  | l :: ls, X, kx, XT, kT, hT, h => by
    simp only [leavesOKU, Bool.and_eq_true] at h
    obtain ⟨⟨h1, h2⟩, h3⟩ := h
    obtain ⟨hle, hrest⟩ := leavesOKU_sound ls l.X2 l.k XT kT hT h3
    obtain ⟨hlt, hleaf⟩ := leafOKU_sound h2 (le_trans hle hT)
    have he := ptEq_realU h1
    refine ⟨by rw [he]; linarith, ?_⟩
    intro x hx hQ
    rw [he] at hx
    by_cases hxl : x ≤ (l.X2 : ℝ) / (DEN * 2 ^ l.k : ℕ)
    · exact hleaf x ⟨hx.1, hxl⟩ hQ
    · exact hrest x ⟨le_of_lt (not_le.mp hxl), hx.2⟩ hQ

/-- Changing the start point of a tiling to an equal point. -/
theorem leavesOKU_start {c : UCtx} {X kx Y ky : ℕ} (hXY : ptEq X kx Y ky = true) :
    ∀ (ls : List Leaf) (XT kT : ℕ), leavesOKU c Y ky ls XT kT = true → leavesOKU c X kx ls XT kT = true
  | [], XT, kT, h => by
    simp only [leavesOKU] at h ⊢
    exact ptEq_trans hXY h
  | l :: ls, XT, kT, h => by
    simp only [leavesOKU, Bool.and_eq_true] at h ⊢
    exact ⟨⟨ptEq_trans hXY h.1.1, h.1.2⟩, h.2⟩

theorem leavesOKU_append (c : UCtx) : ∀ (l1 l2 : List Leaf) (X kx Y ky XT kT : ℕ),
    leavesOKU c X kx l1 Y ky = true → leavesOKU c Y ky l2 XT kT = true → leavesOKU c X kx (l1 ++ l2) XT kT = true
  | [], l2, X, kx, Y, ky, XT, kT, h1, h2 => by
    simp only [leavesOKU] at h1
    exact leavesOKU_start h1 l2 XT kT h2
  | l :: ls, l2, X, kx, Y, ky, XT, kT, h1, h2 => by
    simp only [leavesOKU, Bool.and_eq_true, List.cons_append] at h1 ⊢
    exact ⟨h1.1, leavesOKU_append c ls l2 l.X2 l.k Y ky XT kT h1.2 h2⟩

theorem leavesOKU_of_chain (c : UCtx) : ∀ (ls : List Leaf) (X kx XT kT : ℕ),
    TPMahler.Cert.chainOK X kx ls XT kT = true → (∀ l ∈ ls, leafOKU c l = true) → leavesOKU c X kx ls XT kT = true
  | [], X, kx, XT, kT, h, _ => by
    simp only [TPMahler.Cert.chainOK] at h
    simpa only [leavesOKU] using h
  | l :: ls, X, kx, XT, kT, h, hl => by
    simp only [TPMahler.Cert.chainOK, Bool.and_eq_true] at h
    simp only [leavesOKU, Bool.and_eq_true]
    exact ⟨⟨h.1, hl l (List.mem_cons_self ..)⟩,
      leavesOKU_of_chain c ls l.X2 l.k XT kT h.2 (fun l' hl' => hl l' (List.mem_cons_of_mem _ hl'))⟩

end TPUpper.Cert
