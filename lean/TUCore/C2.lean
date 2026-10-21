import TUCore.Check
import TUCore.C2Data

/-!
# The (C2) check of the certificate for real-rooted polynomials (core Lean only)

`∫ log |Q| dμ = s log |a| + ∑_ρ U(ρ)` over the roots `ρ` of `Q` (`a` its leading coefficient). For a polynomial whose
`deg Q` roots are all real and bracketed by sign changes at scale `D = 400 · 2^60`, the checker bounds each `U(ρ)`
below by the point pass at the left end of the bracket minus the Lipschitz term `47 (∑ |Cᵢ|) (hi - lo) / D`.
-/

namespace TUCore

open AuxCore
open TPCore (P QS logT fdiv cdiv taylorR pointPass TAB L2)

/-- `D^d Q(X / D)` for the descending coefficients of `Q` (constant term of the Taylor shift). -/
def valD (desc : List Int) (X D : Nat) : Int := (taylorR X D desc).headD 0

/-- A root bracket in `[0, 22]`: `lo = hi` with `Q(lo / D) = 0`, or `lo < hi` with a sign change. -/
def bracketOK (desc : List Int) (D : Nat) (b : Nat × Nat) : Bool :=
  decide (b.2 ≤ 22 * D) &&
  (if b.1 = b.2 then valD desc b.1 D == 0
   else decide (b.1 < b.2) && decide (valD desc b.1 D * valD desc b.2 D < 0))

/-- The brackets are increasing and disjoint. -/
def bracketsSorted : List (Nat × Nat) → Bool
  | b1 :: b2 :: bs => decide (b1.2 < b2.1) && bracketsSorted (b2 :: bs)
  | _ => true

/-- Lower bound (scale `2^P`) of `∑ U(ρ)` over one root in each bracket, at scale `D = 400 · 2^k`. -/
def rootsULo (c : UCtx) (k : Nat) (brs : List (Nat × Nat)) : Int :=
  let D : Nat := DEN * 2 ^ k
  let LD := logT c.tab c.l2 D 1
  brs.foldl (fun (acc : Int) (b : Nat × Nat) =>
    acc + (uLo (pointPass c.tab c.l2 c.rs k b.1 LD) D -
      cdiv (((47 * c.sumC * (b.2 - b.1) : Nat) : Int) * 2 ^ P) (D * 2 ^ QS))) 0

/-- Lower bound (scale `2^P`) of `s log |a|`. -/
def sLogLo (c : UCtx) (a : Int) : Int := fdiv ((sNumU : Int) * (logT c.tab c.l2 a.natAbs 1).1) sDenU

/-- Lower bound (scale `2^P`) of `∫ log |Q| dμ` for a real-rooted `Q` with root brackets `brs` at scale `400 · 2^60`. -/
def c2Lo (c : UCtx) (desc : List Int) (brs : List (Nat × Nat)) : Int :=
  sLogLo c (desc.headD 0) + rootsULo c 60 brs

/-- (C2) for a real-rooted polynomial: `deg Q` brackets, all valid, increasing and disjoint, and the lower bound is
`≥ 0`. -/
def c2OK (c : UCtx) (desc : List Int) (brs : List (Nat × Nat)) : Bool :=
  brs.length == desc.length - 1 && brs.all (bracketOK desc (DEN * 2 ^ 60)) && bracketsSorted brs &&
    decide (0 ≤ c2Lo c desc brs)

/-- (C2) for all the real-rooted weighted polynomials of the certificate (all but `Q_15`). -/
def c2AllOK (c : UCtx) : Bool :=
  (List.range 21).all (fun j => j == 15 || c2OK c (polys.getD j []) (c2brs.getD j []))

end TUCore
