import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_02 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 220567311329126710361 60 ((quad15.drop 1000).take 500)
    271588326842553910046 60 = some (-10306502190354895859) := by decide +kernel

end TUCore.TUK
