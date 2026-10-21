import TUCore.Leaves

/-! Shard 15 of the (C3) tiling (N): leaves 4275 .. 4559. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_015 :
    leavesOKU mkCtxU 1301 0 ((leavesU.drop 4275).take 285) 10906 3 = true := by
  native_decide

end TUCore.TUN
