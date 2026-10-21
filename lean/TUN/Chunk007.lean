import TUCore.Leaves

/-! Shard 7 of the (C3) tiling (N): leaves 1995 .. 2279. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_007 :
    leavesOKU mkCtxU 10457 4 ((leavesU.drop 1995).take 285) 11032 4 = true := by
  native_decide

end TUCore.TUN
