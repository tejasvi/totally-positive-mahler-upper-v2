import TUCore.Leaves

/-! Shard 33 of the (C3) tiling (N): leaves 9405 .. 9689. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_033 :
    leavesOKU mkCtxU 11802 2 ((leavesU.drop 9405).take 285) 12019 2 = true := by
  native_decide

end TUCore.TUN
