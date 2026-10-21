import TUCore.Check

/-!
# The check of condition (V) of the certificate (core Lean only)

`(1/s) ∫ log⁺ x G(x) dx ≤ v` with `v = vNum / vDen`. On a piece `[a, b] = [n/400, m/400] ⊆ [1, ∞)` with
`G(x) = (G_k (b - x) + G_{k+1} (x - a)) / (b - a)`,
`∫_a^b log x · G(x) dx = (G_k J₁ + G_{k+1} J₂) / (b - a)`, where (with `L_a = log a`, `L_b = log b`)
`4 · 400² J₁ = 2m² L_b + (2n² - 4nm) L_a - 3m² + 4nm - n²` and
`4 · 400² J₂ = (2m² - 4nm) L_b + 2n² L_a - m² + 4nm - 3n²`
(antiderivatives `x log x - x` and `x² log x / 2 - x²/4`). Pieces in `[0, 1]` contribute `0`; no piece may straddle `1`.
The logarithms are the enclosures `TPCore.logT` at scale `2^P`, rounded in the direction given by the sign of their
coefficients; each piece is rounded up (`cdiv`).
-/

namespace TUCore

open TPCore (P logT cdiv TAB L2)

/-- An upper bound of `c · ℓ` from an enclosure `L` of `ℓ`. -/
def vUp (c : Int) (L : Int × Int) : Int := if 0 ≤ c then c * L.2 else c * L.1

/-- Upper bound of `2^P · 4 · 400² J₁` (the coefficient of `G_k`). -/
def vA1 (n m : Nat) : Int :=
  vUp (2 * (m : Int) * m) (logT TAB L2 m DEN) + vUp (2 * (n : Int) * n - 4 * n * m) (logT TAB L2 n DEN) +
    (-3 * (m : Int) * m + 4 * n * m - n * n) * 2 ^ P

/-- Upper bound of `2^P · 4 · 400² J₂` (the coefficient of `G_{k+1}`). -/
def vA2 (n m : Nat) : Int :=
  vUp (2 * (m : Int) * m - 4 * n * m) (logT TAB L2 m DEN) + vUp (2 * (n : Int) * n) (logT TAB L2 n DEN) +
    (-(m : Int) * m + 4 * n * m - 3 * n * n) * 2 ^ P

/-- Upper bound of `2^P ∫_{n/400}^{m/400} log x · G(x) dx` for a piece in `[1, ∞)` (`G_k = g0 / 2^GS`,
`G_{k+1} = g1 / 2^GS`). -/
def vPieceF (n m g0 g1 : Nat) : Int :=
  cdiv ((g0 : Int) * vA1 n m + (g1 : Int) * vA2 n m) (2 ^ GS * (4 * DEN) * (m - n))

/-- The contribution of one piece: `0` in `[0, 1]`. -/
def vPiece (n m g0 g1 : Nat) : Int := if m ≤ DEN then 0 else vPieceF n m g0 g1

/-- The sum over the pieces. -/
def vSumAux : List Nat → List Nat → Int
  | n0 :: n1 :: ns, g0 :: g1 :: gv => vPiece n0 n1 g0 g1 + vSumAux (n1 :: ns) (g1 :: gv)
  | _, _ => 0

/-- No piece straddles `1 = 400/400`. -/
def vNoStraddle : Bool :=
  (List.zip nodes (nodes.drop 1)).all (fun x => decide (x.2 ≤ DEN) || decide (DEN ≤ x.1))

/-- **Condition (V)**: `∫ log⁺ x G(x) dx ≤ v s`, i.e. `2^P ∫ ≤ 2^P vNum sNumU / (vDen sDenU)`. -/
def VOK : Bool :=
  vNoStraddle && decide (vSumAux nodes gvals * ((vDen * sDenU : Nat) : Int) ≤ ((vNum * sNumU : Nat) : Int) * 2 ^ P)

end TUCore
