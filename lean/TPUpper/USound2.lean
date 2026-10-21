import TPUpper.USound1

/-!
# Soundness of the checker, part 2: the potential at points (`pointPass`)

`pointPass_sound`: for `x = X / D`, `D = 400 · 2^k`, the U-sum of the checker encloses `4 · 2^(P+QS) · D² · U(x)`;
`uHi_sound`, `uLo_sound`: `uLo S D ≤ 2^P U(x) ≤ uHi S D` (copy of `TPMahler.CheckSound2` for the data of this certificate).
-/

open Polynomial

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPCore (P QS NRec fdiv cdiv imul yEncl pointStep pointPass uHi logT TAB L2)
open TPMahler.Cert (fdiv_le le_cdiv imul_spec yEncl_spec dist_cast logT_sound)

/-- The distance of node `n` (scaled) to the point `X`, as in `pointStep`. -/
theorem eR_sub_x (i k X : ℕ) :
    eR i - (X : ℝ) / ((DEN * 2 ^ k : ℕ) : ℝ) = ((nodes.getD i 0 : ℝ) * 2 ^ k - X) / ((DEN * 2 ^ k : ℕ) : ℝ) := by
  unfold eR DEN
  push_cast
  field_simp

/-- One step of `pointPass`. -/
theorem pointStep_spec {k X i : ℕ} (hi : i ≤ NN) {LD : ℤ × ℤ}
    (hLD : (LD.1 : ℝ) ≤ 2 ^ P * Real.log (DEN * 2 ^ k : ℕ) ∧ 2 ^ P * Real.log (DEN * 2 ^ k : ℕ) ≤ LD.2)
    (a : ℤ × ℤ) :
    let D : ℕ := DEN * 2 ^ k
    let a' := pointStep TAB L2 k X LD a (recOf i)
    (a'.1 : ℝ) - a.1 ≤ 4 * 2 ^ (P + QS) * (D : ℝ) ^ 2 * (CR i * Hk (eR i - X / D)) ∧
      4 * 2 ^ (P + QS) * (D : ℝ) ^ 2 * (CR i * Hk (eR i - X / D)) ≤ (a'.2 : ℝ) - a.2 := by
  intro D a'
  obtain ⟨hclo, hchi, hsg0, _, hn⟩ := recOf_spec hi
  have hD : 0 < D := Nat.mul_pos (by decide) (Nat.two_pow_pos k)
  have hDR : (0 : ℝ) < D := by exact_mod_cast hD
  have hPQ : (2 : ℝ) ^ (P + QS) = 2 ^ P * 2 ^ QS := pow_add 2 P QS
  by_cases hs : (recOf i).sg = 0
  · have hC : CR i = 0 := hsg0.mp hs
    have : a' = a := by simp only [a', pointStep, hs, if_true]
    rw [this, hC]; simp
  · have hstep : a' = (let ni : ℕ := (recOf i).n * 2 ^ k
                       let ad : ℕ := if X ≤ ni then ni - X else X - ni
                       if ad = 0 then a else
                       let u := imul ((recOf i).clo, (recOf i).chi) (yEncl ad (logT TAB L2 ad 1) LD)
                       (a.1 + u.1, a.2 + u.2)) := by
      simp only [a', pointStep, hs, if_false]
    rw [hstep]
    simp only
    rw [hn]
    set ad : ℕ := if X ≤ nodes.getD i 0 * 2 ^ k then nodes.getD i 0 * 2 ^ k - X else X - nodes.getD i 0 * 2 ^ k
      with hadef
    have hadR : (ad : ℝ) = |(nodes.getD i 0 : ℝ) * 2 ^ k - X| := dist_cast _ _ _
    have ht : eR i - (X : ℝ) / D = ((nodes.getD i 0 : ℝ) * 2 ^ k - X) / D := eR_sub_x i k X
    by_cases had : ad = 0
    · rw [if_pos had]
      have h0 : (nodes.getD i 0 : ℝ) * 2 ^ k - X = 0 := by
        have : |(nodes.getD i 0 : ℝ) * 2 ^ k - X| = 0 := by rw [← hadR, had]; simp
        exact abs_eq_zero.mp this
      rw [ht, h0]
      simp [Hk]
    · rw [if_neg had]
      simp only
      have hpos : 0 < ad := Nat.pos_of_ne_zero had
      have habs : |eR i - (X : ℝ) / D| = ad / D := by
        rw [ht, abs_div, abs_of_pos hDR, hadR]
      have hy := yEncl_spec hpos hD hLD habs
      have hc : ((recOf i).clo : ℝ) ≤ 2 ^ QS * CR i ∧ 2 ^ QS * CR i ≤ ((recOf i).chi : ℝ) := ⟨hclo, hchi⟩
      have hm := imul_spec (a := ((recOf i).clo, (recOf i).chi)) hc hy
      have heq : 4 * 2 ^ (P + QS) * (D : ℝ) ^ 2 * (CR i * Hk (eR i - X / D)) =
          (2 ^ QS * CR i) * (4 * 2 ^ P * (D : ℝ) ^ 2 * Hk (eR i - X / D)) := by rw [hPQ]; ring
      rw [heq]
      push_cast
      constructor <;> linarith [hm.1, hm.2]

/-- `pointPass` over the first `n` records. -/
theorem pointPass_range {k X : ℕ} {LD : ℤ × ℤ}
    (hLD : (LD.1 : ℝ) ≤ 2 ^ P * Real.log (DEN * 2 ^ k : ℕ) ∧ 2 ^ P * Real.log (DEN * 2 ^ k : ℕ) ≤ LD.2) :
    ∀ n ≤ NN + 1,
      let D : ℕ := DEN * 2 ^ k
      let S := ((List.range n).map recOf).foldl (pointStep TAB L2 k X LD) (0, 0)
      (S.1 : ℝ) ≤ 4 * 2 ^ (P + QS) * (D : ℝ) ^ 2 * ∑ i ∈ Finset.range n, CR i * Hk (eR i - X / D) ∧
        4 * 2 ^ (P + QS) * (D : ℝ) ^ 2 * ∑ i ∈ Finset.range n, CR i * Hk (eR i - X / D) ≤ (S.2 : ℝ) := by
  intro n
  induction n with
  | zero => intro _; simp
  | succ n ih =>
    intro hn
    obtain ⟨ih1, ih2⟩ := ih (by omega)
    simp only [List.range_succ, List.map_append, List.map_cons, List.map_nil, List.foldl_append,
      List.foldl_cons, List.foldl_nil, Finset.sum_range_succ, mul_add]
    obtain ⟨h1, h2⟩ := pointStep_spec (k := k) (X := X) (i := n) (by omega) hLD
      (((List.range n).map recOf).foldl (pointStep TAB L2 k X LD) (0, 0))
    constructor <;> linarith

/-- **The checker's potential at a point.** -/
theorem pointPass_sound {k X : ℕ} {LD : ℤ × ℤ}
    (hLD : (LD.1 : ℝ) ≤ 2 ^ P * Real.log (DEN * 2 ^ k : ℕ) ∧ 2 ^ P * Real.log (DEN * 2 ^ k : ℕ) ≤ LD.2) :
    let D : ℕ := DEN * 2 ^ k
    let S := pointPass TAB L2 (mkRecsU GS nodes gvals) k X LD
    (S.1 : ℝ) ≤ 4 * 2 ^ (P + QS) * (D : ℝ) ^ 2 * UR (X / D) ∧
      4 * 2 ^ (P + QS) * (D : ℝ) ^ 2 * UR (X / D) ≤ (S.2 : ℝ) := by
  intro D S
  have h := pointPass_range (X := X) hLD (NN + 1) le_rfl
  simp only at h
  have hS : S = ((List.range (NN + 1)).map recOf).foldl (pointStep TAB L2 k X LD) (0, 0) := by
    simp only [S, pointPass, mkRecs_eq]
  rw [hS]
  unfold UR
  exact h

/-- `2^P U(x) ≤ uHi S D`. -/
theorem uHi_sound {k X : ℕ} {S : ℤ × ℤ}
    (hS : 4 * 2 ^ (P + QS) * ((DEN * 2 ^ k : ℕ) : ℝ) ^ 2 * UR (X / (DEN * 2 ^ k : ℕ)) ≤ (S.2 : ℝ)) :
    2 ^ P * UR (X / (DEN * 2 ^ k : ℕ)) ≤ (uHi S (DEN * 2 ^ k) : ℝ) := by
  have hD : 0 < DEN * 2 ^ k := Nat.mul_pos (by decide) (Nat.two_pow_pos k)
  have hden : 0 < DEN * 2 ^ k * (DEN * 2 ^ k) * 2 ^ (QS + 2) := by positivity
  have h := le_cdiv S.2 hden
  unfold uHi
  refine le_trans ?_ h
  rw [le_div_iff₀ (by exact_mod_cast hden)]
  have hPQ : (2 : ℝ) ^ (P + QS) = 2 ^ P * 2 ^ QS := pow_add 2 P QS
  have h2 : (2 : ℝ) ^ (QS + 2) = 2 ^ QS * 4 := by rw [pow_add]; norm_num
  rw [hPQ] at hS
  push_cast at hS ⊢
  rw [h2]
  have e : 2 ^ P * UR (X / ((DEN : ℝ) * 2 ^ k)) * ((DEN : ℝ) * 2 ^ k * ((DEN : ℝ) * 2 ^ k) * (2 ^ QS * 4)) =
      4 * (2 ^ P * 2 ^ QS) * ((DEN : ℝ) * 2 ^ k) ^ 2 * UR (X / ((DEN : ℝ) * 2 ^ k)) := by ring
  linarith

/-- `2^P U(x) ≥ uLo S D`. -/
theorem uLo_sound {k X : ℕ} {S : ℤ × ℤ}
    (hS : (S.1 : ℝ) ≤ 4 * 2 ^ (P + QS) * ((DEN * 2 ^ k : ℕ) : ℝ) ^ 2 * UR (X / (DEN * 2 ^ k : ℕ))) :
    (uLo S (DEN * 2 ^ k) : ℝ) ≤ 2 ^ P * UR (X / (DEN * 2 ^ k : ℕ)) := by
  have hD : 0 < DEN * 2 ^ k := Nat.mul_pos (by decide) (Nat.two_pow_pos k)
  have hden : 0 < DEN * 2 ^ k * (DEN * 2 ^ k) * 2 ^ (QS + 2) := by positivity
  have h := fdiv_le S.1 hden
  unfold uLo
  refine le_trans h ?_
  rw [div_le_iff₀ (by exact_mod_cast hden)]
  have hPQ : (2 : ℝ) ^ (P + QS) = 2 ^ P * 2 ^ QS := pow_add 2 P QS
  have h2 : (2 : ℝ) ^ (QS + 2) = 2 ^ QS * 4 := by rw [pow_add]; norm_num
  rw [hPQ] at hS
  push_cast at hS ⊢
  rw [h2]
  have e : 2 ^ P * UR (X / ((DEN : ℝ) * 2 ^ k)) * ((DEN : ℝ) * 2 ^ k * ((DEN : ℝ) * 2 ^ k) * (2 ^ QS * 4)) =
      4 * (2 ^ P * 2 ^ QS) * ((DEN : ℝ) * 2 ^ k) ^ 2 * UR (X / ((DEN : ℝ) * 2 ^ k)) := by ring
  linarith

end TPUpper.Cert
