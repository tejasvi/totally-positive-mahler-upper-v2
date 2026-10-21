import TUCore.Leaves

/-! Shard 0 of the (C3) tiling (N): leaves 0 .. 284. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_000 :
    leavesOKU mkCtxU 45 0 ((leavesU.drop 0).take 285) 95 0 = true := by
  native_decide

end TUCore.TUN
