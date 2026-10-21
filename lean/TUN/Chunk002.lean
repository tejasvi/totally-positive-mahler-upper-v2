import TUCore.Leaves

/-! Shard 2 of the (C3) tiling (N): leaves 570 .. 854. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_002 :
    leavesOKU mkCtxU 155 0 ((leavesU.drop 570).take 285) 250927932864111709127 60 = true := by
  native_decide

end TUCore.TUN
