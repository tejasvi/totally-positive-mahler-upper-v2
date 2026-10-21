import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_12 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 4665 2 ((quad15.drop 6000).take 500)
    1436661213519335108815 60 = some 2574965987673339148 := by decide +kernel

end TUCore.TUK
