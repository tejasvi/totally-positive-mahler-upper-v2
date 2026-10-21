import TUCore
import TUCore.V
/-! Negative controls for the checking programs. Run from `lean/` after the first build:
`lake env lean ../logs/lean/controls.lean`. Each line evaluates a check on the data of the certificate (unmodified) or on
a modified copy, and prints OK if the result is the expected one: `true` for the unmodified data, `false` for each
modification. -/
open TUCore

def report (name : String) (expected got : Bool) : IO Unit :=
  IO.println s!"{if expected == got then "OK " else "BAD"} {name}: expected {expected}, got {got}"

def l0 : TPCore.Leaf := leavesU.getD 0 ⟨0, 0, 0, 0, false, 0⟩
def lLast : TPCore.Leaf := leavesU.getLastD ⟨0, 0, 0, 0, false, 0⟩
def q15 : List Int := TUCore.polys.getD 15 []
def q15mod : List Int := q15.set (q15.length - 1) (q15.getLastD 0 + 1)
def vOKWith (num : Nat) : Bool :=
  vNoStraddle && decide (vSumAux TUCore.nodes TUCore.gvals * ((vDen * sDenU : Nat) : Int) ≤
    ((num * sNumU : Nat) : Int) * 2 ^ TPCore.P)
def br2 : List (Nat × Nat) := c2brs.getD 2 []
def br2shift : List (Nat × Nat) := br2.map (fun b => (b.2 + 1, b.2 + 2))

-- (C3): one interval of the tiling, and the end of the tiling
#eval report "first interval" true (leafOKU mkCtxU l0)
#eval report "first interval with its right end moved by 1/800" false (leafOKU mkCtxU { l0 with X2 := l0.X2 + 1 })
#eval report "first interval widened to the end of the tiling" false (leafOKU mkCtxU { l0 with X2 := 3526 * 2 ^ l0.k })
#eval report "last interval, ending at 3526/400" true (leavesOKU mkCtxU lLast.X1 lLast.k [lLast] 3526 0)
#eval report "last interval, end point moved by 2^-64/400" false
  (leavesOKU mkCtxU lLast.X1 lLast.k [lLast] (3526 * 2 ^ 64 + 1) 64)
-- the bound v <= v*
#eval report "bound on the claim" true (vOKWith vNum)
#eval report "bound on the claim with v* lowered by 2e-9" false (vOKWith (vNum - 2000))
-- (C2) for F_17 (Q_15) by quadrature
#eval report "quadrature for Q_15" true (quadOK mkCtxU q15 quad15)
#eval report "quadrature with its first piece removed" false (quadOK mkCtxU q15 (quad15.drop 1))
#eval report "quadrature with the constant coefficient of Q_15 increased by 1" false (quadOK mkCtxU q15mod quad15)
-- (C2) for a real-rooted polynomial, Q_2 = x^2 - 3x + 1
#eval report "(C2) for Q_2" true (c2OK mkCtxU (TUCore.polys.getD 2 []) br2)
#eval report "(C2) for Q_2 with its brackets moved off the roots" false (c2OK mkCtxU (TUCore.polys.getD 2 []) br2shift)
-- irreducibility of Q_2 modulo 2, and the same certificate for x^2 + 1, which is (x + 1)^2 modulo 2
#eval report "irreducibility certificate of Q_2" true (irredOK 2 (TUCore.polys.getD 2 []) irredCert2)
#eval report "the certificate of Q_2 used for x^2 + 1" false (irredOK 2 [1, 0, 1] irredCert2)
-- (C1)
#eval report "(C1)" true C1OK
