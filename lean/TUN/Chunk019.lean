import TUCore.Leaves

/-! Shard 19 of the (C3) tiling (N): leaves 5415 .. 5699. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_019 :
    leavesOKU mkCtxU 12412 3 ((leavesU.drop 5415).take 285) 6458 2 = true := by
  native_decide

end TUCore.TUN
