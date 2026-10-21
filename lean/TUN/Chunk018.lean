import TUCore.Leaves

/-! Shard 18 of the (C3) tiling (N): leaves 5130 .. 5414. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_018 :
    leavesOKU mkCtxU 11990 3 ((leavesU.drop 5130).take 285) 12412 3 = true := by
  native_decide

end TUCore.TUN
