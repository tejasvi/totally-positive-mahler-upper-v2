import TPUpper.UQuadD
import TUCore.Quad15Data

/-!
# Composition of the quadrature check from chunks (for the K track)

`quadSum_append`: the quadrature sums of two consecutive lists of pieces add up; `quadChunk_step` is its form for the
chunks `(quad15.drop a).take n` decided separately by the kernel.
-/

namespace TPUpper.Cert

open TUCore TPCore

theorem take_append_drop_gen {α : Type*} (l : List α) (a n : ℕ) : (l.drop a).take n ++ l.drop (a + n) = l.drop a := by
  have h := List.take_append_drop n (l.drop a)
  rwa [List.drop_drop] at h

/-- Changing the start point of a quadrature to an equal point. -/
theorem quadSum_start {tab : ℕ} {l2 : ℕ × ℕ} {desc : List Int} {X kx Y ky : ℕ} (hXY : ptEq X kx Y ky = true) :
    ∀ (ps : List (ℕ × ℕ × ℕ × ℕ × ℕ)) (XT kT : ℕ) (v : ℤ),
      quadSum tab l2 desc Y ky ps XT kT = some v → quadSum tab l2 desc X kx ps XT kT = some v
  | [], XT, kT, v, h => by
    simp only [quadSum] at h ⊢
    split_ifs at h with h1
    rw [if_pos (ptEq_trans hXY h1)]
    exact h
  | (i, Xa, Xb, k, kind) :: ps, XT, kT, v, h => by
    simp only [quadSum] at h ⊢
    split_ifs at h with h1
    simp only [Bool.and_eq_true] at h1
    rw [if_pos (by simp only [Bool.and_eq_true]; exact ⟨ptEq_trans hXY h1.1, h1.2⟩)]
    exact h

theorem quadSum_append {tab : ℕ} {l2 : ℕ × ℕ} {desc : List Int} :
    ∀ (ps1 ps2 : List (ℕ × ℕ × ℕ × ℕ × ℕ)) (X kx Y ky XT kT : ℕ) (v1 v2 : ℤ),
      quadSum tab l2 desc X kx ps1 Y ky = some v1 → quadSum tab l2 desc Y ky ps2 XT kT = some v2 →
      quadSum tab l2 desc X kx (ps1 ++ ps2) XT kT = some (v1 + v2)
  | [], ps2, X, kx, Y, ky, XT, kT, v1, v2, h1, h2 => by
    simp only [quadSum] at h1
    split_ifs at h1 with hpt
    simp only [Option.some.injEq] at h1
    subst h1
    rw [List.nil_append, zero_add]
    exact quadSum_start hpt ps2 XT kT v2 h2
  | (i, Xa, Xb, k, kind) :: ps, ps2, X, kx, Y, ky, XT, kT, v1, v2, h1, h2 => by
    simp only [quadSum] at h1
    split_ifs at h1 with hc
    rcases hp : pieceLo tab l2 desc i Xa Xb k kind with _ | a
    · rw [hp] at h1; exact absurd h1 (by simp)
    rcases hq : quadSum tab l2 desc Xb k ps Y ky with _ | w
    · rw [hp, hq] at h1; exact absurd h1 (by simp)
    rw [hp, hq] at h1
    simp only [Option.some.injEq] at h1
    subst h1
    have ih := quadSum_append ps ps2 Xb k Y ky XT kT w v2 hq h2
    rw [List.cons_append]
    simp only [quadSum]
    rw [if_pos hc, hp, ih]
    simp only [Option.some.injEq]
    omega

theorem quadChunk_step {tab : ℕ} {l2 : ℕ × ℕ} {desc : List Int} {X kx Y ky XT kT a n : ℕ} {v1 v2 : ℤ}
    (h1 : quadSum tab l2 desc X kx ((quad15.drop a).take n) Y ky = some v1)
    (h2 : quadSum tab l2 desc Y ky (quad15.drop (a + n)) XT kT = some v2) :
    quadSum tab l2 desc X kx (quad15.drop a) XT kT = some (v1 + v2) := by
  have h := quadSum_append _ _ X kx Y ky XT kT v1 v2 h1 h2
  rwa [take_append_drop_gen] at h

/-- `quadOK` from the value of the quadrature sum (generic in the context, so that no kernel evaluation of the check is
triggered when it is applied to a literal context). -/
theorem quadOK_of_sum {c : UCtx} {desc : List Int} {ps : List (ℕ × ℕ × ℕ × ℕ × ℕ)} {v : ℤ}
    (hv : quadSum c.tab c.l2 desc 45 0 ps 3525 0 = some v) (h0 : 0 ≤ v) : quadOK c desc ps = true := by
  unfold quadOK
  rw [hv]
  exact decide_eq_true h0

end TPUpper.Cert
