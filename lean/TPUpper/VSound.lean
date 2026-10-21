import TUCore.V
import TPUpper.UDefs
import TPMahler.CertData

/-!
# Conditions (C1) and (V) of the certificate, and `e^{v₀} < 1.7239501`

* `C1_sound`: `C1OK = true` gives `∑ bⱼ deg Qⱼ < s`;
* `V_sound`: `VOK = true` gives `(1/s) ∫ log⁺ x G(x) dx ≤ v₀ = 544618200701 / 10^12`;
* `exp_v0_lt`: `e^{v₀} < 1.7239501`.

The checker terms are restated with the power instance of core Lean (`^ᶜ`), and the large closed constants (`sNumU`,
`sDenU`, `vSumAux nodes gvals`) are kept opaque (`generalize`, generic lemmas) before any arithmetic tactic.
-/

open Polynomial MeasureTheory Set

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPMahler.Cert (Qd QR le_cdiv foldl_add_eq_sum list_sum_range natDegree_Qd_cons)
open TPCore (logT TAB L2)

/-- `ℕ`-power with the instance of core Lean (as elaborated in `TUCore`). -/
local notation:75 a:76 " ^ᶜ " b:75 => @HPow.hPow ℕ ℕ ℕ (@instHPow ℕ ℕ (@instPowNat ℕ instNatPowNat)) a b

theorem cast_powCU (a b : ℕ) : ((a ^ᶜ b : ℕ) : ℝ) = (a : ℝ) ^ b := Nat.cast_pow a b

/-! ## `e^{v₀} < 1.7239501` -/

/-- `e^{v₀} < 1.7239501`, from the Taylor bound of degree 11 (`Real.exp_bound'`). -/
theorem exp_v0_lt : Real.exp v0 < UB := by
  have h := Real.exp_bound' (x := v0) (by norm_num [v0]) (by norm_num [v0]) (n := 12) (by norm_num)
  refine lt_of_le_of_lt h ?_
  norm_num [Finset.sum_range_succ, Nat.factorial, v0, UB]

/-! ## (C1) -/

set_option maxRecDepth 20000 in
theorem bSh_max : bSh.foldl max 0 = 77 := by decide +kernel

set_option maxRecDepth 20000 in
theorem bSh_le : ∀ j < 21, bSh.getD j 0 ≤ 77 := by decide +kernel

set_option maxRecDepth 20000 in
theorem polyZipU_eq : List.zip TUCore.polys (List.zip bNum bSh) =
    (List.range 21).map (fun j => (TUCore.polys.getD j [], (bNum.getD j 0, bSh.getD j 0))) := by
  decide +kernel

set_option maxRecDepth 20000 in
theorem polysU_ok : ∀ j < 21, TUCore.polys.getD j [] ≠ [] ∧ (TUCore.polys.getD j []).headD 0 ≠ 0 := by
  decide +kernel

theorem natDegree_QcU (j : Fin JJ) : (Qc j).natDegree = (TUCore.polys.getD j []).length - 1 := by
  obtain ⟨hne, hhead⟩ := polysU_ok j j.isLt
  unfold Qc
  generalize TUCore.polys.getD (↑j) [] = l at hne hhead ⊢
  cases l with
  | nil => exact absurd rfl hne
  | cons b t =>
    rw [List.headD_cons] at hhead
    rw [natDegree_Qd_cons hhead, List.length_cons, Nat.add_sub_cancel]

/-- The left side of `C1OK` (common denominator `2^S sDenU`). -/
def lhsC1 : ℕ :=
  (List.zip TUCore.polys (List.zip bNum bSh)).foldl
    (fun acc x => acc + x.2.1 * (x.1.length - 1) * 2 ^ᶜ (bSh.foldl max 0 - x.2.2) * sDenU) 0

theorem C1OK_iff : C1OK = true ↔ lhsC1 < 2 ^ᶜ (bSh.foldl max 0) * sNumU := by
  simp only [C1OK, lhsC1, decide_eq_true_eq]

theorem lhsC1_gen (S sD : ℕ) :
    (List.zip TUCore.polys (List.zip bNum bSh)).foldl
      (fun acc x => acc + x.2.1 * (x.1.length - 1) * 2 ^ᶜ (S - x.2.2) * sD) 0 =
    ∑ j ∈ Finset.range 21, bNum.getD j 0 * ((TUCore.polys.getD j []).length - 1) * 2 ^ᶜ (S - bSh.getD j 0) * sD := by
  rw [polyZipU_eq, foldl_add_eq_sum, zero_add, List.map_map, list_sum_range]
  rfl

theorem lhsC1_eq : lhsC1 =
    ∑ j ∈ Finset.range 21, bNum.getD j 0 * ((TUCore.polys.getD j []).length - 1) *
      2 ^ᶜ (bSh.foldl max 0 - bSh.getD j 0) * sDenU :=
  lhsC1_gen _ _

theorem sDenU_pos : 0 < sDenU :=
  Nat.mul_pos (Nat.mul_pos (by norm_num) (by unfold DEN; norm_num)) (pow_pos (by norm_num) _)

/-- **Condition (C1)**: `∑ bⱼ deg Qⱼ < s`. -/
theorem C1_sound (h : C1OK = true) : ∑ j : Fin JJ, bR j * (Qc j).natDegree < sR := by
  rw [C1OK_iff, lhsC1_eq] at h
  have hle : ∀ j < 21, bSh.getD j 0 ≤ bSh.foldl max 0 := by
    rw [bSh_max]
    exact bSh_le
  have hsum : ∑ j : Fin JJ, bR j * ((Qc j).natDegree : ℝ) =
      ∑ j ∈ Finset.range 21, bj j * (((TUCore.polys.getD j []).length - 1 : ℕ) : ℝ) := by
    have := Fin.sum_univ_eq_sum_range (fun j => bj j * (((TUCore.polys.getD j []).length - 1 : ℕ) : ℝ)) JJ
    refine Eq.trans ?_ this
    refine Finset.sum_congr rfl (fun j _ => ?_)
    rw [natDegree_QcU]
    rfl
  have hD : (0 : ℝ) < (sDenU : ℝ) := by exact_mod_cast sDenU_pos
  rw [hsum]
  unfold sR
  generalize bSh.foldl max 0 = S at h hle
  generalize sNumU = sN at h ⊢
  generalize sDenU = sD at h hD ⊢
  have hS : (0 : ℝ) < 2 ^ S := by positivity
  have hR : ((∑ j ∈ Finset.range 21, bNum.getD j 0 * ((TUCore.polys.getD j []).length - 1) *
      2 ^ᶜ (S - bSh.getD j 0) * sD : ℕ) : ℝ) < ((2 ^ᶜ S * sN : ℕ) : ℝ) := by exact_mod_cast h
  push_cast [cast_powCU] at hR
  have hlhs : ∑ j ∈ Finset.range 21, (bNum.getD j 0 : ℝ) * (((TUCore.polys.getD j []).length - 1 : ℕ) : ℝ) *
      2 ^ (S - bSh.getD j 0) * sD = (2 ^ S * sD) * ∑ j ∈ Finset.range 21, bj j *
        (((TUCore.polys.getD j []).length - 1 : ℕ) : ℝ) := by
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl (fun j hj => ?_)
    rw [pow_sub₀ (2 : ℝ) two_ne_zero (hle j (Finset.mem_range.mp hj))]
    unfold bj
    field_simp
  rw [hlhs] at hR
  rw [lt_div_iff₀ hD]
  have := (mul_lt_mul_iff_of_pos_left hS).mp (by linarith : 2 ^ S * ((∑ j ∈ Finset.range 21, bj j *
      (((TUCore.polys.getD j []).length - 1 : ℕ) : ℝ)) * sD) < 2 ^ S * sN)
  exact this


/-! ## (V): one piece in closed form -/

/-- `∫_a^b log x · G(x) dx` for an affine `G` with `G(a) = G₀`, `G(b) = G₁`, in closed form. -/
noncomputable def cfPiece (a b G0 G1 : ℝ) : ℝ :=
  (G0 * (b ^ 2 / 2 * Real.log b + (a ^ 2 / 2 - a * b) * Real.log a - 3 / 4 * b ^ 2 + a * b - a ^ 2 / 4) +
    G1 * ((b ^ 2 / 2 - a * b) * Real.log b + a ^ 2 / 2 * Real.log a - b ^ 2 / 4 + a * b - 3 / 4 * a ^ 2)) / (b - a)

theorem integral_log_mul_affine {a b : ℝ} (ha : 0 < a) (hab : a < b) (G0 G1 : ℝ) :
    ∫ x in a..b, Real.log x * ((G0 * (b - x) + G1 * (x - a)) / (b - a)) = cfPiece a b G0 G1 := by
  have hba : b - a ≠ 0 := sub_ne_zero.mpr hab.ne'
  have hpos : ∀ x ∈ uIcc a b, 0 < x := fun x hx => by
    rw [uIcc_of_le hab.le] at hx
    exact lt_of_lt_of_le ha hx.1
  have hderiv : ∀ x ∈ uIcc a b, HasDerivAt
      (fun x => (G0 * (b * (x * Real.log x - x) - (x ^ 2 / 2 * Real.log x - x ^ 2 / 4)) +
        G1 * ((x ^ 2 / 2 * Real.log x - x ^ 2 / 4) - a * (x * Real.log x - x))) / (b - a))
      (Real.log x * ((G0 * (b - x) + G1 * (x - a)) / (b - a))) x := by
    intro x hx
    have hx0 := hpos x hx
    have h1 : HasDerivAt (fun x => x * Real.log x - x) (Real.log x) x := by
      have := ((hasDerivAt_id' x).mul (Real.hasDerivAt_log hx0.ne')).sub (hasDerivAt_id' x)
      convert this using 1
      field_simp
      ring
    have h2 : HasDerivAt (fun x => x ^ 2 / 2 * Real.log x - x ^ 2 / 4) (x * Real.log x) x := by
      have := (((hasDerivAt_pow 2 x).div_const 2).mul (Real.hasDerivAt_log hx0.ne')).sub
        ((hasDerivAt_pow 2 x).div_const 4)
      convert this using 1
      field_simp
      ring
    have := ((((h1.const_mul b).sub h2).const_mul G0).add ((h2.sub (h1.const_mul a)).const_mul G1)).div_const (b - a)
    convert this using 1
    field_simp
  have hcont : ContinuousOn (fun x => Real.log x * ((G0 * (b - x) + G1 * (x - a)) / (b - a))) (uIcc a b) := by
    apply ContinuousOn.mul
    · exact Real.continuousOn_log.mono (fun x hx => (hpos x hx).ne')
    · fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hderiv hcont.intervalIntegrable]
  unfold cfPiece
  field_simp
  ring

theorem vUp_ge (c : ℤ) {L : ℤ × ℤ} {ℓ : ℝ} (h1 : (L.1 : ℝ) ≤ ℓ) (h2 : ℓ ≤ L.2) : (c : ℝ) * ℓ ≤ (vUp c L : ℝ) := by
  unfold vUp
  split_ifs with hc
  · push_cast
    exact mul_le_mul_of_nonneg_left h2 (by exact_mod_cast hc)
  · push_cast
    have : (c : ℝ) ≤ 0 := by exact_mod_cast (le_of_lt (not_le.mp hc))
    exact mul_le_mul_of_nonpos_left h1 this

theorem DEN_cast : ((DEN : ℕ) : ℝ) = 400 := by
  unfold DEN
  norm_num

theorem logT_DEN {n : ℕ} (hn : 0 < n) :
    ((logT TAB L2 n DEN).1 : ℝ) ≤ 2 ^ TPCore.P * Real.log ((n : ℝ) / 400) ∧
      2 ^ TPCore.P * Real.log ((n : ℝ) / 400) ≤ ((logT TAB L2 n DEN).2 : ℝ) := by
  have h := TPMahler.Cert.logT_all n DEN hn (by unfold DEN; norm_num)
  rw [DEN_cast] at h
  exact h

theorem vA1_ge {n m : ℕ} (hn : 0 < n) (hm : 0 < m) :
    2 ^ TPCore.P * (2 * (m : ℝ) * m * Real.log ((m : ℝ) / 400) + (2 * (n : ℝ) * n - 4 * n * m) * Real.log ((n : ℝ) / 400) +
      (-3 * (m : ℝ) * m + 4 * n * m - n * n)) ≤ (vA1 n m : ℝ) := by
  obtain ⟨hA1, hA2⟩ := logT_DEN hn
  obtain ⟨hB1, hB2⟩ := logT_DEN hm
  have e1 := vUp_ge (2 * (m : ℤ) * m) hB1 hB2
  have e2 := vUp_ge (2 * (n : ℤ) * n - 4 * n * m) hA1 hA2
  unfold vA1
  push_cast at e1 e2 ⊢
  nlinarith

theorem vA2_ge {n m : ℕ} (hn : 0 < n) (hm : 0 < m) :
    2 ^ TPCore.P * ((2 * (m : ℝ) * m - 4 * n * m) * Real.log ((m : ℝ) / 400) + 2 * (n : ℝ) * n * Real.log ((n : ℝ) / 400) +
      (-(m : ℝ) * m + 4 * n * m - 3 * n * n)) ≤ (vA2 n m : ℝ) := by
  obtain ⟨hA1, hA2⟩ := logT_DEN hn
  obtain ⟨hB1, hB2⟩ := logT_DEN hm
  have e1 := vUp_ge (2 * (m : ℤ) * m - 4 * n * m) hB1 hB2
  have e2 := vUp_ge (2 * (n : ℤ) * n) hA1 hA2
  unfold vA2
  push_cast at e1 e2 ⊢
  nlinarith

/-- **One piece**: the closed form is at most `vPieceF / 2^P`. -/
theorem vPieceF_sound {n m : ℕ} (hn : 0 < n) (hnm : n < m) (g0 g1 : ℕ) :
    cfPiece ((n : ℝ) / 400) ((m : ℝ) / 400) ((g0 : ℝ) / 2 ^ TUCore.GS) ((g1 : ℝ) / 2 ^ TUCore.GS) ≤
      (vPieceF n m g0 g1 : ℝ) / 2 ^ TPCore.P := by
  have hm : 0 < m := lt_trans hn hnm
  have h1 := vA1_ge hn hm
  have h2 := vA2_ge hn hm
  have hden : 0 < 2 ^ TUCore.GS * (4 * DEN) * (m - n) :=
    Nat.mul_pos (Nat.mul_pos (pow_pos (by norm_num) _) (by unfold DEN; norm_num)) (Nat.sub_pos_of_lt hnm)
  have hc := le_cdiv ((g0 : ℤ) * vA1 n m + (g1 : ℤ) * vA2 n m) hden
  have hP : (0 : ℝ) < 2 ^ TPCore.P := by positivity
  have hGS : (0 : ℝ) < 2 ^ TUCore.GS := by positivity
  have hmn : (0 : ℝ) < (m : ℝ) - n := by
    have : (n : ℝ) < m := by exact_mod_cast hnm
    linarith
  have hdenR : (((2 ^ TUCore.GS * (4 * DEN) * (m - n) : ℕ) : ℝ)) = 2 ^ TUCore.GS * 1600 * ((m : ℝ) - n) := by
    rw [Nat.cast_mul, Nat.cast_mul, Nat.cast_sub hnm.le, Nat.cast_pow, Nat.cast_mul, DEN_cast]
    push_cast
    ring
  unfold vPieceF
  rw [le_div_iff₀ hP]
  refine le_trans ?_ hc
  rw [hdenR]
  set La := Real.log ((n : ℝ) / 400) with hLa
  set Lb := Real.log ((m : ℝ) / 400) with hLb
  have hcf : cfPiece ((n : ℝ) / 400) ((m : ℝ) / 400) ((g0 : ℝ) / 2 ^ TUCore.GS) ((g1 : ℝ) / 2 ^ TUCore.GS) =
      ((g0 : ℝ) * (2 * (m : ℝ) * m * Lb + (2 * (n : ℝ) * n - 4 * n * m) * La + (-3 * (m : ℝ) * m + 4 * n * m - n * n)) +
        (g1 : ℝ) * ((2 * (m : ℝ) * m - 4 * n * m) * Lb + 2 * (n : ℝ) * n * La + (-(m : ℝ) * m + 4 * n * m - 3 * n * n))) /
        (2 ^ TUCore.GS * 1600 * ((m : ℝ) - n)) := by
    unfold cfPiece
    rw [← hLa, ← hLb]
    field_simp
    ring
  rw [hcf, div_mul_eq_mul_div, div_le_div_iff_of_pos_right (by positivity)]
  push_cast
  have hg0 : (0 : ℝ) ≤ g0 := Nat.cast_nonneg _
  have hg1 : (0 : ℝ) ≤ g1 := Nat.cast_nonneg _
  have k1 := mul_le_mul_of_nonneg_left h1 hg0
  have k2 := mul_le_mul_of_nonneg_left h2 hg1
  nlinarith


/-! ## (V): the sum over the pieces -/

theorem vSumAux_eq_sum (M : ℕ) : ∀ (ns gs : List ℕ), ns.length = M + 1 → gs.length = M + 1 →
    vSumAux ns gs = ∑ k ∈ Finset.range M,
      vPiece (ns.getD k 0) (ns.getD (k + 1) 0) (gs.getD k 0) (gs.getD (k + 1) 0) := by
  induction M with
  | zero =>
    intro ns gs hn hg
    rcases ns with _ | ⟨n0, _ | ⟨n1, ns⟩⟩
    · simp at hn
    · rcases gs with _ | ⟨g0, _ | ⟨g1, gs⟩⟩
      · simp at hg
      · simp [vSumAux]
      · simp at hg
    · simp at hn
  | succ M ih =>
    intro ns gs hn hg
    rcases ns with _ | ⟨n0, _ | ⟨n1, ns⟩⟩
    · simp at hn
    · simp at hn
    rcases gs with _ | ⟨g0, _ | ⟨g1, gs⟩⟩
    · simp at hg
    · simp at hg
    have ih' := ih (n1 :: ns) (g1 :: gs) (by simpa using hn) (by simpa using hg)
    rw [Finset.sum_range_succ']
    simp only [List.getD_cons_succ, List.getD_cons_zero, zero_add] at ih' ⊢
    rw [← ih']
    have hs : vSumAux (n0 :: n1 :: ns) (g0 :: g1 :: gs) = vPiece n0 n1 g0 g1 + vSumAux (n1 :: ns) (g1 :: gs) := rfl
    rw [hs]
    ring

theorem zip_all_getD (q : ℕ × ℕ → Bool) : ∀ (l : List ℕ), (List.zip l (l.drop 1)).all q = true →
    ∀ k, k + 1 < l.length → q (l.getD k 0, l.getD (k + 1) 0) = true
  | [], _, k, hk => by simp at hk
  | [_], _, k, hk => by simp at hk
  | a :: b :: t, h, k, hk => by
    have h' : List.zip (a :: b :: t) ((a :: b :: t).drop 1) = (a, b) :: List.zip (b :: t) ((b :: t).drop 1) := by
      simp
    rw [h', List.all_cons, Bool.and_eq_true] at h
    cases k with
    | zero => simpa using h.1
    | succ k =>
      have := zip_all_getD q (b :: t) h.2 k (by simp at hk ⊢; omega)
      simpa using this

theorem noStraddle_spec (h : vNoStraddle = true) :
    ∀ k < NN, TUCore.nodes.getD (k + 1) 0 ≤ 400 ∨ 400 ≤ TUCore.nodes.getD k 0 := by
  intro k hk
  have := zip_all_getD (fun x => decide (x.2 ≤ DEN) || decide (DEN ≤ x.1)) TUCore.nodes h k
    (by rw [nodes_length]; omega)
  simp only [Bool.or_eq_true, decide_eq_true_eq] at this
  unfold DEN at this
  exact this

/-! ## (V): the integral against `pwLin` -/

theorem mul_pwPiece_eq_indicator' (w : ℝ → ℝ) (k : ℕ) :
    (fun y => w y * pwPiece eR GR k y) = Set.indicator (Ico (eR k) (eR (k + 1))) (fun y => w y * pwAff eR GR k y) := by
  funext y
  rw [pwPiece_eq_indicator]
  by_cases hy : y ∈ Ico (eR k) (eR (k + 1))
  · rw [Set.indicator_of_mem hy, Set.indicator_of_mem hy]
  · rw [Set.indicator_of_notMem hy, Set.indicator_of_notMem hy, mul_zero]

theorem integral_posLog_pwLin : ∫ x, Real.posLog x * pwLin NN eR GR x =
    ∑ k ∈ Finset.range NN, ∫ x in eR k..eR (k + 1), Real.posLog x * pwAff eR GR k x := by
  have hint : ∀ k ∈ Finset.range NN, Integrable (fun y => Real.posLog y * pwPiece eR GR k y) := by
    intro k hk
    have hk := Finset.mem_range.mp hk
    rw [mul_pwPiece_eq_indicator']
    exact (integrable_indicator_iff measurableSet_Ico).mpr
      (((Real.continuous_posLog.mul (continuous_pwAff eR GR k)).integrableOn_Icc).mono_set Ico_subset_Icc_self)
  have h : (fun y => Real.posLog y * pwLin NN eR GR y) = fun y => ∑ k ∈ Finset.range NN, Real.posLog y * pwPiece eR GR k y := by
    funext y
    rw [pwLin_eq_sum_pwPiece, Finset.mul_sum]
  rw [h, integral_finsetSum _ hint]
  refine Finset.sum_congr rfl (fun k hk => ?_)
  have hk := Finset.mem_range.mp hk
  rw [mul_pwPiece_eq_indicator', integral_indicator measurableSet_Ico, integral_Ico_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (eR_lt k hk).le]

/-- **One piece of (V)**. -/
theorem piece_le {k : ℕ} (hk : k < NN) (hstr : TUCore.nodes.getD (k + 1) 0 ≤ 400 ∨ 400 ≤ TUCore.nodes.getD k 0) :
    ∫ x in eR k..eR (k + 1), Real.posLog x * pwAff eR GR k x ≤
      (vPiece (TUCore.nodes.getD k 0) (TUCore.nodes.getD (k + 1) 0) (TUCore.gvals.getD k 0)
        (TUCore.gvals.getD (k + 1) 0) : ℝ) / 2 ^ TPCore.P := by
  have hlt := eR_lt k hk
  have hninc := nodes_inc k hk
  have hr0 := (eR_range (le_of_lt hk)).1
  have hn0 : 0 < TUCore.nodes.getD k 0 := by
    have : (45 : ℝ) / 400 ≤ (TUCore.nodes.getD k 0 : ℝ) / 400 := hr0
    have : (0 : ℝ) < TUCore.nodes.getD k 0 := by linarith
    exact_mod_cast this
  rcases hstr with hm | hn
  · -- a piece in `[0, 1]`
    have hv : vPiece (TUCore.nodes.getD k 0) (TUCore.nodes.getD (k + 1) 0) (TUCore.gvals.getD k 0)
        (TUCore.gvals.getD (k + 1) 0) = 0 := by
      unfold vPiece
      rw [ite_eq_left (by unfold DEN; exact hm)]
    rw [hv, Int.cast_zero, zero_div]
    have hzero : ∫ x in eR k..eR (k + 1), Real.posLog x * pwAff eR GR k x = ∫ x in eR k..eR (k + 1), (0 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro x hx
      rw [uIcc_of_le hlt.le] at hx
      have hx0 : 0 ≤ x := le_trans (by linarith) hx.1
      have hx1 : x ≤ 1 := by
        have : eR (k + 1) ≤ 1 := by
          unfold eR
          have : (TUCore.nodes.getD (k + 1) 0 : ℝ) ≤ 400 := by exact_mod_cast hm
          linarith
        exact le_trans hx.2 this
      simp only
      rw [TPMahler.Cert.posLog_eq_zero_of_le_one hx0 hx1, zero_mul]
    rw [hzero, intervalIntegral.integral_zero]
  · -- a piece in `[1, ∞)`
    have hm' : ¬ TUCore.nodes.getD (k + 1) 0 ≤ DEN := by
      unfold DEN
      omega
    have hv : vPiece (TUCore.nodes.getD k 0) (TUCore.nodes.getD (k + 1) 0) (TUCore.gvals.getD k 0)
        (TUCore.gvals.getD (k + 1) 0) = vPieceF (TUCore.nodes.getD k 0) (TUCore.nodes.getD (k + 1) 0)
          (TUCore.gvals.getD k 0) (TUCore.gvals.getD (k + 1) 0) := by
      unfold vPiece
      rw [ite_eq_right hm']
    rw [hv]
    have hea : 1 ≤ eR k := by
      unfold eR
      have : (400 : ℝ) ≤ TUCore.nodes.getD k 0 := by exact_mod_cast hn
      linarith
    have hlog : ∫ x in eR k..eR (k + 1), Real.posLog x * pwAff eR GR k x =
        ∫ x in eR k..eR (k + 1), Real.log x * ((GR k * (eR (k + 1) - x) + GR (k + 1) * (x - eR k)) /
          (eR (k + 1) - eR k)) := by
      apply intervalIntegral.integral_congr
      intro x hx
      rw [uIcc_of_le hlt.le] at hx
      simp only [pwAff]
      rw [TPMahler.Cert.posLog_eq_log_of_one_le (le_trans hea hx.1)]
    rw [hlog, integral_log_mul_affine (lt_of_lt_of_le one_pos hea) hlt]
    exact vPieceF_sound hn0 hninc _ _

/-- **Condition (V)**: `(1/s) ∫ log⁺ x G(x) dx ≤ v₀`. -/
theorem V_sound (h : VOK = true) :
    (∫ x, Real.posLog x * pwLin NN eR GR x) / sR ≤ 544618200701 / 1000000000000 := by
  simp only [VOK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨hns, hineq⟩ := h
  have hstr := noStraddle_spec hns
  have hI : ∫ x, Real.posLog x * pwLin NN eR GR x ≤ (vSumAux TUCore.nodes TUCore.gvals : ℝ) / 2 ^ TPCore.P := by
    rw [integral_posLog_pwLin, vSumAux_eq_sum NN TUCore.nodes TUCore.gvals nodes_length gvals_length,
      Int.cast_sum, Finset.sum_div]
    exact Finset.sum_le_sum (fun k hk => piece_le (Finset.mem_range.mp hk) (hstr k (Finset.mem_range.mp hk)))
  have hs := sR_pos
  have hD := sDenU_pos
  have hvn : ((vNum : ℕ) : ℝ) = 544618200701 := by unfold vNum; norm_num
  have hvd : ((vDen : ℕ) : ℝ) = 1000000000000 := by unfold vDen; norm_num
  unfold sR at hs ⊢
  generalize vSumAux TUCore.nodes TUCore.gvals = V at hI hineq
  generalize ∫ x, Real.posLog x * pwLin NN eR GR x = I at hI ⊢
  generalize sNumU = sN at hineq hs ⊢
  generalize sDenU = sD at hineq hs hD ⊢
  have hR : (V : ℝ) * (((vDen : ℕ) : ℝ) * sD) ≤ (((vNum : ℕ) : ℝ) * sN) * 2 ^ TPCore.P := by
    have : ((V * ((vDen * sD : ℕ) : ℤ) : ℤ) : ℝ) ≤ ((((vNum * sN : ℕ) : ℤ) * 2 ^ TPCore.P : ℤ) : ℝ) := by
      exact_mod_cast hineq
    push_cast at this
    exact this
  rw [hvn, hvd] at hR
  have hP : (0 : ℝ) < 2 ^ TPCore.P := by positivity
  have hDR : (0 : ℝ) < (sD : ℝ) := by exact_mod_cast hD
  have hsN : (0 : ℝ) < (sN : ℝ) / sD := hs
  rw [div_le_iff₀ hsN]
  have h1 : (V : ℝ) / 2 ^ TPCore.P ≤ 544618200701 / 1000000000000 * ((sN : ℝ) / sD) := by
    rw [div_le_iff₀ hP]
    have e : 544618200701 / 1000000000000 * ((sN : ℝ) / sD) * 2 ^ TPCore.P =
        544618200701 * sN * 2 ^ TPCore.P / (1000000000000 * sD) := by
      field_simp
    rw [e, le_div_iff₀ (by positivity)]
    linarith
  linarith

end TPUpper.Cert
