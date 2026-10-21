import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_30 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 13293 2 ((quad15.drop 15000).take 500)
    13793 2 = some 3449012532302371609 := by decide +kernel

end TUCore.TUK
