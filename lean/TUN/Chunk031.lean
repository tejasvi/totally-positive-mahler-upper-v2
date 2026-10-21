import TUCore.Leaves

/-! Shard 31 of the (C3) tiling (N): leaves 8835 .. 9119. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_031 :
    leavesOKU mkCtxU 11233 2 ((leavesU.drop 8835).take 285) 11518 2 = true := by
  native_decide

end TUCore.TUN
