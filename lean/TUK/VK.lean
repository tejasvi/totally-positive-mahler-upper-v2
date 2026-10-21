import TUCore.V

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem VOK_K : VOK = true := by decide +kernel

end TUCore.TUK
