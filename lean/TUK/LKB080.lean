import TUK.Leaf08000
import TUK.Leaf08001
import TUK.Leaf08002
import TUK.Leaf08003
import TUK.Leaf08004
import TUK.Leaf08005
import TUK.Leaf08006
import TUK.Leaf08007
import TUK.Leaf08008
import TUK.Leaf08009
import TUK.Leaf08010
import TUK.Leaf08011
import TUK.Leaf08012
import TUK.Leaf08013
import TUK.Leaf08014
import TUK.Leaf08015
import TUK.Leaf08016
import TUK.Leaf08017
import TUK.Leaf08018
import TUK.Leaf08019
import TUK.Leaf08020
import TUK.Leaf08021
import TUK.Leaf08022
import TUK.Leaf08023
import TUK.Leaf08024
import TUK.Leaf08025
import TUK.Leaf08026
import TUK.Leaf08027
import TUK.Leaf08028
import TUK.Leaf08029
import TUK.Leaf08030
import TUK.Leaf08031
import TUK.Leaf08032
import TUK.Leaf08033
import TUK.Leaf08034
import TUK.Leaf08035
import TUK.Leaf08036
import TUK.Leaf08037
import TUK.Leaf08038
import TUK.Leaf08039
import TUK.Leaf08040
import TUK.Leaf08041
import TUK.Leaf08042
import TUK.Leaf08043
import TUK.Leaf08044
import TUK.Leaf08045
import TUK.Leaf08046
import TUK.Leaf08047
import TUK.Leaf08048
import TUK.Leaf08049
import TUK.Leaf08050
import TUK.Leaf08051
import TUK.Leaf08052
import TUK.Leaf08053
import TUK.Leaf08054
import TUK.Leaf08055
import TUK.Leaf08056
import TUK.Leaf08057
import TUK.Leaf08058
import TUK.Leaf08059
import TUK.Leaf08060
import TUK.Leaf08061
import TUK.Leaf08062
import TUK.Leaf08063
import TUK.Leaf08064
import TUK.Leaf08065
import TUK.Leaf08066
import TUK.Leaf08067
import TUK.Leaf08068
import TUK.Leaf08069
import TUK.Leaf08070
import TUK.Leaf08071
import TUK.Leaf08072
import TUK.Leaf08073
import TUK.Leaf08074
import TUK.Leaf08075
import TUK.Leaf08076
import TUK.Leaf08077
import TUK.Leaf08078
import TUK.Leaf08079
import TUK.Leaf08080
import TUK.Leaf08081
import TUK.Leaf08082
import TUK.Leaf08083
import TUK.Leaf08084
import TUK.Leaf08085
import TUK.Leaf08086
import TUK.Leaf08087
import TUK.Leaf08088
import TUK.Leaf08089
import TUK.Leaf08090
import TUK.Leaf08091
import TUK.Leaf08092
import TUK.Leaf08093
import TUK.Leaf08094
import TUK.Leaf08095
import TUK.Leaf08096
import TUK.Leaf08097
import TUK.Leaf08098
import TUK.Leaf08099

/-! Leaves 8000 .. 8099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_80 : ∀ j < 100, 100 * 80 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 80 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_08000
  | 1, _, _ => exact leaf_08001
  | 2, _, _ => exact leaf_08002
  | 3, _, _ => exact leaf_08003
  | 4, _, _ => exact leaf_08004
  | 5, _, _ => exact leaf_08005
  | 6, _, _ => exact leaf_08006
  | 7, _, _ => exact leaf_08007
  | 8, _, _ => exact leaf_08008
  | 9, _, _ => exact leaf_08009
  | 10, _, _ => exact leaf_08010
  | 11, _, _ => exact leaf_08011
  | 12, _, _ => exact leaf_08012
  | 13, _, _ => exact leaf_08013
  | 14, _, _ => exact leaf_08014
  | 15, _, _ => exact leaf_08015
  | 16, _, _ => exact leaf_08016
  | 17, _, _ => exact leaf_08017
  | 18, _, _ => exact leaf_08018
  | 19, _, _ => exact leaf_08019
  | 20, _, _ => exact leaf_08020
  | 21, _, _ => exact leaf_08021
  | 22, _, _ => exact leaf_08022
  | 23, _, _ => exact leaf_08023
  | 24, _, _ => exact leaf_08024
  | 25, _, _ => exact leaf_08025
  | 26, _, _ => exact leaf_08026
  | 27, _, _ => exact leaf_08027
  | 28, _, _ => exact leaf_08028
  | 29, _, _ => exact leaf_08029
  | 30, _, _ => exact leaf_08030
  | 31, _, _ => exact leaf_08031
  | 32, _, _ => exact leaf_08032
  | 33, _, _ => exact leaf_08033
  | 34, _, _ => exact leaf_08034
  | 35, _, _ => exact leaf_08035
  | 36, _, _ => exact leaf_08036
  | 37, _, _ => exact leaf_08037
  | 38, _, _ => exact leaf_08038
  | 39, _, _ => exact leaf_08039
  | 40, _, _ => exact leaf_08040
  | 41, _, _ => exact leaf_08041
  | 42, _, _ => exact leaf_08042
  | 43, _, _ => exact leaf_08043
  | 44, _, _ => exact leaf_08044
  | 45, _, _ => exact leaf_08045
  | 46, _, _ => exact leaf_08046
  | 47, _, _ => exact leaf_08047
  | 48, _, _ => exact leaf_08048
  | 49, _, _ => exact leaf_08049
  | 50, _, _ => exact leaf_08050
  | 51, _, _ => exact leaf_08051
  | 52, _, _ => exact leaf_08052
  | 53, _, _ => exact leaf_08053
  | 54, _, _ => exact leaf_08054
  | 55, _, _ => exact leaf_08055
  | 56, _, _ => exact leaf_08056
  | 57, _, _ => exact leaf_08057
  | 58, _, _ => exact leaf_08058
  | 59, _, _ => exact leaf_08059
  | 60, _, _ => exact leaf_08060
  | 61, _, _ => exact leaf_08061
  | 62, _, _ => exact leaf_08062
  | 63, _, _ => exact leaf_08063
  | 64, _, _ => exact leaf_08064
  | 65, _, _ => exact leaf_08065
  | 66, _, _ => exact leaf_08066
  | 67, _, _ => exact leaf_08067
  | 68, _, _ => exact leaf_08068
  | 69, _, _ => exact leaf_08069
  | 70, _, _ => exact leaf_08070
  | 71, _, _ => exact leaf_08071
  | 72, _, _ => exact leaf_08072
  | 73, _, _ => exact leaf_08073
  | 74, _, _ => exact leaf_08074
  | 75, _, _ => exact leaf_08075
  | 76, _, _ => exact leaf_08076
  | 77, _, _ => exact leaf_08077
  | 78, _, _ => exact leaf_08078
  | 79, _, _ => exact leaf_08079
  | 80, _, _ => exact leaf_08080
  | 81, _, _ => exact leaf_08081
  | 82, _, _ => exact leaf_08082
  | 83, _, _ => exact leaf_08083
  | 84, _, _ => exact leaf_08084
  | 85, _, _ => exact leaf_08085
  | 86, _, _ => exact leaf_08086
  | 87, _, _ => exact leaf_08087
  | 88, _, _ => exact leaf_08088
  | 89, _, _ => exact leaf_08089
  | 90, _, _ => exact leaf_08090
  | 91, _, _ => exact leaf_08091
  | 92, _, _ => exact leaf_08092
  | 93, _, _ => exact leaf_08093
  | 94, _, _ => exact leaf_08094
  | 95, _, _ => exact leaf_08095
  | 96, _, _ => exact leaf_08096
  | 97, _, _ => exact leaf_08097
  | 98, _, _ => exact leaf_08098
  | 99, _, _ => exact leaf_08099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
