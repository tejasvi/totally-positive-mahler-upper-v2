import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_18 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 7293 2 ((quad15.drop 9000).take 500)
    7793 2 = some 2901279051288891172 := by decide +kernel

end TUCore.TUK
