import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_00 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 45 0 ((quad15.drop 0).take 500)
    491 2 = some (-29840243296403183878) := by decide +kernel

end TUCore.TUK
