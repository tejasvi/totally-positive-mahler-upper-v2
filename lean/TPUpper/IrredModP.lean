import Mathlib

/-!
# Irreducibility of integer polynomials from a computation modulo `p`

* `irreducible_of_irreducible_map_of_isPrimitive`: a primitive polynomial whose image under a ring map to a domain has
  the same degree and is irreducible is irreducible (the leading coefficient need not be `1`).
* `irreducible_of_coprime_frobenius`: if `Q ∈ ℤ[X]` is primitive, of positive degree `n`, with leading coefficient
  nonzero mod `p`, and `Q mod p` is coprime to `X^(p^k) - X` for all `1 ≤ k ≤ n/2`, then `Q` is irreducible. (An
  irreducible factor of degree `d` of `Q mod p` divides `X^(p^d) - X`, Mathlib
  `Irreducible.natDegree_dvd_iff_dvd_X_pow_card_pow_sub_X`.)
* `isCoprime_of_bezout`: the certificate form of the coprimality, from a remainder `r ≡ X^(p^k)` mod `Q` and a Bezout
  identity `u Q + v (r - X) = 1`.
-/

open Polynomial

namespace TPUpper

/-- A primitive polynomial whose image in `S[X]` (`S` a domain) has the same degree and is irreducible is
irreducible. -/
theorem irreducible_of_irreducible_map_of_isPrimitive {R S : Type*} [CommRing R] [IsDomain R] [CommRing S]
    [IsDomain S] (φ : R →+* S) {f : R[X]} (hprim : f.IsPrimitive) (hdeg : (f.map φ).natDegree = f.natDegree)
    (h_irr : Irreducible (f.map φ)) : Irreducible f := by
  refine ⟨fun hu => h_irr.not_isUnit (hu.map (mapRingHom φ)), fun a b hab => ?_⟩
  have hf0 : f ≠ 0 := hprim.ne_zero
  have ha0 : a ≠ 0 := by
    rintro rfl
    rw [zero_mul] at hab
    exact hf0 hab
  have hb0 : b ≠ 0 := by
    rintro rfl
    rw [mul_zero] at hab
    exact hf0 hab
  have hmap : f.map φ = a.map φ * b.map φ := by rw [hab, Polynomial.map_mul]
  have hfm0 : f.map φ ≠ 0 := h_irr.ne_zero
  have ham0 : a.map φ ≠ 0 := by
    intro h
    rw [h, zero_mul] at hmap
    exact hfm0 hmap
  have hbm0 : b.map φ ≠ 0 := by
    intro h
    rw [h, mul_zero] at hmap
    exact hfm0 hmap
  have hdeg_ab : f.natDegree = a.natDegree + b.natDegree := by rw [hab, natDegree_mul ha0 hb0]
  have hdeg_map : (f.map φ).natDegree = (a.map φ).natDegree + (b.map φ).natDegree := by
    rw [hmap, natDegree_mul ham0 hbm0]
  have hle_a : (a.map φ).natDegree ≤ a.natDegree := natDegree_map_le
  have hle_b : (b.map φ).natDegree ≤ b.natDegree := natDegree_map_le
  have heq_a : (a.map φ).natDegree = a.natDegree := by omega
  have heq_b : (b.map φ).natDegree = b.natDegree := by omega
  -- a constant factor of a primitive polynomial is a unit
  have key : ∀ c : R[X], c ∣ f → c.natDegree = 0 → IsUnit c := by
    intro c hc hc0
    rw [eq_C_of_natDegree_eq_zero hc0] at hc ⊢
    exact (hprim _ hc).map C
  rcases h_irr.isUnit_or_isUnit hmap with h | h
  · left
    exact key a (Dvd.intro b hab.symm) (by rw [← heq_a]; exact natDegree_eq_zero_of_isUnit h)
  · right
    exact key b (Dvd.intro_left a hab.symm) (by rw [← heq_b]; exact natDegree_eq_zero_of_isUnit h)

/-- An irreducible polynomial of degree `d` over `ZMod p` divides `X^(p^d) - X`. -/
theorem dvd_X_pow_pow_sub_X_of_irreducible {p : ℕ} [Fact p.Prime] {f : (ZMod p)[X]} (hf : Irreducible f) :
    f ∣ X ^ (p ^ f.natDegree) - X := by
  have h := (hf.natDegree_dvd_iff_dvd_X_pow_card_pow_sub_X (n := f.natDegree)).mp dvd_rfl
  rwa [Nat.card_zmod] at h

/-- A polynomial over `ZMod p` of degree `n ≥ 1` that is coprime to `X^(p^k) - X` for all `1 ≤ k ≤ n/2` is
irreducible. -/
theorem irreducible_of_coprime_frobenius_zmod {p : ℕ} [Fact p.Prime] {Qp : (ZMod p)[X]} (hdeg : 0 < Qp.natDegree)
    (hcop : ∀ k : ℕ, 1 ≤ k → 2 * k ≤ Qp.natDegree → IsCoprime Qp (X ^ (p ^ k) - X)) : Irreducible Qp := by
  have hQp0 : Qp ≠ 0 := by
    rintro rfl
    rw [natDegree_zero] at hdeg
    exact lt_irrefl 0 hdeg
  have hnu : ¬ IsUnit Qp := not_isUnit_of_natDegree_pos Qp hdeg
  by_contra hirr
  obtain ⟨a, b, hab, ha, hb⟩ : ∃ a b, Qp = a * b ∧ ¬IsUnit a ∧ ¬IsUnit b := by
    rw [irreducible_iff] at hirr
    push Not at hirr
    obtain ⟨a, b, h1, h2, h3⟩ := hirr hnu
    exact ⟨a, b, h1, h2, h3⟩
  have ha0 : a ≠ 0 := by
    rintro rfl
    rw [zero_mul] at hab
    exact hQp0 hab
  have hb0 : b ≠ 0 := by
    rintro rfl
    rw [mul_zero] at hab
    exact hQp0 hab
  have hsum : Qp.natDegree = a.natDegree + b.natDegree := by rw [hab, natDegree_mul ha0 hb0]
  -- a nonunit factor `c` of degree at most `n / 2`
  obtain ⟨c, hcQ, hc0, hcu, hcdeg⟩ : ∃ c, c ∣ Qp ∧ c ≠ 0 ∧ ¬IsUnit c ∧ 2 * c.natDegree ≤ Qp.natDegree := by
    rcases le_total a.natDegree b.natDegree with h | h
    · exact ⟨a, Dvd.intro b hab.symm, ha0, ha, by omega⟩
    · exact ⟨b, Dvd.intro_left a hab.symm, hb0, hb, by omega⟩
  obtain ⟨f, hf, hfc⟩ := WfDvdMonoid.exists_irreducible_factor hcu hc0
  have hfQ : f ∣ Qp := dvd_trans hfc hcQ
  have hfdeg : 1 ≤ f.natDegree := hf.natDegree_pos
  have hfle : f.natDegree ≤ c.natDegree := natDegree_le_of_dvd hfc hc0
  have hcop' := hcop f.natDegree hfdeg (by omega)
  exact hf.not_isUnit (hcop'.isUnit_of_dvd' hfQ (dvd_X_pow_pow_sub_X_of_irreducible hf))

/-- **Irreducibility from Frobenius coprimality modulo `p`.** -/
theorem irreducible_of_coprime_frobenius {p : ℕ} [Fact p.Prime] {Q : ℤ[X]} (hprim : Q.IsPrimitive)
    (hlead : ((Q.leadingCoeff : ℤ) : ZMod p) ≠ 0) (hdeg : 0 < Q.natDegree)
    (hcop : ∀ k : ℕ, 1 ≤ k → 2 * k ≤ Q.natDegree →
      IsCoprime (Q.map (Int.castRingHom (ZMod p))) (X ^ (p ^ k) - X)) :
    Irreducible Q := by
  have hdegp : (Q.map (Int.castRingHom (ZMod p))).natDegree = Q.natDegree :=
    natDegree_map_of_leadingCoeff_ne_zero _ hlead
  refine irreducible_of_irreducible_map_of_isPrimitive (Int.castRingHom (ZMod p)) hprim hdegp ?_
  refine irreducible_of_coprime_frobenius_zmod (by rw [hdegp]; exact hdeg) ?_
  intro k hk hk2
  exact hcop k hk (by rw [hdegp] at hk2; exact hk2)

/-- **Coprimality from a Bezout certificate.** If `Q ∣ X^(p^k) - r` and `u Q + v (r - X) = 1`, then `Q` is coprime to
`X^(p^k) - X`. -/
theorem isCoprime_of_bezout {R : Type*} [CommRing R] {Q r : R[X]} (k p : ℕ) (hr : Q ∣ X ^ (p ^ k) - r)
    {u v : R[X]} (huv : u * Q + v * (r - X) = 1) : IsCoprime Q (X ^ (p ^ k) - X) := by
  obtain ⟨w, hw⟩ := hr
  exact ⟨u - v * w, v, by linear_combination huv + v * hw⟩

end TPUpper
