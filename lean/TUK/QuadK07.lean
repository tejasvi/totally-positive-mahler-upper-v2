import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_07 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 2543 2 ((quad15.drop 3500).take 500)
    2854 2 = some (-203239615219259643) := by decide +kernel

end TUCore.TUK
