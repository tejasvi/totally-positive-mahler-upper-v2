import TUCore.LitsU
import TUCore.C2

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem c2_11 : c2OK ctxLitU (polys.getD 11 []) (c2brs.getD 11 []) = true := by decide +kernel

end TUCore.TUK
