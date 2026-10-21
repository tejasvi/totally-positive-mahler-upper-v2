import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_04 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 1233 2 ((quad15.drop 2000).take 500)
    1733 2 = some 0 := by decide +kernel

end TUCore.TUK
