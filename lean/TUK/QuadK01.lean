import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_01 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 491 2 ((quad15.drop 500).take 500)
    220567311329126710361 60 = some (-15563883882271271583) := by decide +kernel

end TUCore.TUK
