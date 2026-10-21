import TPUpper.IrredModP
import TPMahler.CertData
import TUCore.Irred

/-!
# Soundness of the irreducibility check `TUCore.irredOK`

* `toPolyA p l`: the polynomial over `ZMod p` with ascending coefficients `l`; the list operations of
  `TUCore.Irred` are sound for it (`toPolyA_padd`, `toPolyA_pmul`, ...).
* Reductions `pmodq` are congruent to their input modulo `q`, whatever the quotient (`toPolyA_pmodq`), so
  `ppowmod` computes `r^e` modulo `q` (`mk_ppowmod`) and `chainOK` certifies `r_k ≡ X^(p^k)` and the Bezout
  identities (`chainOK_sound`).
* `irreducible_of_irredOK`: for a prime `p`, `irredOK p desc cert = true` and a coefficient `±1` (primitivity) give
  `Irreducible (Qd desc)`, by `irreducible_of_coprime_frobenius` and `isCoprime_of_bezout`.
-/

open Polynomial

namespace TPUpper

open TUCore TPMahler.Cert

section listPoly

variable (p : ℕ)

/-- The polynomial over `ZMod p` with ascending coefficients `l`. -/
noncomputable def toPolyA : List ℕ → (ZMod p)[X]
  | [] => 0
  | a :: l => C (a : ZMod p) + X * toPolyA l

@[simp] theorem toPolyA_nil : toPolyA p [] = 0 := rfl

@[simp] theorem toPolyA_cons (a : ℕ) (l : List ℕ) : toPolyA p (a :: l) = C (a : ZMod p) + X * toPolyA p l := rfl

theorem toPolyA_map_mod (l : List ℕ) : toPolyA p (l.map (· % p)) = toPolyA p l := by
  induction l with
  | nil => rfl
  | cons a l ih => rw [List.map_cons, toPolyA_cons, toPolyA_cons, ih, ZMod.natCast_mod]

theorem toPolyA_padd (a b : List ℕ) : toPolyA p (padd p a b) = toPolyA p a + toPolyA p b := by
  induction a generalizing b with
  | nil =>
    rw [padd, toPolyA_map_mod, toPolyA_nil, zero_add]
  | cons x xs ih =>
    cases b with
    | nil =>
      rw [padd, toPolyA_map_mod, toPolyA_nil, add_zero]
    | cons y ys =>
      rw [padd, toPolyA_cons, toPolyA_cons, toPolyA_cons, ih, ZMod.natCast_mod, Nat.cast_add, map_add]
      ring

theorem toPolyA_pneg [NeZero p] (b : List ℕ) : toPolyA p (pneg p b) = -toPolyA p b := by
  induction b with
  | nil => simp [pneg]
  | cons y ys ih =>
    have hy : (((p - y % p) % p : ℕ) : ZMod p) = -(y : ZMod p) := by
      rw [ZMod.natCast_mod, Nat.cast_sub (Nat.mod_lt y (NeZero.pos p)).le, ZMod.natCast_self, ZMod.natCast_mod,
        zero_sub]
    have h1 : pneg p (y :: ys) = (p - y % p) % p :: pneg p ys := rfl
    rw [h1, toPolyA_cons, toPolyA_cons, ih, hy, map_neg]
    ring

theorem toPolyA_psub [NeZero p] (a b : List ℕ) : toPolyA p (psub p a b) = toPolyA p a - toPolyA p b := by
  rw [psub, toPolyA_padd, toPolyA_pneg, sub_eq_add_neg]

theorem toPolyA_pscale (c : ℕ) (a : List ℕ) : toPolyA p (pscale p c a) = C (c : ZMod p) * toPolyA p a := by
  induction a with
  | nil => simp [pscale]
  | cons x xs ih =>
    have h1 : pscale p c (x :: xs) = c * x % p :: pscale p c xs := rfl
    rw [h1, toPolyA_cons, toPolyA_cons, ih, ZMod.natCast_mod, Nat.cast_mul, map_mul]
    ring

theorem toPolyA_pmul (a b : List ℕ) : toPolyA p (pmul p a b) = toPolyA p a * toPolyA p b := by
  induction a with
  | nil => simp [pmul]
  | cons x xs ih =>
    rw [pmul, toPolyA_padd, toPolyA_pscale, toPolyA_cons, toPolyA_cons, ih, Nat.cast_zero, map_zero, zero_add]
    ring

theorem toPolyA_ptrim (l : List ℕ) : toPolyA p (ptrim l) = toPolyA p l := by
  induction l with
  | nil => rfl
  | cons a l ih =>
    rw [ptrim]
    rcases h : ptrim l with _ | ⟨b, t⟩
    · dsimp only
      rw [h, toPolyA_nil] at ih
      split_ifs with ha
      · rw [toPolyA_nil, toPolyA_cons, ← ih, ha, Nat.cast_zero, map_zero, mul_zero, add_zero]
      · rw [toPolyA_cons, toPolyA_cons, toPolyA_nil, ← ih]
    · dsimp only
      rw [h] at ih
      rw [toPolyA_cons p a (b :: t), toPolyA_cons p a l, ih]

theorem toPolyA_eq_zero_of_all {l : List ℕ} (h : l.all (fun x => x % p == 0) = true) : toPolyA p l = 0 := by
  induction l with
  | nil => rfl
  | cons a l ih =>
    rw [List.all_cons, Bool.and_eq_true, beq_iff_eq] at h
    have ha : (a : ZMod p) = 0 := by rw [← ZMod.natCast_mod, h.1, Nat.cast_zero]
    rw [toPolyA_cons, ha, map_zero, zero_add, ih h.2, mul_zero]

theorem toPolyA_eq_zero_of_pzero {l : List ℕ} (h : pzero p l = true) : toPolyA p l = 0 :=
  toPolyA_eq_zero_of_all p h

theorem toPolyA_X : toPolyA p [0, 1] = X := by
  simp

theorem toPolyA_one : toPolyA p [1] = 1 := by
  simp

theorem toPolyA_pmodq [NeZero p] (inv : ℕ) (q f : List ℕ) :
    toPolyA p (pmodq p inv q f) = toPolyA p f - toPolyA p (pquot p inv q f) * toPolyA p q := by
  rw [pmodq, toPolyA_ptrim, toPolyA_psub, toPolyA_pmul]

theorem mk_pmodq [NeZero p] (inv : ℕ) (q f : List ℕ) :
    AdjoinRoot.mk (toPolyA p q) (toPolyA p (pmodq p inv q f)) = AdjoinRoot.mk (toPolyA p q) (toPolyA p f) := by
  rw [toPolyA_pmodq, map_sub, map_mul, AdjoinRoot.mk_self, mul_zero, sub_zero]

/-- `ppowmod` computes `r^e` modulo `q` for `e ≤ fuel`. -/
theorem mk_ppowmod [NeZero p] (inv : ℕ) (q r : List ℕ) :
    ∀ fuel e, e ≤ fuel → AdjoinRoot.mk (toPolyA p q) (toPolyA p (ppowmod p inv q r fuel e)) =
      AdjoinRoot.mk (toPolyA p q) (toPolyA p r) ^ e := by
  intro fuel
  induction fuel with
  | zero =>
    intro e he
    obtain rfl : e = 0 := by omega
    simp [ppowmod]
  | succ fuel ih =>
    intro e he
    by_cases he0 : e = 0
    · subst he0
      simp [ppowmod]
    · have hih := ih (e / 2) (by omega)
      have hstep : ppowmod p inv q r (fuel + 1) e =
          if e % 2 = 1 then pmodq p inv q (pmul p (pmodq p inv q (pmul p (ppowmod p inv q r fuel (e / 2))
            (ppowmod p inv q r fuel (e / 2)))) r)
          else pmodq p inv q (pmul p (ppowmod p inv q r fuel (e / 2)) (ppowmod p inv q r fuel (e / 2))) := by
        rw [ppowmod, ite_eq_right he0]
      rw [hstep]
      split_ifs with hodd
      · rw [mk_pmodq, toPolyA_pmul, map_mul, mk_pmodq, toPolyA_pmul, map_mul, hih, ← pow_add, ← pow_succ]
        congr 1
        omega
      · rw [mk_pmodq, toPolyA_pmul, map_mul, hih, ← pow_add]
        congr 1
        omega

/-- **Soundness of the chain.** -/
theorem chainOK_sound [NeZero p] (inv : ℕ) (q : List ℕ) :
    ∀ (cert : List (List ℕ × List ℕ × List ℕ)) (rprev : List ℕ) (m : ℕ),
      chainOK p inv q rprev cert = true →
      AdjoinRoot.mk (toPolyA p q) (toPolyA p rprev) = AdjoinRoot.mk (toPolyA p q) X ^ (p ^ m) →
      ∀ i (hi : i < cert.length),
        AdjoinRoot.mk (toPolyA p q) (toPolyA p (cert[i]'hi).1) =
            AdjoinRoot.mk (toPolyA p q) X ^ (p ^ (m + i + 1)) ∧
          toPolyA p (cert[i]'hi).2.1 * toPolyA p q +
            toPolyA p (cert[i]'hi).2.2 * (toPolyA p (cert[i]'hi).1 - X) = 1 := by
  intro cert
  induction cert with
  | nil =>
    intro rprev m _ _ i hi
    exact absurd hi (Nat.not_lt_zero _)
  | cons e rest ih =>
    obtain ⟨r, u, v⟩ := e
    intro rprev m hchain hprev
    rw [chainOK, Bool.and_eq_true, Bool.and_eq_true] at hchain
    obtain ⟨⟨h1, h2⟩, h3⟩ := hchain
    -- `r ≡ rprev^p`
    have hr : AdjoinRoot.mk (toPolyA p q) (toPolyA p r) = AdjoinRoot.mk (toPolyA p q) X ^ (p ^ (m + 1)) := by
      have h1' := toPolyA_eq_zero_of_pzero p h1
      rw [toPolyA_psub, sub_eq_zero] at h1'
      rw [h1', mk_ppowmod p inv q rprev p p le_rfl, hprev, ← pow_mul, pow_succ]
    -- the Bezout identity
    have hb : toPolyA p u * toPolyA p q + toPolyA p v * (toPolyA p r - X) = 1 := by
      have h2' := toPolyA_eq_zero_of_pzero p h2
      rw [toPolyA_psub, toPolyA_padd, toPolyA_pmul, toPolyA_pmul, toPolyA_psub, toPolyA_X, toPolyA_one,
        sub_eq_zero] at h2'
      exact h2'
    intro i hi
    cases i with
    | zero => exact ⟨by simpa using hr, by simpa using hb⟩
    | succ i =>
      have hi' : i < rest.length := by simpa using hi
      have := ih r (m + 1) h3 hr i hi'
      simp only [List.getElem_cons_succ]
      rw [show m + (i + 1) + 1 = m + 1 + i + 1 by omega]
      exact this

/-- The reduction of `desc` modulo `p`. -/
theorem toPolyA_redAsc [NeZero p] (desc : List ℤ) :
    toPolyA p (redAsc p desc) = (Qd desc).map (Int.castRingHom (ZMod p)) := by
  have key : ∀ L : List ℤ, toPolyA p (L.map (fun a => (a % (p : ℤ)).toNat)) =
      (Qd L.reverse).map (Int.castRingHom (ZMod p)) := by
    intro L
    induction L with
    | nil => simp [Qd]
    | cons a L ih =>
      have hQ : Qd (a :: L).reverse = Qd L.reverse * X + C a := by
        rw [List.reverse_cons, Qd, List.foldl_append, List.foldl_cons, List.foldl_nil]
        rfl
      have ha : (((a % (p : ℤ)).toNat : ℕ) : ZMod p) = (a : ZMod p) := by
        have hnn : 0 ≤ a % (p : ℤ) := Int.emod_nonneg a (by exact_mod_cast (NeZero.pos p).ne')
        rw [← Int.cast_natCast, Int.toNat_of_nonneg hnn, ZMod.intCast_mod]
      rw [List.map_cons, toPolyA_cons, ih, hQ, Polynomial.map_add, Polynomial.map_mul, map_X, map_C, ha,
        eq_intCast]
      ring
  have h := key desc.reverse
  rw [List.reverse_reverse] at h
  exact h

end listPoly

/-! ## Facts about `Qd` -/

theorem coeff_Qd_reverse (L : List ℤ) (i : ℕ) : (Qd L.reverse).coeff i = L.getD i 0 := by
  induction L generalizing i with
  | nil => simp [Qd]
  | cons a L ih =>
    have hQ : Qd (a :: L).reverse = Qd L.reverse * X + C a := by
      rw [List.reverse_cons, Qd, List.foldl_append, List.foldl_cons, List.foldl_nil]
      rfl
    rw [hQ]
    cases i with
    | zero => simp
    | succ i => rw [coeff_add, coeff_mul_X, ih, coeff_C]; simp

theorem leadingCoeff_Qd_cons {b : ℤ} (hb : b ≠ 0) (t : List ℤ) : (Qd (b :: t)).leadingCoeff = b := by
  rw [Qd_cons, leadingCoeff_add_of_degree_lt' (degree_Qd_lt_lead hb t), leadingCoeff_C_mul_X_pow]

theorem isPrimitive_Qd_of_unit {desc : List ℤ} (hunit : ∃ a ∈ desc, a.natAbs = 1) : (Qd desc).IsPrimitive := by
  obtain ⟨a, ha, ha1⟩ := hunit
  have ha' : a ∈ desc.reverse := List.mem_reverse.mpr ha
  obtain ⟨i, hi, hia⟩ := List.getElem_of_mem ha'
  have hcoeff : (Qd desc).coeff i = a := by
    have := coeff_Qd_reverse desc.reverse i
    rw [List.reverse_reverse, List.getD_eq_getElem _ _ hi, hia] at this
    exact this
  intro r hr
  have hdvd := (C_dvd_iff_dvd_coeff r (Qd desc)).mp hr i
  rw [hcoeff] at hdvd
  exact isUnit_of_dvd_unit hdvd (Int.isUnit_iff_natAbs_eq.mpr ha1)

/-! ## The bridge -/

/-- **Irreducibility from the checker.** -/
theorem irreducible_of_irredOK (p : ℕ) [hp : Fact p.Prime] (desc : List ℤ)
    (cert : List (List ℕ × List ℕ × List ℕ)) (hok : irredOK p desc cert = true)
    (hunit : ∃ a ∈ desc, a.natAbs = 1) : Irreducible (Qd desc) := by
  have hp0 : NeZero p := ⟨hp.out.ne_zero⟩
  rw [irredOK, Bool.and_eq_true, Bool.and_eq_true, Bool.and_eq_true, decide_eq_true_eq, decide_eq_true_eq,
    decide_eq_true_eq] at hok
  obtain ⟨⟨⟨hlen, hlead⟩, hK⟩, hchain⟩ := hok
  obtain ⟨b, t, rfl⟩ : ∃ b t, desc = b :: t := by
    cases desc with
    | nil => simp at hlen
    | cons b t => exact ⟨b, t, rfl⟩
  simp only [List.headD_cons, List.length_cons] at hlead hlen hK
  -- `p ∤ b`
  have hbp : (b : ZMod p) ≠ 0 := by
    intro h
    rw [ZMod.intCast_zmod_eq_zero_iff_dvd] at h
    apply hlead
    rw [Int.emod_eq_zero_of_dvd h]
    rfl
  have hb0 : b ≠ 0 := by
    rintro rfl
    exact hbp (by simp)
  have hdeg : (Qd (b :: t)).natDegree = t.length := natDegree_Qd_cons hb0 t
  have hlc : (Qd (b :: t)).leadingCoeff = b := leadingCoeff_Qd_cons hb0 t
  refine irreducible_of_coprime_frobenius (p := p) (isPrimitive_Qd_of_unit hunit) (by rw [hlc]; exact hbp)
    (by rw [hdeg]; omega) ?_
  intro k hk1 hk2
  rw [hdeg] at hk2
  have hkK : k - 1 < cert.length := by omega
  obtain ⟨hr, hbez⟩ := chainOK_sound p _ (redAsc p (b :: t)) cert [0, 1] 0 hchain
    (by rw [toPolyA_X, pow_zero, pow_one]) (k - 1) hkK
  rw [toPolyA_redAsc] at hr hbez
  rw [show 0 + (k - 1) + 1 = k by omega, ← map_pow, AdjoinRoot.mk_eq_mk] at hr
  refine isCoprime_of_bezout k p (r := toPolyA p (cert[k - 1]'hkK).1) ?_ hbez
  rw [← neg_sub]
  exact (dvd_neg).mpr hr

end TPUpper
