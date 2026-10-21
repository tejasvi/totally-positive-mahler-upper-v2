import TUCore.Leaves

/-! Shard 24 of the (C3) tiling (N): leaves 6840 .. 7124. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_024 :
    leavesOKU mkCtxU 16865 3 ((leavesU.drop 6840).take 285) 8777 2 = true := by
  native_decide

end TUCore.TUN
