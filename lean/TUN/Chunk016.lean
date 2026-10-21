import TUCore.Leaves

/-! Shard 16 of the (C3) tiling (N): leaves 4560 .. 4844. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_016 :
    leavesOKU mkCtxU 10906 3 ((leavesU.drop 4560).take 285) 5837 2 = true := by
  native_decide

end TUCore.TUN
