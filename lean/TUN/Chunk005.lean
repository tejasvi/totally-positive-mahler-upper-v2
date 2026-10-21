import TUCore.Leaves

/-! Shard 5 of the (C3) tiling (N): leaves 1425 .. 1709. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_005 :
    leavesOKU mkCtxU 445 0 ((leavesU.drop 1425).take 285) 2346 2 = true := by
  native_decide

end TUCore.TUN
