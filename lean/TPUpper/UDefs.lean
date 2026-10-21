import TUCore.Check
import TPMahler.CheckSound10
import TPMahler.TailSound2
import TPUpper.Criterion

/-!
# The certificate as real-valued objects, and its data facts

The checker `TUCore` works with integers; its soundness proof talks about the real objects defined here:

* `Qc j = Qd (polys j)` (`QR l` the image in `ℝ[X]`), `bR j = bNum_j / 2^bSh_j` (`bj` on `ℕ`);
* `eR k = nodes_k / 400`, `GR k = gvals_k / 2^GS`, `NN = 3480`, `sR = sNumU / sDenU`;
* `CR i = slopeJump NN eR GR i`, `UR x = ∑ CR i Hk(eR i - x)`;
* `hR x = UR x - ∑ bj j log |Q_j(x)|`, the function of condition (C3).
-/

open Polynomial

namespace TPUpper.Cert

open TUCore AuxCore AuxCommon TPMahler
open TPMahler.Cert (Qd QR getD_lt_of_zip_all sNumAux_eq_sum)

/-- The number of polynomials. -/
def JJ : ℕ := 21

/-- The certificate polynomials. -/
noncomputable def Qc (j : Fin JJ) : ℤ[X] := Qd (TUCore.polys.getD j [])

/-- The weights. -/
noncomputable def bR (j : Fin JJ) : ℝ := (bNum.getD j 0 : ℝ) / 2 ^ (bSh.getD j 0)

/-- The weights, indexed by `ℕ`. -/
noncomputable def bj (j : ℕ) : ℝ := (bNum.getD j 0 : ℝ) / 2 ^ (bSh.getD j 0)

/-- The last node index. -/
def NN : ℕ := 3480

/-- The nodes. -/
noncomputable def eR (k : ℕ) : ℝ := (TUCore.nodes.getD k 0 : ℝ) / 400

/-- The node values of `G`. -/
noncomputable def GR (k : ℕ) : ℝ := (TUCore.gvals.getD k 0 : ℝ) / 2 ^ TUCore.GS

/-- The mass `s`. -/
noncomputable def sR : ℝ := (sNumU : ℝ) / sDenU

/-- The slope jumps. -/
noncomputable def CR (i : ℕ) : ℝ := slopeJump NN eR GR i

/-- The potential in closed form. -/
noncomputable def UR (x : ℝ) : ℝ := ∑ i ∈ Finset.range (NN + 1), CR i * Hk (eR i - x)

/-- The function of condition (C3). -/
noncomputable def hR (x : ℝ) : ℝ :=
  UR x - ∑ j ∈ Finset.range 21, bj j * Real.log |(QR (TUCore.polys.getD j [])).eval x|

/-! ## Data facts (kernel reduction) -/

set_option maxRecDepth 200000 in
theorem dataOKU_true : dataOKU = true := by decide +kernel

set_option maxRecDepth 200000 in
theorem nodes_length : TUCore.nodes.length = NN + 1 := by decide +kernel

set_option maxRecDepth 200000 in
theorem gvals_length : TUCore.gvals.length = NN + 1 := by decide +kernel

set_option maxRecDepth 200000 in
theorem gvals_first : TUCore.gvals.getD 0 0 = 0 := by decide +kernel

set_option maxRecDepth 200000 in
theorem gvals_last : TUCore.gvals.getD NN 0 = 0 := by decide +kernel

set_option maxRecDepth 200000 in
theorem nodes_first : TUCore.nodes.getD 0 0 = 45 := by decide +kernel

set_option maxRecDepth 200000 in
theorem nodes_last : TUCore.nodes.getD NN 0 = 3525 := by decide +kernel

set_option maxRecDepth 200000 in
theorem nodes_zip_inc :
    (List.zip TUCore.nodes (TUCore.nodes.drop 1)).all (fun x => decide (x.1 < x.2)) = true := by
  decide +kernel

theorem nodes_inc : ∀ k < NN, TUCore.nodes.getD k 0 < TUCore.nodes.getD (k + 1) 0 :=
  fun k hk => getD_lt_of_zip_all TUCore.nodes nodes_zip_inc k (by rw [nodes_length]; omega)

theorem eR_lt : ∀ k < NN, eR k < eR (k + 1) := by
  intro k hk
  unfold eR
  have h : (TUCore.nodes.getD k 0 : ℝ) < TUCore.nodes.getD (k + 1) 0 := by exact_mod_cast nodes_inc k hk
  exact div_lt_div_of_pos_right h (by norm_num)

theorem eR_first : eR 0 = 45 / 400 := by
  unfold eR
  rw [nodes_first]
  norm_num

theorem eR_last : eR NN = 3525 / 400 := by
  unfold eR
  rw [nodes_last]
  norm_num

theorem GR_nonneg (k : ℕ) : 0 ≤ GR k := by
  unfold GR
  positivity

theorem GR_zero : GR 0 = 0 := by
  unfold GR
  rw [gvals_first]
  simp

theorem GR_NN : GR NN = 0 := by
  unfold GR
  rw [gvals_last]
  simp

/-- The nodes lie in `[45/400, 3525/400]`. -/
theorem eR_range {i : ℕ} (hi : i ≤ NN) : 45 / 400 ≤ eR i ∧ eR i ≤ 3525 / 400 := by
  constructor
  · rw [← eR_first]; exact nodes_mono eR_lt (Nat.zero_le i) hi
  · rw [← eR_last]; exact nodes_mono eR_lt hi le_rfl

/-- `s = ∑ₖ (e_{k+1} - e_k)(G_k + G_{k+1})/2` for the certificate. -/
theorem sR_eq_trapezoid : sR = ∑ k ∈ Finset.range NN, (eR (k + 1) - eR k) * (GR k + GR (k + 1)) / 2 := by
  unfold sR sNumU sDenU
  rw [sNumAux_eq_sum NN TUCore.nodes TUCore.gvals nodes_length gvals_length (fun k hk => (nodes_inc k hk).le)]
  unfold eR GR
  rw [Finset.sum_div]
  refine Finset.sum_congr rfl (fun k _ => ?_)
  simp only [DEN]
  push_cast
  field_simp
  ring

theorem sR_pos : 0 < sR := by
  have h := dataOKU_true
  simp only [dataOKU, Bool.and_eq_true, decide_eq_true_eq] at h
  unfold sR
  have h1 : (0 : ℝ) < sNumU := by exact_mod_cast h.2
  have h2 : (0 : ℝ) < sDenU := by
    have : 0 < sDenU := Nat.mul_pos (Nat.mul_pos (by norm_num) (by unfold DEN; norm_num)) (pow_pos (by norm_num) _)
    exact_mod_cast this
  exact div_pos h1 h2

end TPUpper.Cert
