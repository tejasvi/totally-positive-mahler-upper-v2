import TUCore.Check

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem C1OK_K : C1OK = true := by decide +kernel

end TUCore.TUK
