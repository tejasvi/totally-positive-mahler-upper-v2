import TPUpper.CertChecksU
import TPUpper.LeavesUN
import TUN.Irred

/-!
# Theorem 1.1 of the paper, track N

The computational facts are decided by `native_decide`: the tiling of (C3) in 40 blocks (`TUN.Chunk*`,
`leavesOKU_full_N`), the irreducibility certificates (`TUN.Irred`), (C1), (C2) (root brackets for the twenty
real-rooted `Qⱼ`, quadrature for `Q₁₅`) and (V). The statements are those of `TPUpper.Statement`
(`tpup_infinite`, `tpup_limit_point`, `exp_v0_lt`); `SmithTheorem` and `ArcsinePotential` are the named hypotheses.
-/

open Polynomial Filter Topology
open AuxCommon TPMahler

namespace TPUpper.Cert

open TUCore

theorem upCertHyp_N : UpCertHyp Qc bR NN eR GR sR 9 :=
  upCertHyp_of_checks Qc_irred (by native_decide) (c2_of_all (by native_decide)) (by native_decide)
    leavesOKU_full_N

theorem V_N : (∫ x, Real.posLog x * pwLin NN eR GR x) / sR ≤ v0 := V_sound (by native_decide)

end TPUpper.Cert

namespace TPUpper.N

/-- **Theorem 1.1 of the paper, first part** (track N). -/
theorem tpup_infinite (hS : SmithTheorem) :
    {α : ℂ | IsIntegral ℤ α ∧ ∃ P : ℤ[X], IsMinpolyZ P α ∧ AllRootsPos P ∧
      (toC P).mahlerMeasure ^ ((P.natDegree : ℝ)⁻¹) < UB}.Infinite :=
  Cert.upCertHyp_N.infinite Cert.upCertHyp_N.hUp_nonneg hS Cert.UB_pos Cert.V_N Cert.v0_lt_log_UB

/-- **Theorem 1.1 of the paper, second part** (track N). -/
theorem tpup_limit_point (hS : SmithTheorem) (hA : ArcsinePotential) :
    ∃ y : ℝ, AccPt y (𝓟 Lplus) ∧ y ≤ UB :=
  Cert.upCertHyp_N.limit_point Cert.upCertHyp_N.hUp_nonneg hS hA Cert.UB_pos Cert.V_N Cert.v0_lt_log_UB.le

theorem exp_v0_lt : Real.exp v0 < UB := Cert.exp_v0_lt

end TPUpper.N
