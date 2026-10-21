import TUCore.Leaves

/-! Shard 11 of the (C3) tiling (N): leaves 3135 .. 3419. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_011 :
    leavesOKU mkCtxU 7158 3 ((leavesU.drop 3135).take 285) 956 0 = true := by
  native_decide

end TUCore.TUN
