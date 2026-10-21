import TUCore.Leaves

/-! Shard 28 of the (C3) tiling (N): leaves 7980 .. 8264. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_028 :
    leavesOKU mkCtxU 2872958848637424826506 60 ((leavesU.drop 7980).take 285) 10550 2 = true := by
  native_decide

end TUCore.TUN
