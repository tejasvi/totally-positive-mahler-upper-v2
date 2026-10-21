import TUCore.Leaves

/-! Shard 20 of the (C3) tiling (N): leaves 5700 .. 5984. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_020 :
    leavesOKU mkCtxU 6458 2 ((leavesU.drop 5700).take 285) 1811 0 = true := by
  native_decide

end TUCore.TUN
