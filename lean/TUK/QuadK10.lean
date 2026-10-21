import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_10 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 3665 2 ((quad15.drop 5000).take 500)
    4165 2 = some 889836415223521405 := by decide +kernel

end TUCore.TUK
