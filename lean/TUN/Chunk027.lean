import TUCore.Leaves

/-! Shard 27 of the (C3) tiling (N): leaves 7695 .. 7979. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_027 :
    leavesOKU mkCtxU 9416 2 ((leavesU.drop 7695).take 285) 2872958848637424826506 60 = true := by
  native_decide

end TUCore.TUN
