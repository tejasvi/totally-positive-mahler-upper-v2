import TUCore.Leaves

/-! Shard 3 of the (C3) tiling (N): leaves 855 .. 1139. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_003 :
    leavesOKU mkCtxU 250927932864111709127 60 ((leavesU.drop 855).take 285) 2161 3 = true := by
  native_decide

end TUCore.TUN
