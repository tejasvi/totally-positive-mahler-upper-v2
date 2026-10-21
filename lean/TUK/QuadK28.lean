import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_28 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 12293 2 ((quad15.drop 14000).take 500)
    12793 2 = some 3395897427111197474 := by decide +kernel

end TUCore.TUK
