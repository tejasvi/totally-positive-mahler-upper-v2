import TUCore.Leaves

/-! Shard 39 of the (C3) tiling (N): leaves 11115 .. 11392. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_039 :
    leavesOKU mkCtxU 13827 2 ((leavesU.drop 11115).take 278) 3526 0 = true := by
  native_decide

end TUCore.TUN
