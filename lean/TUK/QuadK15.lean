import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_15 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 5978 2 ((quad15.drop 7500).take 500)
    6293 2 = some 2885466380024026288 := by decide +kernel

end TUCore.TUK
