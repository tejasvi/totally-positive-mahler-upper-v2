import TUK.Leaf05000
import TUK.Leaf05001
import TUK.Leaf05002
import TUK.Leaf05003
import TUK.Leaf05004
import TUK.Leaf05005
import TUK.Leaf05006
import TUK.Leaf05007
import TUK.Leaf05008
import TUK.Leaf05009
import TUK.Leaf05010
import TUK.Leaf05011
import TUK.Leaf05012
import TUK.Leaf05013
import TUK.Leaf05014
import TUK.Leaf05015
import TUK.Leaf05016
import TUK.Leaf05017
import TUK.Leaf05018
import TUK.Leaf05019
import TUK.Leaf05020
import TUK.Leaf05021
import TUK.Leaf05022
import TUK.Leaf05023
import TUK.Leaf05024
import TUK.Leaf05025
import TUK.Leaf05026
import TUK.Leaf05027
import TUK.Leaf05028
import TUK.Leaf05029
import TUK.Leaf05030
import TUK.Leaf05031
import TUK.Leaf05032
import TUK.Leaf05033
import TUK.Leaf05034
import TUK.Leaf05035
import TUK.Leaf05036
import TUK.Leaf05037
import TUK.Leaf05038
import TUK.Leaf05039
import TUK.Leaf05040
import TUK.Leaf05041
import TUK.Leaf05042
import TUK.Leaf05043
import TUK.Leaf05044
import TUK.Leaf05045
import TUK.Leaf05046
import TUK.Leaf05047
import TUK.Leaf05048
import TUK.Leaf05049
import TUK.Leaf05050
import TUK.Leaf05051
import TUK.Leaf05052
import TUK.Leaf05053
import TUK.Leaf05054
import TUK.Leaf05055
import TUK.Leaf05056
import TUK.Leaf05057
import TUK.Leaf05058
import TUK.Leaf05059
import TUK.Leaf05060
import TUK.Leaf05061
import TUK.Leaf05062
import TUK.Leaf05063
import TUK.Leaf05064
import TUK.Leaf05065
import TUK.Leaf05066
import TUK.Leaf05067
import TUK.Leaf05068
import TUK.Leaf05069
import TUK.Leaf05070
import TUK.Leaf05071
import TUK.Leaf05072
import TUK.Leaf05073
import TUK.Leaf05074
import TUK.Leaf05075
import TUK.Leaf05076
import TUK.Leaf05077
import TUK.Leaf05078
import TUK.Leaf05079
import TUK.Leaf05080
import TUK.Leaf05081
import TUK.Leaf05082
import TUK.Leaf05083
import TUK.Leaf05084
import TUK.Leaf05085
import TUK.Leaf05086
import TUK.Leaf05087
import TUK.Leaf05088
import TUK.Leaf05089
import TUK.Leaf05090
import TUK.Leaf05091
import TUK.Leaf05092
import TUK.Leaf05093
import TUK.Leaf05094
import TUK.Leaf05095
import TUK.Leaf05096
import TUK.Leaf05097
import TUK.Leaf05098
import TUK.Leaf05099

/-! Leaves 5000 .. 5099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_50 : ∀ j < 100, 100 * 50 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 50 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_05000
  | 1, _, _ => exact leaf_05001
  | 2, _, _ => exact leaf_05002
  | 3, _, _ => exact leaf_05003
  | 4, _, _ => exact leaf_05004
  | 5, _, _ => exact leaf_05005
  | 6, _, _ => exact leaf_05006
  | 7, _, _ => exact leaf_05007
  | 8, _, _ => exact leaf_05008
  | 9, _, _ => exact leaf_05009
  | 10, _, _ => exact leaf_05010
  | 11, _, _ => exact leaf_05011
  | 12, _, _ => exact leaf_05012
  | 13, _, _ => exact leaf_05013
  | 14, _, _ => exact leaf_05014
  | 15, _, _ => exact leaf_05015
  | 16, _, _ => exact leaf_05016
  | 17, _, _ => exact leaf_05017
  | 18, _, _ => exact leaf_05018
  | 19, _, _ => exact leaf_05019
  | 20, _, _ => exact leaf_05020
  | 21, _, _ => exact leaf_05021
  | 22, _, _ => exact leaf_05022
  | 23, _, _ => exact leaf_05023
  | 24, _, _ => exact leaf_05024
  | 25, _, _ => exact leaf_05025
  | 26, _, _ => exact leaf_05026
  | 27, _, _ => exact leaf_05027
  | 28, _, _ => exact leaf_05028
  | 29, _, _ => exact leaf_05029
  | 30, _, _ => exact leaf_05030
  | 31, _, _ => exact leaf_05031
  | 32, _, _ => exact leaf_05032
  | 33, _, _ => exact leaf_05033
  | 34, _, _ => exact leaf_05034
  | 35, _, _ => exact leaf_05035
  | 36, _, _ => exact leaf_05036
  | 37, _, _ => exact leaf_05037
  | 38, _, _ => exact leaf_05038
  | 39, _, _ => exact leaf_05039
  | 40, _, _ => exact leaf_05040
  | 41, _, _ => exact leaf_05041
  | 42, _, _ => exact leaf_05042
  | 43, _, _ => exact leaf_05043
  | 44, _, _ => exact leaf_05044
  | 45, _, _ => exact leaf_05045
  | 46, _, _ => exact leaf_05046
  | 47, _, _ => exact leaf_05047
  | 48, _, _ => exact leaf_05048
  | 49, _, _ => exact leaf_05049
  | 50, _, _ => exact leaf_05050
  | 51, _, _ => exact leaf_05051
  | 52, _, _ => exact leaf_05052
  | 53, _, _ => exact leaf_05053
  | 54, _, _ => exact leaf_05054
  | 55, _, _ => exact leaf_05055
  | 56, _, _ => exact leaf_05056
  | 57, _, _ => exact leaf_05057
  | 58, _, _ => exact leaf_05058
  | 59, _, _ => exact leaf_05059
  | 60, _, _ => exact leaf_05060
  | 61, _, _ => exact leaf_05061
  | 62, _, _ => exact leaf_05062
  | 63, _, _ => exact leaf_05063
  | 64, _, _ => exact leaf_05064
  | 65, _, _ => exact leaf_05065
  | 66, _, _ => exact leaf_05066
  | 67, _, _ => exact leaf_05067
  | 68, _, _ => exact leaf_05068
  | 69, _, _ => exact leaf_05069
  | 70, _, _ => exact leaf_05070
  | 71, _, _ => exact leaf_05071
  | 72, _, _ => exact leaf_05072
  | 73, _, _ => exact leaf_05073
  | 74, _, _ => exact leaf_05074
  | 75, _, _ => exact leaf_05075
  | 76, _, _ => exact leaf_05076
  | 77, _, _ => exact leaf_05077
  | 78, _, _ => exact leaf_05078
  | 79, _, _ => exact leaf_05079
  | 80, _, _ => exact leaf_05080
  | 81, _, _ => exact leaf_05081
  | 82, _, _ => exact leaf_05082
  | 83, _, _ => exact leaf_05083
  | 84, _, _ => exact leaf_05084
  | 85, _, _ => exact leaf_05085
  | 86, _, _ => exact leaf_05086
  | 87, _, _ => exact leaf_05087
  | 88, _, _ => exact leaf_05088
  | 89, _, _ => exact leaf_05089
  | 90, _, _ => exact leaf_05090
  | 91, _, _ => exact leaf_05091
  | 92, _, _ => exact leaf_05092
  | 93, _, _ => exact leaf_05093
  | 94, _, _ => exact leaf_05094
  | 95, _, _ => exact leaf_05095
  | 96, _, _ => exact leaf_05096
  | 97, _, _ => exact leaf_05097
  | 98, _, _ => exact leaf_05098
  | 99, _, _ => exact leaf_05099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
