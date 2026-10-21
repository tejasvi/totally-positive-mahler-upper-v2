import TUCore.Leaves

/-! Shard 23 of the (C3) tiling (N): leaves 6555 .. 6839. -/

set_option maxRecDepth 200000
set_option maxHeartbeats 0

namespace TUCore.TUN

theorem chunk_023 :
    leavesOKU mkCtxU 2036 0 ((leavesU.drop 6555).take 285) 16865 3 = true := by
  native_decide

end TUCore.TUN
