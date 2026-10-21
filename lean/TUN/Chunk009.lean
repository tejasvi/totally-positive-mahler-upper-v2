import TUCore.Leaves

/-! Shard 9 of the (C3) tiling (N): leaves 2565 .. 2849. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_009 :
    leavesOKU mkCtxU 12425 4 ((leavesU.drop 2565).take 285) 6743 3 = true := by
  native_decide

end TUCore.TUN
