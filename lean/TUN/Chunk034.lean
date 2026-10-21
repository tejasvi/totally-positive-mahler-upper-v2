import TUCore.Leaves

/-! Shard 34 of the (C3) tiling (N): leaves 9690 .. 9974. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_034 :
    leavesOKU mkCtxU 12019 2 ((leavesU.drop 9690).take 285) 12348 2 = true := by
  native_decide

end TUCore.TUN
