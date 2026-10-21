import TUK.Leaf11000
import TUK.Leaf11001
import TUK.Leaf11002
import TUK.Leaf11003
import TUK.Leaf11004
import TUK.Leaf11005
import TUK.Leaf11006
import TUK.Leaf11007
import TUK.Leaf11008
import TUK.Leaf11009
import TUK.Leaf11010
import TUK.Leaf11011
import TUK.Leaf11012
import TUK.Leaf11013
import TUK.Leaf11014
import TUK.Leaf11015
import TUK.Leaf11016
import TUK.Leaf11017
import TUK.Leaf11018
import TUK.Leaf11019
import TUK.Leaf11020
import TUK.Leaf11021
import TUK.Leaf11022
import TUK.Leaf11023
import TUK.Leaf11024
import TUK.Leaf11025
import TUK.Leaf11026
import TUK.Leaf11027
import TUK.Leaf11028
import TUK.Leaf11029
import TUK.Leaf11030
import TUK.Leaf11031
import TUK.Leaf11032
import TUK.Leaf11033
import TUK.Leaf11034
import TUK.Leaf11035
import TUK.Leaf11036
import TUK.Leaf11037
import TUK.Leaf11038
import TUK.Leaf11039
import TUK.Leaf11040
import TUK.Leaf11041
import TUK.Leaf11042
import TUK.Leaf11043
import TUK.Leaf11044
import TUK.Leaf11045
import TUK.Leaf11046
import TUK.Leaf11047
import TUK.Leaf11048
import TUK.Leaf11049
import TUK.Leaf11050
import TUK.Leaf11051
import TUK.Leaf11052
import TUK.Leaf11053
import TUK.Leaf11054
import TUK.Leaf11055
import TUK.Leaf11056
import TUK.Leaf11057
import TUK.Leaf11058
import TUK.Leaf11059
import TUK.Leaf11060
import TUK.Leaf11061
import TUK.Leaf11062
import TUK.Leaf11063
import TUK.Leaf11064
import TUK.Leaf11065
import TUK.Leaf11066
import TUK.Leaf11067
import TUK.Leaf11068
import TUK.Leaf11069
import TUK.Leaf11070
import TUK.Leaf11071
import TUK.Leaf11072
import TUK.Leaf11073
import TUK.Leaf11074
import TUK.Leaf11075
import TUK.Leaf11076
import TUK.Leaf11077
import TUK.Leaf11078
import TUK.Leaf11079
import TUK.Leaf11080
import TUK.Leaf11081
import TUK.Leaf11082
import TUK.Leaf11083
import TUK.Leaf11084
import TUK.Leaf11085
import TUK.Leaf11086
import TUK.Leaf11087
import TUK.Leaf11088
import TUK.Leaf11089
import TUK.Leaf11090
import TUK.Leaf11091
import TUK.Leaf11092
import TUK.Leaf11093
import TUK.Leaf11094
import TUK.Leaf11095
import TUK.Leaf11096
import TUK.Leaf11097
import TUK.Leaf11098
import TUK.Leaf11099

/-! Leaves 11000 .. 11099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_110 : ∀ j < 100, 100 * 110 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 110 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_11000
  | 1, _, _ => exact leaf_11001
  | 2, _, _ => exact leaf_11002
  | 3, _, _ => exact leaf_11003
  | 4, _, _ => exact leaf_11004
  | 5, _, _ => exact leaf_11005
  | 6, _, _ => exact leaf_11006
  | 7, _, _ => exact leaf_11007
  | 8, _, _ => exact leaf_11008
  | 9, _, _ => exact leaf_11009
  | 10, _, _ => exact leaf_11010
  | 11, _, _ => exact leaf_11011
  | 12, _, _ => exact leaf_11012
  | 13, _, _ => exact leaf_11013
  | 14, _, _ => exact leaf_11014
  | 15, _, _ => exact leaf_11015
  | 16, _, _ => exact leaf_11016
  | 17, _, _ => exact leaf_11017
  | 18, _, _ => exact leaf_11018
  | 19, _, _ => exact leaf_11019
  | 20, _, _ => exact leaf_11020
  | 21, _, _ => exact leaf_11021
  | 22, _, _ => exact leaf_11022
  | 23, _, _ => exact leaf_11023
  | 24, _, _ => exact leaf_11024
  | 25, _, _ => exact leaf_11025
  | 26, _, _ => exact leaf_11026
  | 27, _, _ => exact leaf_11027
  | 28, _, _ => exact leaf_11028
  | 29, _, _ => exact leaf_11029
  | 30, _, _ => exact leaf_11030
  | 31, _, _ => exact leaf_11031
  | 32, _, _ => exact leaf_11032
  | 33, _, _ => exact leaf_11033
  | 34, _, _ => exact leaf_11034
  | 35, _, _ => exact leaf_11035
  | 36, _, _ => exact leaf_11036
  | 37, _, _ => exact leaf_11037
  | 38, _, _ => exact leaf_11038
  | 39, _, _ => exact leaf_11039
  | 40, _, _ => exact leaf_11040
  | 41, _, _ => exact leaf_11041
  | 42, _, _ => exact leaf_11042
  | 43, _, _ => exact leaf_11043
  | 44, _, _ => exact leaf_11044
  | 45, _, _ => exact leaf_11045
  | 46, _, _ => exact leaf_11046
  | 47, _, _ => exact leaf_11047
  | 48, _, _ => exact leaf_11048
  | 49, _, _ => exact leaf_11049
  | 50, _, _ => exact leaf_11050
  | 51, _, _ => exact leaf_11051
  | 52, _, _ => exact leaf_11052
  | 53, _, _ => exact leaf_11053
  | 54, _, _ => exact leaf_11054
  | 55, _, _ => exact leaf_11055
  | 56, _, _ => exact leaf_11056
  | 57, _, _ => exact leaf_11057
  | 58, _, _ => exact leaf_11058
  | 59, _, _ => exact leaf_11059
  | 60, _, _ => exact leaf_11060
  | 61, _, _ => exact leaf_11061
  | 62, _, _ => exact leaf_11062
  | 63, _, _ => exact leaf_11063
  | 64, _, _ => exact leaf_11064
  | 65, _, _ => exact leaf_11065
  | 66, _, _ => exact leaf_11066
  | 67, _, _ => exact leaf_11067
  | 68, _, _ => exact leaf_11068
  | 69, _, _ => exact leaf_11069
  | 70, _, _ => exact leaf_11070
  | 71, _, _ => exact leaf_11071
  | 72, _, _ => exact leaf_11072
  | 73, _, _ => exact leaf_11073
  | 74, _, _ => exact leaf_11074
  | 75, _, _ => exact leaf_11075
  | 76, _, _ => exact leaf_11076
  | 77, _, _ => exact leaf_11077
  | 78, _, _ => exact leaf_11078
  | 79, _, _ => exact leaf_11079
  | 80, _, _ => exact leaf_11080
  | 81, _, _ => exact leaf_11081
  | 82, _, _ => exact leaf_11082
  | 83, _, _ => exact leaf_11083
  | 84, _, _ => exact leaf_11084
  | 85, _, _ => exact leaf_11085
  | 86, _, _ => exact leaf_11086
  | 87, _, _ => exact leaf_11087
  | 88, _, _ => exact leaf_11088
  | 89, _, _ => exact leaf_11089
  | 90, _, _ => exact leaf_11090
  | 91, _, _ => exact leaf_11091
  | 92, _, _ => exact leaf_11092
  | 93, _, _ => exact leaf_11093
  | 94, _, _ => exact leaf_11094
  | 95, _, _ => exact leaf_11095
  | 96, _, _ => exact leaf_11096
  | 97, _, _ => exact leaf_11097
  | 98, _, _ => exact leaf_11098
  | 99, _, _ => exact leaf_11099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
