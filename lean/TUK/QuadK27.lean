import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_27 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 11793 2 ((quad15.drop 13500).take 500)
    12293 2 = some 3988197479856675913 := by decide +kernel

end TUCore.TUK
