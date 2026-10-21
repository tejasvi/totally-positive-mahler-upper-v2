import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_03 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 271588326842553910046 60 ((quad15.drop 1500).take 500)
    1233 2 = some (-13204838208107091130) := by decide +kernel

end TUCore.TUK
