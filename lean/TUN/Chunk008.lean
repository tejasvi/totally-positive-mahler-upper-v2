import TUCore.Leaves

/-! Shard 8 of the (C3) tiling (N): leaves 2280 .. 2564. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_008 :
    leavesOKU mkCtxU 11032 4 ((leavesU.drop 2280).take 285) 12425 4 = true := by
  native_decide

end TUCore.TUN
