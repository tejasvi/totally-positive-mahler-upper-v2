import TUCore.Leaves

/-! Shard 1 of the (C3) tiling (N): leaves 285 .. 569. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_001 :
    leavesOKU mkCtxU 95 0 ((leavesU.drop 285).take 285) 155 0 = true := by
  native_decide

end TUCore.TUN
