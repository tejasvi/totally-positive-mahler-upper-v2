import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_09 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 964218056401495301085 60 ((quad15.drop 4500).take 500)
    3665 2 = some 2751868573348406447 := by decide +kernel

end TUCore.TUK
