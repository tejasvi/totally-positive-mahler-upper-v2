import TUCore.LitsU
import TUCore.C2

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem c2_09 : c2OK ctxLitU (polys.getD 9 []) (c2brs.getD 9 []) = true := by decide +kernel

end TUCore.TUK
