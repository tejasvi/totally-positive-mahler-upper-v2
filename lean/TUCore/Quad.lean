import TUCore.Check

/-!
# Rigorous quadrature of `∫ log |Q| G` (core Lean only), for condition (C2) of a polynomial with non-real roots

A piece `(i, Xa, Xb, k, kind)` is `[a, b] = [Xa, Xb] / D`, `D = 400 · 2^k`, inside the node piece
`[n_i, n_{i+1}] / 400` (where `G` is affine). Its contribution is a lower bound (scale `2^P`) of `∫_a^b log |Q| G`:

* `kind = 0` (plain): the Taylor enclosure of `D^d Q((Xa + v)/D)` on `v ∈ [0, H]` excludes `0`, so
  `log |Q| ≥ log m` with `m` the smaller end; contribution `log m · ∫_a^b G`;
* `kind = 1` (root window, `H ≤ D`): `Q` changes sign on `[a, b]` and the enclosure of `Q'` excludes `0`, so
  `log |Q(t)| ≥ log m' + log |t - ρ|` (mean value theorem); contribution
  `log m' · ∫_a^b G + G_max (w log (w/2) - w)`, `w = b - a ≤ 1`.

`∫_a^b G = (b - a)(G(a) + G(b))/2` exactly, with `G(t) = Gnum(t) / W` on the node piece.
-/

namespace TUCore

open AuxCore
open TPCore (P QS logT fdiv cdiv taylorR encl derivAsc TAB L2)

/-- `(G(a)·W, G(b)·W, W)` on node piece `i` at scale `k`, for `[Xa, Xb] ⊆ [n_i, n_{i+1}] · 2^k`. -/
def gParts (i Xa Xb k : Nat) : Nat × Nat × Nat :=
  let n0 := nodes.getD i 0 * 2 ^ k
  let n1 := nodes.getD (i + 1) 0 * 2 ^ k
  let g0 := gvals.getD i 0
  let g1 := gvals.getD (i + 1) 0
  (g0 * (n1 - Xa) + g1 * (Xa - n0), g0 * (n1 - Xb) + g1 * (Xb - n0), 2 ^ GS * (n1 - n0))

/-- The piece lies in its node piece. -/
def pieceIn (i Xa Xb k : Nat) : Bool :=
  decide (i < nodes.length - 1) && decide (nodes.getD i 0 * 2 ^ k ≤ Xa) && decide (Xa < Xb) &&
    decide (Xb ≤ nodes.getD (i + 1) 0 * 2 ^ k)

/-- Lower bound (scale `2^P`) of `∫ log |Q| G` over one piece, or `none`. -/
def pieceLo (tab : Nat) (l2 : Nat × Nat) (desc : List Int) (i Xa Xb k kind : Nat) : Option Int :=
  let D : Nat := DEN * 2 ^ k
  let H : Nat := Xb - Xa
  let d : Nat := desc.length - 1
  let LD := logT tab l2 D 1
  let beta := taylorR Xa D desc
  let gp := gParts i Xa Xb k
  let mnum : Int := ((H * (gp.1 + gp.2.1) : Nat) : Int)
  let mden : Nat := D * 2 * gp.2.2
  if kind = 0 then
    let R0 := encl H beta
    if decide (0 < R0.1) || decide (R0.2 < 0) then
      let m : Nat := min R0.1.natAbs R0.2.natAbs
      let L : Int := (logT tab l2 m 1).1 - (d : Int) * LD.2
      some (fdiv (L * mnum) mden)
    else none
  else
    let Wa : Int := beta.headD 0
    let Wb : Int := TPCore.evalAsc (H : Int) beta
    let R1 := encl H (derivAsc beta)
    if decide (H ≤ D) && decide (Wa * Wb < 0) && (decide (0 < R1.1) || decide (R1.2 < 0)) then
      let m1 : Nat := min R1.1.natAbs R1.2.natAbs
      let L1 : Int := (logT tab l2 m1 1).1 - ((d - 1 : Nat) : Int) * LD.2
      let Lw : Int := (logT tab l2 H (2 * D)).1
      let gmax : Nat := max gp.1 gp.2.1
      some (fdiv (L1 * mnum) mden + fdiv ((gmax * H : Nat) * (Lw - 2 ^ P)) (gp.2.2 * D))
    else none

/-- The pieces tile `[X0, XT] / 400` in order, each lies in its node piece, and the sum of the lower bounds. -/
def quadSum (tab : Nat) (l2 : Nat × Nat) (desc : List Int) :
    Nat → Nat → List (Nat × Nat × Nat × Nat × Nat) → Nat → Nat → Option Int
  | X, kx, [], XT, kT => if TPCore.ptEq X kx XT kT then some 0 else none
  | X, kx, (i, Xa, Xb, k, kind) :: ps, XT, kT =>
    if TPCore.ptEq X kx Xa k && pieceIn i Xa Xb k then
      match pieceLo tab l2 desc i Xa Xb k kind, quadSum tab l2 desc Xb k ps XT kT with
      | some v, some w => some (v + w)
      | _, _ => none
    else none

/-- (C2) by quadrature: the pieces tile `[e_0, e_N] = [45, 3525] / 400` and the total lower bound is `≥ 0`. -/
def quadOK (c : UCtx) (desc : List Int) (ps : List (Nat × Nat × Nat × Nat × Nat)) : Bool :=
  match quadSum c.tab c.l2 desc 45 0 ps 3525 0 with
  | some v => decide (0 ≤ v)
  | none => false

end TUCore
