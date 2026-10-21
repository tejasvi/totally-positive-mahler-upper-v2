import TUCore.Leaves

/-! Shard 17 of the (C3) tiling (N): leaves 4845 .. 5129. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_017 :
    leavesOKU mkCtxU 5837 2 ((leavesU.drop 4845).take 285) 11990 3 = true := by
  native_decide

end TUCore.TUN
