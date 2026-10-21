import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_13 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 1436661213519335108815 60 ((quad15.drop 6500).take 500)
    5478 2 = some 5188811728266365779 := by decide +kernel

end TUCore.TUK
