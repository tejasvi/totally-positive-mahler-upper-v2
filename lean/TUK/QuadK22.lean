import TUCore.LitsU
import TUCore.Quad
import TUCore.Quad15Data

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUK

theorem quad_22 : quadSum ctxLitU.tab ctxLitU.l2 (polys.getD 15 []) 9293 2 ((quad15.drop 11000).take 500)
    9793 2 = some 3824891932835736081 := by decide +kernel

end TUCore.TUK
