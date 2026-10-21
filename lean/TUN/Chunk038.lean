import TUCore.Leaves

/-! Shard 38 of the (C3) tiling (N): leaves 10830 .. 11114. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_038 :
    leavesOKU mkCtxU 13542 2 ((leavesU.drop 10830).take 285) 13827 2 = true := by
  native_decide

end TUCore.TUN
