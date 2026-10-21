import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_20 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 8293 2 ((quad15.drop 10000).take 500)
    8793 2 = some 4552270877033977639 := by decide +kernel

end TUCore.TUK
