import TUCore.Leaves

/-! Shard 36 of the (C3) tiling (N): leaves 10260 .. 10544. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_036 :
    leavesOKU mkCtxU 12633 2 ((leavesU.drop 10260).take 285) 13257 2 = true := by
  native_decide

end TUCore.TUN
