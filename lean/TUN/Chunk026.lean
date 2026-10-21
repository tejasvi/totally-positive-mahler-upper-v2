import TUCore.Leaves

/-! Shard 26 of the (C3) tiling (N): leaves 7410 .. 7694. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_026 :
    leavesOKU mkCtxU 9025 2 ((leavesU.drop 7410).take 285) 9416 2 = true := by
  native_decide

end TUCore.TUN
