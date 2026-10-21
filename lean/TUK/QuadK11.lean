import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_11 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 4165 2 ((quad15.drop 5500).take 500)
    4665 2 = some 0 := by decide +kernel

end TUCore.TUK
