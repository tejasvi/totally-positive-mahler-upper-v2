import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_06 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 2233 2 ((quad15.drop 3000).take 500)
    2543 2 = some (-988640024381233446) := by decide +kernel

end TUCore.TUK
