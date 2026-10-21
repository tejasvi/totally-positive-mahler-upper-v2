import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_08 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 2854 2 ((quad15.drop 4000).take 500)
    964218056401495301085 60 = some 2026645589382186569 := by decide +kernel

end TUCore.TUK
