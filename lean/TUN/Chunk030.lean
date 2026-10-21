import TUCore.Leaves

/-! Shard 30 of the (C3) tiling (N): leaves 8550 .. 8834. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_030 :
    leavesOKU mkCtxU 10835 2 ((leavesU.drop 8550).take 285) 11233 2 = true := by
  native_decide

end TUCore.TUN
