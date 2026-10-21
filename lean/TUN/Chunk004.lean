import TUCore.Leaves

/-! Shard 4 of the (C3) tiling (N): leaves 1140 .. 1424. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_004 :
    leavesOKU mkCtxU 2161 3 ((leavesU.drop 1140).take 285) 445 0 = true := by
  native_decide

end TUCore.TUN
