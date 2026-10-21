import TUK.Leaf02000
import TUK.Leaf02001
import TUK.Leaf02002
import TUK.Leaf02003
import TUK.Leaf02004
import TUK.Leaf02005
import TUK.Leaf02006
import TUK.Leaf02007
import TUK.Leaf02008
import TUK.Leaf02009
import TUK.Leaf02010
import TUK.Leaf02011
import TUK.Leaf02012
import TUK.Leaf02013
import TUK.Leaf02014
import TUK.Leaf02015
import TUK.Leaf02016
import TUK.Leaf02017
import TUK.Leaf02018
import TUK.Leaf02019
import TUK.Leaf02020
import TUK.Leaf02021
import TUK.Leaf02022
import TUK.Leaf02023
import TUK.Leaf02024
import TUK.Leaf02025
import TUK.Leaf02026
import TUK.Leaf02027
import TUK.Leaf02028
import TUK.Leaf02029
import TUK.Leaf02030
import TUK.Leaf02031
import TUK.Leaf02032
import TUK.Leaf02033
import TUK.Leaf02034
import TUK.Leaf02035
import TUK.Leaf02036
import TUK.Leaf02037
import TUK.Leaf02038
import TUK.Leaf02039
import TUK.Leaf02040
import TUK.Leaf02041
import TUK.Leaf02042
import TUK.Leaf02043
import TUK.Leaf02044
import TUK.Leaf02045
import TUK.Leaf02046
import TUK.Leaf02047
import TUK.Leaf02048
import TUK.Leaf02049
import TUK.Leaf02050
import TUK.Leaf02051
import TUK.Leaf02052
import TUK.Leaf02053
import TUK.Leaf02054
import TUK.Leaf02055
import TUK.Leaf02056
import TUK.Leaf02057
import TUK.Leaf02058
import TUK.Leaf02059
import TUK.Leaf02060
import TUK.Leaf02061
import TUK.Leaf02062
import TUK.Leaf02063
import TUK.Leaf02064
import TUK.Leaf02065
import TUK.Leaf02066
import TUK.Leaf02067
import TUK.Leaf02068
import TUK.Leaf02069
import TUK.Leaf02070
import TUK.Leaf02071
import TUK.Leaf02072
import TUK.Leaf02073
import TUK.Leaf02074
import TUK.Leaf02075
import TUK.Leaf02076
import TUK.Leaf02077
import TUK.Leaf02078
import TUK.Leaf02079
import TUK.Leaf02080
import TUK.Leaf02081
import TUK.Leaf02082
import TUK.Leaf02083
import TUK.Leaf02084
import TUK.Leaf02085
import TUK.Leaf02086
import TUK.Leaf02087
import TUK.Leaf02088
import TUK.Leaf02089
import TUK.Leaf02090
import TUK.Leaf02091
import TUK.Leaf02092
import TUK.Leaf02093
import TUK.Leaf02094
import TUK.Leaf02095
import TUK.Leaf02096
import TUK.Leaf02097
import TUK.Leaf02098
import TUK.Leaf02099

/-! Leaves 2000 .. 2099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_20 : ∀ j < 100, 100 * 20 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 20 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_02000
  | 1, _, _ => exact leaf_02001
  | 2, _, _ => exact leaf_02002
  | 3, _, _ => exact leaf_02003
  | 4, _, _ => exact leaf_02004
  | 5, _, _ => exact leaf_02005
  | 6, _, _ => exact leaf_02006
  | 7, _, _ => exact leaf_02007
  | 8, _, _ => exact leaf_02008
  | 9, _, _ => exact leaf_02009
  | 10, _, _ => exact leaf_02010
  | 11, _, _ => exact leaf_02011
  | 12, _, _ => exact leaf_02012
  | 13, _, _ => exact leaf_02013
  | 14, _, _ => exact leaf_02014
  | 15, _, _ => exact leaf_02015
  | 16, _, _ => exact leaf_02016
  | 17, _, _ => exact leaf_02017
  | 18, _, _ => exact leaf_02018
  | 19, _, _ => exact leaf_02019
  | 20, _, _ => exact leaf_02020
  | 21, _, _ => exact leaf_02021
  | 22, _, _ => exact leaf_02022
  | 23, _, _ => exact leaf_02023
  | 24, _, _ => exact leaf_02024
  | 25, _, _ => exact leaf_02025
  | 26, _, _ => exact leaf_02026
  | 27, _, _ => exact leaf_02027
  | 28, _, _ => exact leaf_02028
  | 29, _, _ => exact leaf_02029
  | 30, _, _ => exact leaf_02030
  | 31, _, _ => exact leaf_02031
  | 32, _, _ => exact leaf_02032
  | 33, _, _ => exact leaf_02033
  | 34, _, _ => exact leaf_02034
  | 35, _, _ => exact leaf_02035
  | 36, _, _ => exact leaf_02036
  | 37, _, _ => exact leaf_02037
  | 38, _, _ => exact leaf_02038
  | 39, _, _ => exact leaf_02039
  | 40, _, _ => exact leaf_02040
  | 41, _, _ => exact leaf_02041
  | 42, _, _ => exact leaf_02042
  | 43, _, _ => exact leaf_02043
  | 44, _, _ => exact leaf_02044
  | 45, _, _ => exact leaf_02045
  | 46, _, _ => exact leaf_02046
  | 47, _, _ => exact leaf_02047
  | 48, _, _ => exact leaf_02048
  | 49, _, _ => exact leaf_02049
  | 50, _, _ => exact leaf_02050
  | 51, _, _ => exact leaf_02051
  | 52, _, _ => exact leaf_02052
  | 53, _, _ => exact leaf_02053
  | 54, _, _ => exact leaf_02054
  | 55, _, _ => exact leaf_02055
  | 56, _, _ => exact leaf_02056
  | 57, _, _ => exact leaf_02057
  | 58, _, _ => exact leaf_02058
  | 59, _, _ => exact leaf_02059
  | 60, _, _ => exact leaf_02060
  | 61, _, _ => exact leaf_02061
  | 62, _, _ => exact leaf_02062
  | 63, _, _ => exact leaf_02063
  | 64, _, _ => exact leaf_02064
  | 65, _, _ => exact leaf_02065
  | 66, _, _ => exact leaf_02066
  | 67, _, _ => exact leaf_02067
  | 68, _, _ => exact leaf_02068
  | 69, _, _ => exact leaf_02069
  | 70, _, _ => exact leaf_02070
  | 71, _, _ => exact leaf_02071
  | 72, _, _ => exact leaf_02072
  | 73, _, _ => exact leaf_02073
  | 74, _, _ => exact leaf_02074
  | 75, _, _ => exact leaf_02075
  | 76, _, _ => exact leaf_02076
  | 77, _, _ => exact leaf_02077
  | 78, _, _ => exact leaf_02078
  | 79, _, _ => exact leaf_02079
  | 80, _, _ => exact leaf_02080
  | 81, _, _ => exact leaf_02081
  | 82, _, _ => exact leaf_02082
  | 83, _, _ => exact leaf_02083
  | 84, _, _ => exact leaf_02084
  | 85, _, _ => exact leaf_02085
  | 86, _, _ => exact leaf_02086
  | 87, _, _ => exact leaf_02087
  | 88, _, _ => exact leaf_02088
  | 89, _, _ => exact leaf_02089
  | 90, _, _ => exact leaf_02090
  | 91, _, _ => exact leaf_02091
  | 92, _, _ => exact leaf_02092
  | 93, _, _ => exact leaf_02093
  | 94, _, _ => exact leaf_02094
  | 95, _, _ => exact leaf_02095
  | 96, _, _ => exact leaf_02096
  | 97, _, _ => exact leaf_02097
  | 98, _, _ => exact leaf_02098
  | 99, _, _ => exact leaf_02099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
