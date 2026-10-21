import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_23 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 9793 2 ((quad15.drop 11500).take 500)
    10293 2 = some 0 := by decide +kernel

end TUCore.TUK
