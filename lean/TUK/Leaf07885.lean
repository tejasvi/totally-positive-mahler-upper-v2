import TUCore.LitsU
import TUCore.Leaves

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem leaf_07885 : leafOKU ctxLitU (leavesU.getD 7885 ⟨0, 0, 0, 0, false, 0⟩) = true := by decide +kernel

end TUCore.TUK
