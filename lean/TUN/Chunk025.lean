import TUCore.Leaves

/-! Shard 25 of the (C3) tiling (N): leaves 7125 .. 7409. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_025 :
    leavesOKU mkCtxU 8777 2 ((leavesU.drop 7125).take 285) 9025 2 = true := by
  native_decide

end TUCore.TUN
