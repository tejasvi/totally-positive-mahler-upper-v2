import TUCore.Leaves

/-! Shard 10 of the (C3) tiling (N): leaves 2850 .. 3134. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_010 :
    leavesOKU mkCtxU 6743 3 ((leavesU.drop 2850).take 285) 7158 3 = true := by
  native_decide

end TUCore.TUN
