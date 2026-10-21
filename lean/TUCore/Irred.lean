/-!
# Irreducibility certificates modulo `p` (core Lean only)

Polynomials over `𝔽_p` are ascending coefficient lists `List Nat`. `irredOK p desc cert` checks, for the integer
polynomial `Q` with descending coefficients `desc`:

* `deg Q ≥ 1` and `p ∤ lead Q`;
* `cert` has an entry `(r_k, u_k, v_k)` for every `1 ≤ k ≤ deg Q / 2`;
* `r_k ≡ r_{k-1}^p` modulo `Q̄ = Q mod p` (with `r_0 = X`), recomputed by square and multiply, so `r_k ≡ X^(p^k)`;
* `u_k Q̄ + v_k (r_k - X) = 1` in `𝔽_p[X]`.

Reductions modulo `Q̄` are computed as `f - quot · Q̄` with a quotient from long division, so they are congruent to `f`
whatever the quotient; no property of the division is needed for soundness (`TPUpper.IrredSound`). Primality of `p` is
not checked here.
-/

namespace TUCore

/-- Pointwise sum of ascending coefficient lists, reduced mod `p`. -/
def padd (p : Nat) : List Nat → List Nat → List Nat
  | [], b => b.map (· % p)
  | x :: xs, [] => (x :: xs).map (· % p)
  | x :: xs, y :: ys => (x + y) % p :: padd p xs ys

/-- Negation mod `p`. -/
def pneg (p : Nat) (b : List Nat) : List Nat := b.map (fun y => (p - y % p) % p)

/-- Difference mod `p`. -/
def psub (p : Nat) (a b : List Nat) : List Nat := padd p a (pneg p b)

/-- Scalar multiple mod `p`. -/
def pscale (p c : Nat) (a : List Nat) : List Nat := a.map (fun x => c * x % p)

/-- Product mod `p`. -/
def pmul (p : Nat) : List Nat → List Nat → List Nat
  | [], _ => []
  | x :: xs, b => padd p (pscale p x b) (0 :: pmul p xs b)

/-- Remove trailing zeros. -/
def ptrim : List Nat → List Nat
  | [] => []
  | a :: l =>
    match ptrim l with
    | [] => if a = 0 then [] else [a]
    | t => a :: t

/-- All coefficients vanish mod `p`. -/
def pzero (p : Nat) (a : List Nat) : Bool := a.all (fun x => x % p == 0)

/-- Subtract `ys` from the prefix of `xs` (a step of long division in descending order). -/
def subPrefix (p : Nat) : List Nat → List Nat → List Nat
  | xs, [] => xs
  | [], _ :: _ => []
  | x :: xs, y :: ys => (x + p - y % p) % p :: subPrefix p xs ys

/-- Quotient coefficients (descending) of long division by a polynomial with descending tail `qt`, where `inv` is the
inverse of its leading coefficient. -/
def pquotD (p inv : Nat) (qt : List Nat) : Nat → List Nat → List Nat
  | 0, _ => []
  | _ + 1, [] => []
  | k + 1, a :: rest =>
    let c := a % p * inv % p
    c :: pquotD p inv qt k (subPrefix p rest (pscale p c qt))

/-- An (untrusted) quotient of `f` by `q` (ascending lists). -/
def pquot (p inv : Nat) (q f : List Nat) : List Nat :=
  (pquotD p inv q.reverse.tail (f.length + 1 - q.length) f.reverse).reverse

/-- A remainder of `f` modulo `q`: `f - quot · q`, congruent to `f` whatever the quotient. -/
def pmodq (p inv : Nat) (q f : List Nat) : List Nat :=
  ptrim (psub p f (pmul p (pquot p inv q f) q))

/-- `r^e` modulo `q` by square and multiply (exact for `e ≤ fuel`). -/
def ppowmod (p inv : Nat) (q r : List Nat) : Nat → Nat → List Nat
  | 0, _ => [1]
  | fuel + 1, e =>
    if e = 0 then [1] else
    let h := ppowmod p inv q r fuel (e / 2)
    let h2 := pmodq p inv q (pmul p h h)
    if e % 2 = 1 then pmodq p inv q (pmul p h2 r) else h2

/-- The chain `r_k ≡ r_{k-1}^p` and the Bezout identities `u_k q + v_k (r_k - X) = 1`. -/
def chainOK (p inv : Nat) (q : List Nat) : List Nat → List (List Nat × List Nat × List Nat) → Bool
  | _, [] => true
  | rprev, (r, u, v) :: rest =>
    pzero p (psub p r (ppowmod p inv q rprev p p)) &&
    pzero p (psub p (padd p (pmul p u q) (pmul p v (psub p r [0, 1]))) [1]) &&
    chainOK p inv q r rest

/-- The reduction mod `p` of an integer polynomial with descending coefficients, as an ascending list. -/
def redAsc (p : Nat) (desc : List Int) : List Nat := desc.reverse.map (fun a => (a % (p : Int)).toNat)

/-- **The irreducibility check** for the integer polynomial with descending coefficients `desc`. -/
def irredOK (p : Nat) (desc : List Int) (cert : List (List Nat × List Nat × List Nat)) : Bool :=
  let lead := (desc.headD 0 % (p : Int)).toNat
  decide (2 ≤ desc.length) && decide (lead ≠ 0) && decide (desc.length ≤ 2 * cert.length + 2) &&
    chainOK p (lead ^ (p - 2) % p) (redAsc p desc) [0, 1] cert

end TUCore
