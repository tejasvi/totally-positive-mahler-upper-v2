import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_19 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 7793 2 ((quad15.drop 9500).take 500)
    8293 2 = some 4390461116230707274 := by decide +kernel

end TUCore.TUK
