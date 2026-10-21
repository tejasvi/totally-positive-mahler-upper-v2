import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_17 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 6793 2 ((quad15.drop 8500).take 500)
    7293 2 = some 0 := by decide +kernel

end TUCore.TUK
