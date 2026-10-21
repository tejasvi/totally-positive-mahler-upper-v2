import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_31 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 13793 2 ((quad15.drop 15500).take 307)
    3525 0 = some 4545602279650346623 := by decide +kernel

end TUCore.TUK
