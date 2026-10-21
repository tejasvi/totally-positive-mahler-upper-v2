import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_21 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 8793 2 ((quad15.drop 10500).take 500)
    9293 2 = some 4907507688903068212 := by decide +kernel

end TUCore.TUK
