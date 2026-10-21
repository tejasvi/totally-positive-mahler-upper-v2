import TUCore.Leaves

/-! Shard 21 of the (C3) tiling (N): leaves 5985 .. 6269. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_021 :
    leavesOKU mkCtxU 1811 0 ((leavesU.drop 5985).take 285) 7760 2 = true := by
  native_decide

end TUCore.TUN
