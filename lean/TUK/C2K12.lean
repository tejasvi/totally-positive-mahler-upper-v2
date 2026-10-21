import TUCore.LitsU
import TUCore.C2

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem c2_12 : c2OK ctxLitU (polys.getD 12 []) (c2brs.getD 12 []) = true := by decide +kernel

end TUCore.TUK
