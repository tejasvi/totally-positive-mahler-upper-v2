import TPUpper.FinalK
import TPUpper.Statement
/-! Run from `lean/` after `lake build TPUpper.FinalK`: `lake env lean ../logs/lean/axioms_K.lean`.
Prints, for each final theorem of the second version (`TPUpper.K`), whether its type is equal to the type of the
statement of the same name in `TPUpper/Statement.lean`, and the axioms it depends on. -/
open Lean Meta Elab Command in
elab "#stmt_eq " a:ident b:ident : command => do
  let env ← getEnv
  let some ca := env.find? a.getId | throwError "no {a}"
  let some cb := env.find? b.getId | throwError "no {b}"
  logInfo m!"{a.getId} vs {b.getId}: types equal = {ca.type == cb.type}"
#stmt_eq TPUpper.K.tpup_infinite TPUpper.tpup_infinite
#stmt_eq TPUpper.K.tpup_limit_point TPUpper.tpup_limit_point
#stmt_eq TPUpper.K.exp_v0_lt TPUpper.exp_v0_lt
#print axioms TPUpper.K.tpup_infinite
#print axioms TPUpper.K.tpup_limit_point
#print axioms TPUpper.K.exp_v0_lt
