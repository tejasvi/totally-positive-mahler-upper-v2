import TUCore.Leaves

/-! Shard 37 of the (C3) tiling (N): leaves 10545 .. 10829. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_037 :
    leavesOKU mkCtxU 13257 2 ((leavesU.drop 10545).take 285) 13542 2 = true := by
  native_decide

end TUCore.TUN
