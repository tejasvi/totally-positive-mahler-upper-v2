import TUCore.Leaves

/-! Shard 6 of the (C3) tiling (N): leaves 1710 .. 1994. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_006 :
    leavesOKU mkCtxU 2346 2 ((leavesU.drop 1710).take 285) 10457 4 = true := by
  native_decide

end TUCore.TUN
