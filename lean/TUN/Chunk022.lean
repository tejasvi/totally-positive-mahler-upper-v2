import TUCore.Leaves

/-! Shard 22 of the (C3) tiling (N): leaves 6270 .. 6554. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_022 :
    leavesOKU mkCtxU 7760 2 ((leavesU.drop 6270).take 285) 2036 0 = true := by
  native_decide

end TUCore.TUN
