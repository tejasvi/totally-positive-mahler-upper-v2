import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_24 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 10293 2 ((quad15.drop 12000).take 500)
    10793 2 = some 3687319083811867374 := by decide +kernel

end TUCore.TUK
