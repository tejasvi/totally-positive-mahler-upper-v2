import TUCore.Leaves

/-! Shard 13 of the (C3) tiling (N): leaves 3705 .. 3989. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_013 :
    leavesOKU mkCtxU 9619 3 ((leavesU.drop 3705).take 285) 9945 3 = true := by
  native_decide

end TUCore.TUN
