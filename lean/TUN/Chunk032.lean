import TUCore.Leaves

/-! Shard 32 of the (C3) tiling (N): leaves 9120 .. 9404. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_032 :
    leavesOKU mkCtxU 11518 2 ((leavesU.drop 9120).take 285) 11802 2 = true := by
  native_decide

end TUCore.TUN
