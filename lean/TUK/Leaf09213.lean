import TUCore.LitsU
import TUCore.Leaves

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem leaf_09213 : leafOKU ctxLitU (leavesU.getD 9213 ⟨0, 0, 0, 0, false, 0⟩) = true := by decide +kernel

end TUCore.TUK
