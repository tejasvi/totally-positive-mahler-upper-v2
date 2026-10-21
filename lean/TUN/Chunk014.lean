import TUCore.Leaves

/-! Shard 14 of the (C3) tiling (N): leaves 3990 .. 4274. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_014 :
    leavesOKU mkCtxU 9945 3 ((leavesU.drop 3990).take 285) 1301 0 = true := by
  native_decide

end TUCore.TUN
