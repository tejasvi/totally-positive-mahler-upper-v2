import TUCore.LitsU

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem ctxU_eq : mkCtxU = ctxLitU := by decide +kernel

end TUCore.TUK
