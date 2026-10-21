import TUCore.Leaves

/-! Shard 35 of the (C3) tiling (N): leaves 9975 .. 10259. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_035 :
    leavesOKU mkCtxU 12348 2 ((leavesU.drop 9975).take 285) 12633 2 = true := by
  native_decide

end TUCore.TUN
