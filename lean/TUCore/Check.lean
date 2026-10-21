import TPCore.Check
import TUCore.Data

/-!
# The checker for condition (C3) of the certificate (core Lean only)

`h(x) = U(x) - ∑ⱼ bⱼ log |Qⱼ(x)| ≥ 0` on `[e₀, e_N]`. The arithmetic is that of the lower-bound checker `TPCore.Check`, whose
helpers are reused (logarithms, interval products, Taylor shifts, the per-polynomial leaf data `polyLeaf`, the point
pass `pointPass`); the signs of the potential are flipped. Every quantity is an integer; real numbers appear only in the
soundness proof. Scales: logarithms and values of `h` at `2^P`; slope jumps `C_i` at `2^QS`; a point is `x = X / D`
with `D = 400 · 2^k` (the nodes are `eᵢ = nᵢ / 400`).

* `mkRecsU` computes the node records `(n_i, sign C_i, ⌊2^QS C_i⌋, ⌈2^QS C_i⌉)` from the nodes and G values.
* `chordOKU` checks a chord leaf `[p, q]`: lower bounds `L(p), L(q) > 0` of the linear minorant
  `chord_A - M_A h^2/8 + T(x₀) + T'(x₀)(x - x₀)` of `h = A + T` on `[p, q]` (`T`: the convex polynomial terms selected
  by `mask`, with the tangent at `x₀ ∈ {p, q}`, plus the slope-jump terms of nodes at `p` or `q` with `C_i < 0`, which
  are `≥ 0`).
* `windowOKU` checks a window `[u, v]` (`|Q_j| ≤ B_j` on the window, `U ≥ U(u) - h · 47 ∑|C_i|`).
-/

namespace TUCore

open AuxCore
open TPCore (P QS logT fdiv cdiv imul NRec LAcc yEncl pointStep pointPass uHi taylorR encl polyLeaf sumAbsC
  Leaf ptEq sNumAux TAB L2)

def DEN : Nat := 400

/-- Records from the nodes and G values at scale `2^q`: `pn / pd` is the slope of the previous piece. -/
def mkRecsAuxU (q gs : Nat) : Int → Nat → List Nat → List Nat → List NRec
  | pn, pd, n0 :: n1 :: ns, g0 :: g1 :: gv =>
    let sn : Int := ((g1 : Int) - (g0 : Int)) * (DEN : Int)
    let sd : Nat := (n1 - n0) * 2 ^ gs
    let num : Int := sn * (pd : Int) - pn * (sd : Int)
    let den : Nat := sd * pd
    ⟨n0, Int.sign num, fdiv (num * 2 ^ q) den, cdiv (num * 2 ^ q) den⟩ :: mkRecsAuxU q gs sn sd (n1 :: ns) (g1 :: gv)
  | pn, pd, [n0], [_] => [⟨n0, Int.sign (-pn), fdiv (-pn * 2 ^ q) pd, cdiv (-pn * 2 ^ q) pd⟩]
  | _, _, _, _ => []

def mkRecsU (gs : Nat) (ns gv : List Nat) : List NRec := mkRecsAuxU QS gs 0 1 ns gv

/-! ## The node pass of a chord leaf (singular nodes: `C_i < 0` at an end) -/

def leafStepU (tab : Nat) (l2 : Nat × Nat) (k Xp Xq : Nat) (LD : Int × Int) (a : LAcc) (r : NRec) : LAcc :=
  if r.sg = 0 then a else
  let ni : Nat := r.n * 2 ^ k
  if Xp < ni ∧ ni < Xq then { a with inside := true } else
  let ap : Nat := if Xp ≤ ni then ni - Xp else Xp - ni
  let aq : Nat := if Xq ≤ ni then ni - Xq else Xq - ni
  let sing : Bool := decide (r.sg < 0) && (ap == 0 || aq == 0)
  if sing then a else
  let Lp := logT tab l2 ap 1
  let Lq := logT tab l2 aq 1
  let up := if ap = 0 then ((0 : Int), (0 : Int)) else imul (r.clo, r.chi) (yEncl ap Lp LD)
  let uq := if aq = 0 then ((0 : Int), (0 : Int)) else imul (r.clo, r.chi) (yEncl aq Lq LD)
  -- node part of M: upper bound of C_i log|x - e_i| on [p, q]
  let vlo : Int := min Lp.1 Lq.1 - LD.2
  let vhi : Int := (if ap = 0 then Lq.2 else if aq = 0 then Lp.2 else max Lp.2 Lq.2) - LD.1
  let mt : Int :=
    if 0 < r.sg then (if 0 ≤ vhi then r.chi * vhi else r.clo * vhi)
    else (if 0 ≤ vlo then r.chi * vlo else r.clo * vlo)
  ⟨a.spl + up.1, a.sph + up.2, a.sql + uq.1, a.sqh + uq.2, a.m + mt, a.inside⟩

def leafPassU (tab : Nat) (l2 : Nat × Nat) (rs : List NRec) (k Xp Xq : Nat) (LD : Int × Int) : LAcc :=
  rs.foldl (leafStepU tab l2 k Xp Xq LD) ⟨0, 0, 0, 0, 0, false⟩

/-- Lower bound of `2^P U` from the U-sum (scale `2^(P+QS+2)`, times `D^2`). -/
def uLo (S : Int × Int) (D : Nat) : Int := fdiv S.1 (D * D * 2 ^ (QS + 2))

/-! ## Leaf checks -/

structure UCtx where
  tab : Nat
  l2 : Nat × Nat
  rs : List NRec
  sumC : Nat
deriving DecidableEq

/-- Lower bounds `(L(p), L(q))` of a chord leaf, or `none`. -/
def chordLBU (c : UCtx) (Xp Xq k : Nat) (x0q : Bool) (mask : Nat) : Option (Int × Int) :=
  let D : Nat := DEN * 2 ^ k
  let H : Nat := Xq - Xp
  if Xp < Xq ∧ H ≤ D then
    let LD := logT c.tab c.l2 D 1
    let r := leafPassU c.tab c.l2 c.rs k Xp Xq LD
    if r.inside then none else
    let polyRes := (List.zip polys (List.zip bNum bSh)).zipIdx.foldl
      (fun (acc : Option (Int × Int × Int × Int × Int)) (x : (List Int × Nat × Nat) × Nat) =>
        match acc with
        | none => none
        | some (ap, aq, t0, sl, mp) =>
          match polyLeaf c.tab c.l2 Xp Xq D LD x0q (Nat.testBit mask x.2) x.1.1 x.1.2.1 x.1.2.2 with
          | none => none
          | some (ap', aq', t0', sl', mp') => some (ap + ap', aq + aq', t0 + t0', sl + sl', mp + mp'))
      (some (0, 0, 0, 0, 0))
    match polyRes with
    | none => none
    | some (pap, paq, t0, sl, mp) =>
      let Ap := uLo (r.spl, r.sph) D + pap
      let Aq := uLo (r.sql, r.sqh) D + paq
      let mn : Int := if 0 < r.m then cdiv (r.m * (H : Int) * (H : Int)) (D * D * 2 ^ QS) else 0
      let corr : Int := cdiv (mn + mp) 8
      if x0q then some (Ap + t0 + sl - corr, Aq + t0 - corr)
      else some (Ap + t0 - corr, Aq + t0 + sl - corr)
  else none

def chordOKU (c : UCtx) (Xp Xq k : Nat) (x0q : Bool) (mask : Nat) : Bool :=
  match chordLBU c Xp Xq k x0q mask with
  | some (lp, lq) => decide (0 < lp) && decide (0 < lq)
  | none => false

/-- Lower bound of `h` on the window `[Xu, Xv] / D` (scale `2^P`). -/
def windowLBU (c : UCtx) (Xu Xv k : Nat) : Int :=
  let D : Nat := DEN * 2 ^ k
  let H : Nat := Xv - Xu
  let LD := logT c.tab c.l2 D 1
  let S := pointPass c.tab c.l2 c.rs k Xu LD
  let polyPart := (List.zip polys (List.zip bNum bSh)).foldl
    (fun (acc : Int) (x : List Int × Nat × Nat) =>
      let R0 := encl H (taylorR Xu D x.1)
      let B : Nat := max R0.1.natAbs R0.2.natAbs
      acc + fdiv (-(x.2.1 : Int) * ((logT c.tab c.l2 B 1).2 - ((x.1.length - 1 : Nat) : Int) * LD.1)) (2 ^ x.2.2))
    0
  let dU : Int := cdiv ((47 * c.sumC * H : Nat) * 2 ^ P) (D * 2 ^ QS)
  uLo S D + polyPart - dU

def windowOKU (c : UCtx) (Xu Xv k : Nat) : Bool := decide (Xu < Xv) && decide (0 < windowLBU c Xu Xv k)

end TUCore

namespace TUCore

open AuxCore
open TPCore (P QS logT fdiv cdiv imul NRec LAcc yEncl pointStep pointPass uHi taylorR encl polyLeaf sumAbsC
  Leaf ptEq sNumAux TAB L2)

/-! ## Global quantities, (C1) -/

/-- `s · (2 · 400 · 2^GS) = ∑ (n_{k+1} - n_k)(g_k + g_{k+1})`. -/
def sNumU : Nat := sNumAux nodes gvals
def sDenU : Nat := 2 * DEN * 2 ^ GS

/-- The checker context. -/
def mkCtxU : UCtx :=
  let rs := mkRecsU GS nodes gvals
  { tab := TAB, l2 := L2, rs := rs, sumC := sumAbsC rs }

/-- (C1) `∑ b_j deg Q_j < s`, exactly: with `b_j = bn_j / 2^bs_j`, over the common denominator `2^S · sDen`, where
`S ≥ max bs_j`. -/
def C1OK : Bool :=
  let S := bSh.foldl max 0
  let lhs : Nat := (List.zip polys (List.zip bNum bSh)).foldl
    (fun acc x => acc + x.2.1 * (x.1.length - 1) * 2 ^ (S - x.2.2) * sDenU) 0
  decide (lhs < 2 ^ S * sNumU)

/-! ## Leaves, coverage, the complete check -/

def leafOKU (c : UCtx) (l : Leaf) : Bool :=
  if l.kind = 0 then chordOKU c l.X1 l.X2 l.k l.x0q l.mask else windowOKU c l.X1 l.X2 l.k

/-- The leaves tile `[X0 / D0, XT / DT]` in order (consecutive end points equal) and each passes. -/
def leavesOKU (c : UCtx) : Nat → Nat → List Leaf → Nat → Nat → Bool
  | X, kx, [], XT, kT => ptEq X kx XT kT
  | X, kx, l :: ls, XT, kT => ptEq X kx l.X1 l.k && leafOKU c l && leavesOKU c l.X2 l.k ls XT kT

/-- Sanity of the data: positive weights, polynomials of degree `≥ 1` with nonzero leading coefficient, increasing
nodes, `G_0 = G_N = 0`, `s > 0`, same lengths. -/
def dataOKU : Bool :=
  polys.length == bNum.length && polys.length == bSh.length &&
  bNum.all (fun c => decide (0 < c)) && polys.all (fun q => decide (2 ≤ q.length) && decide (q.headD 0 ≠ 0)) &&
  nodes.length == gvals.length && gvals.headD 1 == 0 && gvals.getLast? == some 0 &&
  (List.zip nodes (nodes.drop 1)).all (fun x => decide (x.1 < x.2)) && decide (0 < sNumU)

end TUCore
