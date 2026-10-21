import TUK.Leaf03000
import TUK.Leaf03001
import TUK.Leaf03002
import TUK.Leaf03003
import TUK.Leaf03004
import TUK.Leaf03005
import TUK.Leaf03006
import TUK.Leaf03007
import TUK.Leaf03008
import TUK.Leaf03009
import TUK.Leaf03010
import TUK.Leaf03011
import TUK.Leaf03012
import TUK.Leaf03013
import TUK.Leaf03014
import TUK.Leaf03015
import TUK.Leaf03016
import TUK.Leaf03017
import TUK.Leaf03018
import TUK.Leaf03019
import TUK.Leaf03020
import TUK.Leaf03021
import TUK.Leaf03022
import TUK.Leaf03023
import TUK.Leaf03024
import TUK.Leaf03025
import TUK.Leaf03026
import TUK.Leaf03027
import TUK.Leaf03028
import TUK.Leaf03029
import TUK.Leaf03030
import TUK.Leaf03031
import TUK.Leaf03032
import TUK.Leaf03033
import TUK.Leaf03034
import TUK.Leaf03035
import TUK.Leaf03036
import TUK.Leaf03037
import TUK.Leaf03038
import TUK.Leaf03039
import TUK.Leaf03040
import TUK.Leaf03041
import TUK.Leaf03042
import TUK.Leaf03043
import TUK.Leaf03044
import TUK.Leaf03045
import TUK.Leaf03046
import TUK.Leaf03047
import TUK.Leaf03048
import TUK.Leaf03049
import TUK.Leaf03050
import TUK.Leaf03051
import TUK.Leaf03052
import TUK.Leaf03053
import TUK.Leaf03054
import TUK.Leaf03055
import TUK.Leaf03056
import TUK.Leaf03057
import TUK.Leaf03058
import TUK.Leaf03059
import TUK.Leaf03060
import TUK.Leaf03061
import TUK.Leaf03062
import TUK.Leaf03063
import TUK.Leaf03064
import TUK.Leaf03065
import TUK.Leaf03066
import TUK.Leaf03067
import TUK.Leaf03068
import TUK.Leaf03069
import TUK.Leaf03070
import TUK.Leaf03071
import TUK.Leaf03072
import TUK.Leaf03073
import TUK.Leaf03074
import TUK.Leaf03075
import TUK.Leaf03076
import TUK.Leaf03077
import TUK.Leaf03078
import TUK.Leaf03079
import TUK.Leaf03080
import TUK.Leaf03081
import TUK.Leaf03082
import TUK.Leaf03083
import TUK.Leaf03084
import TUK.Leaf03085
import TUK.Leaf03086
import TUK.Leaf03087
import TUK.Leaf03088
import TUK.Leaf03089
import TUK.Leaf03090
import TUK.Leaf03091
import TUK.Leaf03092
import TUK.Leaf03093
import TUK.Leaf03094
import TUK.Leaf03095
import TUK.Leaf03096
import TUK.Leaf03097
import TUK.Leaf03098
import TUK.Leaf03099

/-! Leaves 3000 .. 3099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_30 : ∀ j < 100, 100 * 30 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 30 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_03000
  | 1, _, _ => exact leaf_03001
  | 2, _, _ => exact leaf_03002
  | 3, _, _ => exact leaf_03003
  | 4, _, _ => exact leaf_03004
  | 5, _, _ => exact leaf_03005
  | 6, _, _ => exact leaf_03006
  | 7, _, _ => exact leaf_03007
  | 8, _, _ => exact leaf_03008
  | 9, _, _ => exact leaf_03009
  | 10, _, _ => exact leaf_03010
  | 11, _, _ => exact leaf_03011
  | 12, _, _ => exact leaf_03012
  | 13, _, _ => exact leaf_03013
  | 14, _, _ => exact leaf_03014
  | 15, _, _ => exact leaf_03015
  | 16, _, _ => exact leaf_03016
  | 17, _, _ => exact leaf_03017
  | 18, _, _ => exact leaf_03018
  | 19, _, _ => exact leaf_03019
  | 20, _, _ => exact leaf_03020
  | 21, _, _ => exact leaf_03021
  | 22, _, _ => exact leaf_03022
  | 23, _, _ => exact leaf_03023
  | 24, _, _ => exact leaf_03024
  | 25, _, _ => exact leaf_03025
  | 26, _, _ => exact leaf_03026
  | 27, _, _ => exact leaf_03027
  | 28, _, _ => exact leaf_03028
  | 29, _, _ => exact leaf_03029
  | 30, _, _ => exact leaf_03030
  | 31, _, _ => exact leaf_03031
  | 32, _, _ => exact leaf_03032
  | 33, _, _ => exact leaf_03033
  | 34, _, _ => exact leaf_03034
  | 35, _, _ => exact leaf_03035
  | 36, _, _ => exact leaf_03036
  | 37, _, _ => exact leaf_03037
  | 38, _, _ => exact leaf_03038
  | 39, _, _ => exact leaf_03039
  | 40, _, _ => exact leaf_03040
  | 41, _, _ => exact leaf_03041
  | 42, _, _ => exact leaf_03042
  | 43, _, _ => exact leaf_03043
  | 44, _, _ => exact leaf_03044
  | 45, _, _ => exact leaf_03045
  | 46, _, _ => exact leaf_03046
  | 47, _, _ => exact leaf_03047
  | 48, _, _ => exact leaf_03048
  | 49, _, _ => exact leaf_03049
  | 50, _, _ => exact leaf_03050
  | 51, _, _ => exact leaf_03051
  | 52, _, _ => exact leaf_03052
  | 53, _, _ => exact leaf_03053
  | 54, _, _ => exact leaf_03054
  | 55, _, _ => exact leaf_03055
  | 56, _, _ => exact leaf_03056
  | 57, _, _ => exact leaf_03057
  | 58, _, _ => exact leaf_03058
  | 59, _, _ => exact leaf_03059
  | 60, _, _ => exact leaf_03060
  | 61, _, _ => exact leaf_03061
  | 62, _, _ => exact leaf_03062
  | 63, _, _ => exact leaf_03063
  | 64, _, _ => exact leaf_03064
  | 65, _, _ => exact leaf_03065
  | 66, _, _ => exact leaf_03066
  | 67, _, _ => exact leaf_03067
  | 68, _, _ => exact leaf_03068
  | 69, _, _ => exact leaf_03069
  | 70, _, _ => exact leaf_03070
  | 71, _, _ => exact leaf_03071
  | 72, _, _ => exact leaf_03072
  | 73, _, _ => exact leaf_03073
  | 74, _, _ => exact leaf_03074
  | 75, _, _ => exact leaf_03075
  | 76, _, _ => exact leaf_03076
  | 77, _, _ => exact leaf_03077
  | 78, _, _ => exact leaf_03078
  | 79, _, _ => exact leaf_03079
  | 80, _, _ => exact leaf_03080
  | 81, _, _ => exact leaf_03081
  | 82, _, _ => exact leaf_03082
  | 83, _, _ => exact leaf_03083
  | 84, _, _ => exact leaf_03084
  | 85, _, _ => exact leaf_03085
  | 86, _, _ => exact leaf_03086
  | 87, _, _ => exact leaf_03087
  | 88, _, _ => exact leaf_03088
  | 89, _, _ => exact leaf_03089
  | 90, _, _ => exact leaf_03090
  | 91, _, _ => exact leaf_03091
  | 92, _, _ => exact leaf_03092
  | 93, _, _ => exact leaf_03093
  | 94, _, _ => exact leaf_03094
  | 95, _, _ => exact leaf_03095
  | 96, _, _ => exact leaf_03096
  | 97, _, _ => exact leaf_03097
  | 98, _, _ => exact leaf_03098
  | 99, _, _ => exact leaf_03099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
