import TUK.Leaf06000
import TUK.Leaf06001
import TUK.Leaf06002
import TUK.Leaf06003
import TUK.Leaf06004
import TUK.Leaf06005
import TUK.Leaf06006
import TUK.Leaf06007
import TUK.Leaf06008
import TUK.Leaf06009
import TUK.Leaf06010
import TUK.Leaf06011
import TUK.Leaf06012
import TUK.Leaf06013
import TUK.Leaf06014
import TUK.Leaf06015
import TUK.Leaf06016
import TUK.Leaf06017
import TUK.Leaf06018
import TUK.Leaf06019
import TUK.Leaf06020
import TUK.Leaf06021
import TUK.Leaf06022
import TUK.Leaf06023
import TUK.Leaf06024
import TUK.Leaf06025
import TUK.Leaf06026
import TUK.Leaf06027
import TUK.Leaf06028
import TUK.Leaf06029
import TUK.Leaf06030
import TUK.Leaf06031
import TUK.Leaf06032
import TUK.Leaf06033
import TUK.Leaf06034
import TUK.Leaf06035
import TUK.Leaf06036
import TUK.Leaf06037
import TUK.Leaf06038
import TUK.Leaf06039
import TUK.Leaf06040
import TUK.Leaf06041
import TUK.Leaf06042
import TUK.Leaf06043
import TUK.Leaf06044
import TUK.Leaf06045
import TUK.Leaf06046
import TUK.Leaf06047
import TUK.Leaf06048
import TUK.Leaf06049
import TUK.Leaf06050
import TUK.Leaf06051
import TUK.Leaf06052
import TUK.Leaf06053
import TUK.Leaf06054
import TUK.Leaf06055
import TUK.Leaf06056
import TUK.Leaf06057
import TUK.Leaf06058
import TUK.Leaf06059
import TUK.Leaf06060
import TUK.Leaf06061
import TUK.Leaf06062
import TUK.Leaf06063
import TUK.Leaf06064
import TUK.Leaf06065
import TUK.Leaf06066
import TUK.Leaf06067
import TUK.Leaf06068
import TUK.Leaf06069
import TUK.Leaf06070
import TUK.Leaf06071
import TUK.Leaf06072
import TUK.Leaf06073
import TUK.Leaf06074
import TUK.Leaf06075
import TUK.Leaf06076
import TUK.Leaf06077
import TUK.Leaf06078
import TUK.Leaf06079
import TUK.Leaf06080
import TUK.Leaf06081
import TUK.Leaf06082
import TUK.Leaf06083
import TUK.Leaf06084
import TUK.Leaf06085
import TUK.Leaf06086
import TUK.Leaf06087
import TUK.Leaf06088
import TUK.Leaf06089
import TUK.Leaf06090
import TUK.Leaf06091
import TUK.Leaf06092
import TUK.Leaf06093
import TUK.Leaf06094
import TUK.Leaf06095
import TUK.Leaf06096
import TUK.Leaf06097
import TUK.Leaf06098
import TUK.Leaf06099

/-! Leaves 6000 .. 6099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_60 : ∀ j < 100, 100 * 60 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 60 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_06000
  | 1, _, _ => exact leaf_06001
  | 2, _, _ => exact leaf_06002
  | 3, _, _ => exact leaf_06003
  | 4, _, _ => exact leaf_06004
  | 5, _, _ => exact leaf_06005
  | 6, _, _ => exact leaf_06006
  | 7, _, _ => exact leaf_06007
  | 8, _, _ => exact leaf_06008
  | 9, _, _ => exact leaf_06009
  | 10, _, _ => exact leaf_06010
  | 11, _, _ => exact leaf_06011
  | 12, _, _ => exact leaf_06012
  | 13, _, _ => exact leaf_06013
  | 14, _, _ => exact leaf_06014
  | 15, _, _ => exact leaf_06015
  | 16, _, _ => exact leaf_06016
  | 17, _, _ => exact leaf_06017
  | 18, _, _ => exact leaf_06018
  | 19, _, _ => exact leaf_06019
  | 20, _, _ => exact leaf_06020
  | 21, _, _ => exact leaf_06021
  | 22, _, _ => exact leaf_06022
  | 23, _, _ => exact leaf_06023
  | 24, _, _ => exact leaf_06024
  | 25, _, _ => exact leaf_06025
  | 26, _, _ => exact leaf_06026
  | 27, _, _ => exact leaf_06027
  | 28, _, _ => exact leaf_06028
  | 29, _, _ => exact leaf_06029
  | 30, _, _ => exact leaf_06030
  | 31, _, _ => exact leaf_06031
  | 32, _, _ => exact leaf_06032
  | 33, _, _ => exact leaf_06033
  | 34, _, _ => exact leaf_06034
  | 35, _, _ => exact leaf_06035
  | 36, _, _ => exact leaf_06036
  | 37, _, _ => exact leaf_06037
  | 38, _, _ => exact leaf_06038
  | 39, _, _ => exact leaf_06039
  | 40, _, _ => exact leaf_06040
  | 41, _, _ => exact leaf_06041
  | 42, _, _ => exact leaf_06042
  | 43, _, _ => exact leaf_06043
  | 44, _, _ => exact leaf_06044
  | 45, _, _ => exact leaf_06045
  | 46, _, _ => exact leaf_06046
  | 47, _, _ => exact leaf_06047
  | 48, _, _ => exact leaf_06048
  | 49, _, _ => exact leaf_06049
  | 50, _, _ => exact leaf_06050
  | 51, _, _ => exact leaf_06051
  | 52, _, _ => exact leaf_06052
  | 53, _, _ => exact leaf_06053
  | 54, _, _ => exact leaf_06054
  | 55, _, _ => exact leaf_06055
  | 56, _, _ => exact leaf_06056
  | 57, _, _ => exact leaf_06057
  | 58, _, _ => exact leaf_06058
  | 59, _, _ => exact leaf_06059
  | 60, _, _ => exact leaf_06060
  | 61, _, _ => exact leaf_06061
  | 62, _, _ => exact leaf_06062
  | 63, _, _ => exact leaf_06063
  | 64, _, _ => exact leaf_06064
  | 65, _, _ => exact leaf_06065
  | 66, _, _ => exact leaf_06066
  | 67, _, _ => exact leaf_06067
  | 68, _, _ => exact leaf_06068
  | 69, _, _ => exact leaf_06069
  | 70, _, _ => exact leaf_06070
  | 71, _, _ => exact leaf_06071
  | 72, _, _ => exact leaf_06072
  | 73, _, _ => exact leaf_06073
  | 74, _, _ => exact leaf_06074
  | 75, _, _ => exact leaf_06075
  | 76, _, _ => exact leaf_06076
  | 77, _, _ => exact leaf_06077
  | 78, _, _ => exact leaf_06078
  | 79, _, _ => exact leaf_06079
  | 80, _, _ => exact leaf_06080
  | 81, _, _ => exact leaf_06081
  | 82, _, _ => exact leaf_06082
  | 83, _, _ => exact leaf_06083
  | 84, _, _ => exact leaf_06084
  | 85, _, _ => exact leaf_06085
  | 86, _, _ => exact leaf_06086
  | 87, _, _ => exact leaf_06087
  | 88, _, _ => exact leaf_06088
  | 89, _, _ => exact leaf_06089
  | 90, _, _ => exact leaf_06090
  | 91, _, _ => exact leaf_06091
  | 92, _, _ => exact leaf_06092
  | 93, _, _ => exact leaf_06093
  | 94, _, _ => exact leaf_06094
  | 95, _, _ => exact leaf_06095
  | 96, _, _ => exact leaf_06096
  | 97, _, _ => exact leaf_06097
  | 98, _, _ => exact leaf_06098
  | 99, _, _ => exact leaf_06099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
