import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_26 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 11293 2 ((quad15.drop 13000).take 500)
    11793 2 = some 4750660144790841379 := by decide +kernel

end TUCore.TUK
