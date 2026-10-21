import TUCore.LitsU
import TUCore.C2

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem c2_16 : c2OK ctxLitU (polys.getD 16 []) (c2brs.getD 16 []) = true := by decide +kernel

end TUCore.TUK
