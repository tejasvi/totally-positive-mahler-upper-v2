import TUK.Leaf01000
import TUK.Leaf01001
import TUK.Leaf01002
import TUK.Leaf01003
import TUK.Leaf01004
import TUK.Leaf01005
import TUK.Leaf01006
import TUK.Leaf01007
import TUK.Leaf01008
import TUK.Leaf01009
import TUK.Leaf01010
import TUK.Leaf01011
import TUK.Leaf01012
import TUK.Leaf01013
import TUK.Leaf01014
import TUK.Leaf01015
import TUK.Leaf01016
import TUK.Leaf01017
import TUK.Leaf01018
import TUK.Leaf01019
import TUK.Leaf01020
import TUK.Leaf01021
import TUK.Leaf01022
import TUK.Leaf01023
import TUK.Leaf01024
import TUK.Leaf01025
import TUK.Leaf01026
import TUK.Leaf01027
import TUK.Leaf01028
import TUK.Leaf01029
import TUK.Leaf01030
import TUK.Leaf01031
import TUK.Leaf01032
import TUK.Leaf01033
import TUK.Leaf01034
import TUK.Leaf01035
import TUK.Leaf01036
import TUK.Leaf01037
import TUK.Leaf01038
import TUK.Leaf01039
import TUK.Leaf01040
import TUK.Leaf01041
import TUK.Leaf01042
import TUK.Leaf01043
import TUK.Leaf01044
import TUK.Leaf01045
import TUK.Leaf01046
import TUK.Leaf01047
import TUK.Leaf01048
import TUK.Leaf01049
import TUK.Leaf01050
import TUK.Leaf01051
import TUK.Leaf01052
import TUK.Leaf01053
import TUK.Leaf01054
import TUK.Leaf01055
import TUK.Leaf01056
import TUK.Leaf01057
import TUK.Leaf01058
import TUK.Leaf01059
import TUK.Leaf01060
import TUK.Leaf01061
import TUK.Leaf01062
import TUK.Leaf01063
import TUK.Leaf01064
import TUK.Leaf01065
import TUK.Leaf01066
import TUK.Leaf01067
import TUK.Leaf01068
import TUK.Leaf01069
import TUK.Leaf01070
import TUK.Leaf01071
import TUK.Leaf01072
import TUK.Leaf01073
import TUK.Leaf01074
import TUK.Leaf01075
import TUK.Leaf01076
import TUK.Leaf01077
import TUK.Leaf01078
import TUK.Leaf01079
import TUK.Leaf01080
import TUK.Leaf01081
import TUK.Leaf01082
import TUK.Leaf01083
import TUK.Leaf01084
import TUK.Leaf01085
import TUK.Leaf01086
import TUK.Leaf01087
import TUK.Leaf01088
import TUK.Leaf01089
import TUK.Leaf01090
import TUK.Leaf01091
import TUK.Leaf01092
import TUK.Leaf01093
import TUK.Leaf01094
import TUK.Leaf01095
import TUK.Leaf01096
import TUK.Leaf01097
import TUK.Leaf01098
import TUK.Leaf01099

/-! Leaves 1000 .. 1099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_10 : ∀ j < 100, 100 * 10 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 10 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_01000
  | 1, _, _ => exact leaf_01001
  | 2, _, _ => exact leaf_01002
  | 3, _, _ => exact leaf_01003
  | 4, _, _ => exact leaf_01004
  | 5, _, _ => exact leaf_01005
  | 6, _, _ => exact leaf_01006
  | 7, _, _ => exact leaf_01007
  | 8, _, _ => exact leaf_01008
  | 9, _, _ => exact leaf_01009
  | 10, _, _ => exact leaf_01010
  | 11, _, _ => exact leaf_01011
  | 12, _, _ => exact leaf_01012
  | 13, _, _ => exact leaf_01013
  | 14, _, _ => exact leaf_01014
  | 15, _, _ => exact leaf_01015
  | 16, _, _ => exact leaf_01016
  | 17, _, _ => exact leaf_01017
  | 18, _, _ => exact leaf_01018
  | 19, _, _ => exact leaf_01019
  | 20, _, _ => exact leaf_01020
  | 21, _, _ => exact leaf_01021
  | 22, _, _ => exact leaf_01022
  | 23, _, _ => exact leaf_01023
  | 24, _, _ => exact leaf_01024
  | 25, _, _ => exact leaf_01025
  | 26, _, _ => exact leaf_01026
  | 27, _, _ => exact leaf_01027
  | 28, _, _ => exact leaf_01028
  | 29, _, _ => exact leaf_01029
  | 30, _, _ => exact leaf_01030
  | 31, _, _ => exact leaf_01031
  | 32, _, _ => exact leaf_01032
  | 33, _, _ => exact leaf_01033
  | 34, _, _ => exact leaf_01034
  | 35, _, _ => exact leaf_01035
  | 36, _, _ => exact leaf_01036
  | 37, _, _ => exact leaf_01037
  | 38, _, _ => exact leaf_01038
  | 39, _, _ => exact leaf_01039
  | 40, _, _ => exact leaf_01040
  | 41, _, _ => exact leaf_01041
  | 42, _, _ => exact leaf_01042
  | 43, _, _ => exact leaf_01043
  | 44, _, _ => exact leaf_01044
  | 45, _, _ => exact leaf_01045
  | 46, _, _ => exact leaf_01046
  | 47, _, _ => exact leaf_01047
  | 48, _, _ => exact leaf_01048
  | 49, _, _ => exact leaf_01049
  | 50, _, _ => exact leaf_01050
  | 51, _, _ => exact leaf_01051
  | 52, _, _ => exact leaf_01052
  | 53, _, _ => exact leaf_01053
  | 54, _, _ => exact leaf_01054
  | 55, _, _ => exact leaf_01055
  | 56, _, _ => exact leaf_01056
  | 57, _, _ => exact leaf_01057
  | 58, _, _ => exact leaf_01058
  | 59, _, _ => exact leaf_01059
  | 60, _, _ => exact leaf_01060
  | 61, _, _ => exact leaf_01061
  | 62, _, _ => exact leaf_01062
  | 63, _, _ => exact leaf_01063
  | 64, _, _ => exact leaf_01064
  | 65, _, _ => exact leaf_01065
  | 66, _, _ => exact leaf_01066
  | 67, _, _ => exact leaf_01067
  | 68, _, _ => exact leaf_01068
  | 69, _, _ => exact leaf_01069
  | 70, _, _ => exact leaf_01070
  | 71, _, _ => exact leaf_01071
  | 72, _, _ => exact leaf_01072
  | 73, _, _ => exact leaf_01073
  | 74, _, _ => exact leaf_01074
  | 75, _, _ => exact leaf_01075
  | 76, _, _ => exact leaf_01076
  | 77, _, _ => exact leaf_01077
  | 78, _, _ => exact leaf_01078
  | 79, _, _ => exact leaf_01079
  | 80, _, _ => exact leaf_01080
  | 81, _, _ => exact leaf_01081
  | 82, _, _ => exact leaf_01082
  | 83, _, _ => exact leaf_01083
  | 84, _, _ => exact leaf_01084
  | 85, _, _ => exact leaf_01085
  | 86, _, _ => exact leaf_01086
  | 87, _, _ => exact leaf_01087
  | 88, _, _ => exact leaf_01088
  | 89, _, _ => exact leaf_01089
  | 90, _, _ => exact leaf_01090
  | 91, _, _ => exact leaf_01091
  | 92, _, _ => exact leaf_01092
  | 93, _, _ => exact leaf_01093
  | 94, _, _ => exact leaf_01094
  | 95, _, _ => exact leaf_01095
  | 96, _, _ => exact leaf_01096
  | 97, _, _ => exact leaf_01097
  | 98, _, _ => exact leaf_01098
  | 99, _, _ => exact leaf_01099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
