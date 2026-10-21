import TUCore.Leaves

/-! Shard 12 of the (C3) tiling (N): leaves 3420 .. 3704. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_012 :
    leavesOKU mkCtxU 956 0 ((leavesU.drop 3420).take 285) 9619 3 = true := by
  native_decide

end TUCore.TUN
