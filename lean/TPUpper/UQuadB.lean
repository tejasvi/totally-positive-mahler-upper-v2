import TPUpper.UQuadA
import TUCore.Quad

/-!
# Soundness of the quadrature checker `TUCore.quadOK` (condition (C2) for `Q_15`), part 1

`integrable_log_evR_mul_pwLin` (from the proof of `integral_log_evR_eq`), the masses `gParts` of the checker, and the
bound for one plain piece.
-/

open Polynomial Set MeasureTheory intervalIntegral

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPCore (P QS logT fdiv cdiv taylorR encl derivAsc evalAsc TAB L2)
open TPMahler.Cert (QR Qd fdiv_le le_cdiv logT_sound eval_eq_taylor encl_spec mem_Icc_v evalAsc_spec)

/-- `log |P| · G` is integrable (the roots of `P` are a finite set). -/
theorem integrable_log_evR_mul_pwLin {N : ℕ} {e G : ℕ → ℝ} (he : ∀ k < N, e k < e (k + 1)) {P : ℤ[X]}
    (hP : P ≠ 0) : Integrable (fun x => Real.log |evR P x| * pwLin N e G x) := by
  set m := (toC P).roots with hm
  have hinj : Function.Injective (Int.castRingHom ℂ) := Int.cast_injective
  have hlc : (toC P).leadingCoeff = ((P.leadingCoeff : ℤ) : ℂ) := leadingCoeff_map_of_injective hinj P
  have hfac : toC P = Polynomial.C ((P.leadingCoeff : ℤ) : ℂ) * (m.map (fun a => X - Polynomial.C a)).prod := by
    rw [← hlc]
    exact (C_leadingCoeff_mul_prod_multiset_X_sub_C IsAlgClosed.card_roots_eq_natDegree).symm
  have hpt : ∀ x : ℝ, (x : ℂ) ∉ m → Real.log |evR P x| =
      Real.log |(P.leadingCoeff : ℝ)| + (m.map (fun ρ => Real.log ‖(x : ℂ) - ρ‖)).sum := by
    intro x hx
    have hev : (toC P).eval (x : ℂ) = ((P.leadingCoeff : ℤ) : ℂ) * (m.map (fun ρ => (x : ℂ) - ρ)).prod := by
      conv_lhs => rw [hfac]
      rw [eval_mul, eval_C, eval_multiset_prod, Multiset.map_map]
      congr 1
      refine congrArg Multiset.prod (Multiset.map_congr rfl (fun a _ => ?_))
      simp
    have hlc0 : ((P.leadingCoeff : ℤ) : ℂ) ≠ 0 := by
      exact_mod_cast (leadingCoeff_ne_zero.mpr hP)
    have hne : ∀ ρ ∈ m, (x : ℂ) ≠ ρ := fun ρ hρ h => hx (h ▸ hρ)
    have hprod : (m.map (fun ρ => (x : ℂ) - ρ)).prod ≠ 0 := by
      intro h0
      rw [Multiset.prod_eq_zero_iff] at h0
      obtain ⟨ρ, hρ, h⟩ := Multiset.mem_map.mp h0
      exact hne ρ hρ (sub_eq_zero.mp h)
    rw [abs_evR_eq, hev, norm_mul, Real.log_mul (norm_ne_zero_iff.mpr hlc0) (norm_ne_zero_iff.mpr hprod),
      log_norm_multiset_prod _ m hne, Complex.norm_intCast]
  have hfin : {x : ℝ | (x : ℂ) ∈ m}.Finite := by
    have : {x : ℝ | (x : ℂ) ∈ m} = (fun x : ℝ => (x : ℂ)) ⁻¹' (m.toFinset : Set ℂ) := by
      ext x
      simp
    rw [this]
    exact (m.toFinset.finite_toSet).preimage (fun a _ b _ h => Complex.ofReal_injective h)
  have hae : (fun x => Real.log |evR P x| * pwLin N e G x) =ᵐ[volume]
      (fun x => Real.log |(P.leadingCoeff : ℝ)| * pwLin N e G x +
        (m.map (fun ρ => Real.log ‖(x : ℂ) - ρ‖ * pwLin N e G x)).sum) := by
    have hnull : volume {x : ℝ | (x : ℂ) ∈ m} = 0 := hfin.measure_zero volume
    rw [Filter.EventuallyEq, ae_iff]
    refine measure_mono_null (fun x hx => ?_) hnull
    simp only [Set.mem_ofPred_eq] at hx ⊢
    by_contra hxm
    apply hx
    rw [hpt x hxm, add_mul, Multiset.sum_map_mul_right]
  have hint : ∀ ρ ∈ m, Integrable (fun x : ℝ => Real.log ‖(x : ℂ) - ρ‖ * pwLin N e G x) := by
    intro ρ _
    have h := integrable_log_norm_mul_pwLin (G := G) he ρ
    refine h.congr (Filter.Eventually.of_forall (fun x => ?_))
    simp only
    rw [norm_sub_rev]
  refine (Integrable.add ((integrable_pwLin N e G).const_mul _)
    (integrable_multiset_sum' (fun ρ x => Real.log ‖(x : ℂ) - ρ‖ * pwLin N e G x) m hint)).congr hae.symm

/-! ## The masses of the checker -/

theorem DEN_pos_k (k : ℕ) : (0 : ℝ) < ((DEN * 2 ^ k : ℕ) : ℝ) := by
  exact_mod_cast Nat.mul_pos (by decide) (Nat.two_pow_pos k)

theorem pieceIn_facts {i Xa Xb k : ℕ} (h : pieceIn i Xa Xb k = true) :
    i < NN ∧ TUCore.nodes.getD i 0 * 2 ^ k ≤ Xa ∧ Xa < Xb ∧ Xb ≤ TUCore.nodes.getD (i + 1) 0 * 2 ^ k := by
  unfold pieceIn at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨h1, h2⟩, h3⟩, h4⟩ := h
  refine ⟨?_, h2, h3, h4⟩
  rw [nodes_length] at h1; omega

/-- The checker's `G` values on a piece are those of `pwAff eR GR i`. -/
theorem gParts_eq {i Xa Xb k : ℕ} (h : pieceIn i Xa Xb k = true) :
    pwAff eR GR i ((Xa : ℝ) / (DEN * 2 ^ k : ℕ)) = ((gParts i Xa Xb k).1 : ℝ) / (gParts i Xa Xb k).2.2 ∧
    pwAff eR GR i ((Xb : ℝ) / (DEN * 2 ^ k : ℕ)) = ((gParts i Xa Xb k).2.1 : ℝ) / (gParts i Xa Xb k).2.2 := by
  obtain ⟨hi, h1, h2, h3⟩ := pieceIn_facts h
  have hinc := nodes_inc i hi
  have hk : (0 : ℝ) < 2 ^ k := by positivity
  set n0 := TUCore.nodes.getD i 0 with hn0
  set n1 := TUCore.nodes.getD (i + 1) 0 with hn1
  have hn01 : (n0 : ℝ) < n1 := by exact_mod_cast hinc
  have ha1 : n0 * 2 ^ k ≤ Xa := h1
  have hb1 : Xb ≤ n1 * 2 ^ k := h3
  have ha2 : Xa ≤ n1 * 2 ^ k := by omega
  have hb2 : n0 * 2 ^ k ≤ Xb := by omega
  have hW : ((gParts i Xa Xb k).2.2 : ℝ) = 2 ^ TUCore.GS * ((n1 : ℝ) * 2 ^ k - n0 * 2 ^ k) := by
    simp only [gParts, ← hn0, ← hn1]
    rw [Nat.cast_mul, Nat.cast_sub (Nat.mul_le_mul_right _ hinc.le)]
    push_cast; ring
  have hWpos : (0 : ℝ) < 2 ^ TUCore.GS * ((n1 : ℝ) * 2 ^ k - n0 * 2 ^ k) := by
    have : (n0 : ℝ) * 2 ^ k < n1 * 2 ^ k := mul_lt_mul_of_pos_right hn01 hk
    positivity
  constructor
  · have hG : ((gParts i Xa Xb k).1 : ℝ) = (TUCore.gvals.getD i 0 : ℝ) * ((n1 : ℝ) * 2 ^ k - Xa) +
        (TUCore.gvals.getD (i + 1) 0 : ℝ) * (Xa - (n0 : ℝ) * 2 ^ k) := by
      simp only [gParts, ← hn0, ← hn1]
      rw [Nat.cast_add, Nat.cast_mul, Nat.cast_mul, Nat.cast_sub ha2, Nat.cast_sub ha1]
      push_cast; ring
    rw [hG, hW]
    unfold pwAff eR GR
    rw [← hn0, ← hn1]
    unfold DEN
    push_cast
    field_simp
  · have hG : ((gParts i Xa Xb k).2.1 : ℝ) = (TUCore.gvals.getD i 0 : ℝ) * ((n1 : ℝ) * 2 ^ k - Xb) +
        (TUCore.gvals.getD (i + 1) 0 : ℝ) * (Xb - (n0 : ℝ) * 2 ^ k) := by
      simp only [gParts, ← hn0, ← hn1]
      rw [Nat.cast_add, Nat.cast_mul, Nat.cast_mul, Nat.cast_sub hb1, Nat.cast_sub hb2]
      push_cast; ring
    rw [hG, hW]
    unfold pwAff eR GR
    rw [← hn0, ← hn1]
    unfold DEN
    push_cast
    field_simp

theorem gParts_W_pos {i Xa Xb k : ℕ} (h : pieceIn i Xa Xb k = true) : 0 < (gParts i Xa Xb k).2.2 := by
  obtain ⟨hi, -, -, -⟩ := pieceIn_facts h
  have hinc := nodes_inc i hi
  simp only [gParts]
  exact Nat.mul_pos (Nat.two_pow_pos _) (Nat.sub_pos_of_lt (Nat.mul_lt_mul_of_pos_right hinc (Nat.two_pow_pos k)))

/-- The piece's interval lies in its node piece. -/
theorem piece_bounds {i Xa Xb k : ℕ} (h : pieceIn i Xa Xb k = true) :
    eR i ≤ (Xa : ℝ) / (DEN * 2 ^ k : ℕ) ∧ (Xa : ℝ) / (DEN * 2 ^ k : ℕ) < (Xb : ℝ) / (DEN * 2 ^ k : ℕ) ∧
      (Xb : ℝ) / (DEN * 2 ^ k : ℕ) ≤ eR (i + 1) := by
  obtain ⟨hi, h1, h2, h3⟩ := pieceIn_facts h
  have hD := DEN_pos_k k
  have e1 : eR i = ((TUCore.nodes.getD i 0 * 2 ^ k : ℕ) : ℝ) / ((DEN * 2 ^ k : ℕ) : ℝ) := by
    unfold eR DEN; push_cast; field_simp
  have e2 : eR (i + 1) = ((TUCore.nodes.getD (i + 1) 0 * 2 ^ k : ℕ) : ℝ) / ((DEN * 2 ^ k : ℕ) : ℝ) := by
    unfold eR DEN; push_cast; field_simp
  refine ⟨?_, div_lt_div_of_pos_right (by exact_mod_cast h2) hD, ?_⟩
  · rw [e1]; exact div_le_div_of_nonneg_right (by exact_mod_cast h1) hD.le
  · rw [e2]; exact div_le_div_of_nonneg_right (by exact_mod_cast h3) hD.le

/-- The mass of a piece. -/
theorem piece_mass {i Xa Xb k : ℕ} (h : pieceIn i Xa Xb k = true) :
    ∫ t in (Xa : ℝ) / (DEN * 2 ^ k : ℕ)..(Xb : ℝ) / (DEN * 2 ^ k : ℕ), pwLin NN eR GR t =
      (((Xb - Xa) * ((gParts i Xa Xb k).1 + (gParts i Xa Xb k).2.1) : ℕ) : ℝ) /
        ((DEN * 2 ^ k * 2 * (gParts i Xa Xb k).2.2 : ℕ) : ℝ) := by
  obtain ⟨hi, h1, h2, h3⟩ := pieceIn_facts h
  obtain ⟨hb1, hb2, hb3⟩ := piece_bounds h
  rw [integral_pwLin_piece eR_lt hi hb1 hb2.le hb3]
  obtain ⟨ga, gb⟩ := gParts_eq h
  rw [ga, gb]
  have hW : (0 : ℝ) < (gParts i Xa Xb k).2.2 := by exact_mod_cast gParts_W_pos h
  have hD := DEN_pos_k k
  push_cast [Nat.cast_sub h2.le]
  field_simp

end TPUpper.Cert
