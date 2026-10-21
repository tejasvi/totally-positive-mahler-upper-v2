import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_29 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 12793 2 ((quad15.drop 14500).take 500)
    13293 2 = some 1302763292558780827 := by decide +kernel

end TUCore.TUK
