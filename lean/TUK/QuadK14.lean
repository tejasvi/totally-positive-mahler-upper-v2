import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_14 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 5478 2 ((quad15.drop 7000).take 500)
    5978 2 = some 4475833639459056044 := by decide +kernel

end TUCore.TUK
