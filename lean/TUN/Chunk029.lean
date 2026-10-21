import TUCore.Leaves

/-! Shard 29 of the (C3) tiling (N): leaves 8265 .. 8549. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_029 :
    leavesOKU mkCtxU 10550 2 ((leavesU.drop 8265).take 285) 10835 2 = true := by
  native_decide

end TUCore.TUN
