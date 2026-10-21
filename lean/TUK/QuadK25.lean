import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_25 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 10793 2 ((quad15.drop 12500).take 500)
    11293 2 = some 3740452418469523061 := by decide +kernel

end TUCore.TUK
