import TUCore.LitsU
import TUCore.C2

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem c2_10 : c2OK ctxLitU (polys.getD 10 []) (c2brs.getD 10 []) = true := by decide +kernel

end TUCore.TUK
