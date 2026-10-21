import TUCore.LitsU
import TUCore.Leaves

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem leaf_04220 : leafOKU ctxLitU (leavesU.getD 4220 ⟨0, 0, 0, 0, false, 0⟩) = true := by decide +kernel

end TUCore.TUK
