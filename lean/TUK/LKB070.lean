import TUK.Leaf07000
import TUK.Leaf07001
import TUK.Leaf07002
import TUK.Leaf07003
import TUK.Leaf07004
import TUK.Leaf07005
import TUK.Leaf07006
import TUK.Leaf07007
import TUK.Leaf07008
import TUK.Leaf07009
import TUK.Leaf07010
import TUK.Leaf07011
import TUK.Leaf07012
import TUK.Leaf07013
import TUK.Leaf07014
import TUK.Leaf07015
import TUK.Leaf07016
import TUK.Leaf07017
import TUK.Leaf07018
import TUK.Leaf07019
import TUK.Leaf07020
import TUK.Leaf07021
import TUK.Leaf07022
import TUK.Leaf07023
import TUK.Leaf07024
import TUK.Leaf07025
import TUK.Leaf07026
import TUK.Leaf07027
import TUK.Leaf07028
import TUK.Leaf07029
import TUK.Leaf07030
import TUK.Leaf07031
import TUK.Leaf07032
import TUK.Leaf07033
import TUK.Leaf07034
import TUK.Leaf07035
import TUK.Leaf07036
import TUK.Leaf07037
import TUK.Leaf07038
import TUK.Leaf07039
import TUK.Leaf07040
import TUK.Leaf07041
import TUK.Leaf07042
import TUK.Leaf07043
import TUK.Leaf07044
import TUK.Leaf07045
import TUK.Leaf07046
import TUK.Leaf07047
import TUK.Leaf07048
import TUK.Leaf07049
import TUK.Leaf07050
import TUK.Leaf07051
import TUK.Leaf07052
import TUK.Leaf07053
import TUK.Leaf07054
import TUK.Leaf07055
import TUK.Leaf07056
import TUK.Leaf07057
import TUK.Leaf07058
import TUK.Leaf07059
import TUK.Leaf07060
import TUK.Leaf07061
import TUK.Leaf07062
import TUK.Leaf07063
import TUK.Leaf07064
import TUK.Leaf07065
import TUK.Leaf07066
import TUK.Leaf07067
import TUK.Leaf07068
import TUK.Leaf07069
import TUK.Leaf07070
import TUK.Leaf07071
import TUK.Leaf07072
import TUK.Leaf07073
import TUK.Leaf07074
import TUK.Leaf07075
import TUK.Leaf07076
import TUK.Leaf07077
import TUK.Leaf07078
import TUK.Leaf07079
import TUK.Leaf07080
import TUK.Leaf07081
import TUK.Leaf07082
import TUK.Leaf07083
import TUK.Leaf07084
import TUK.Leaf07085
import TUK.Leaf07086
import TUK.Leaf07087
import TUK.Leaf07088
import TUK.Leaf07089
import TUK.Leaf07090
import TUK.Leaf07091
import TUK.Leaf07092
import TUK.Leaf07093
import TUK.Leaf07094
import TUK.Leaf07095
import TUK.Leaf07096
import TUK.Leaf07097
import TUK.Leaf07098
import TUK.Leaf07099

/-! Leaves 7000 .. 7099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_70 : ∀ j < 100, 100 * 70 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 70 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_07000
  | 1, _, _ => exact leaf_07001
  | 2, _, _ => exact leaf_07002
  | 3, _, _ => exact leaf_07003
  | 4, _, _ => exact leaf_07004
  | 5, _, _ => exact leaf_07005
  | 6, _, _ => exact leaf_07006
  | 7, _, _ => exact leaf_07007
  | 8, _, _ => exact leaf_07008
  | 9, _, _ => exact leaf_07009
  | 10, _, _ => exact leaf_07010
  | 11, _, _ => exact leaf_07011
  | 12, _, _ => exact leaf_07012
  | 13, _, _ => exact leaf_07013
  | 14, _, _ => exact leaf_07014
  | 15, _, _ => exact leaf_07015
  | 16, _, _ => exact leaf_07016
  | 17, _, _ => exact leaf_07017
  | 18, _, _ => exact leaf_07018
  | 19, _, _ => exact leaf_07019
  | 20, _, _ => exact leaf_07020
  | 21, _, _ => exact leaf_07021
  | 22, _, _ => exact leaf_07022
  | 23, _, _ => exact leaf_07023
  | 24, _, _ => exact leaf_07024
  | 25, _, _ => exact leaf_07025
  | 26, _, _ => exact leaf_07026
  | 27, _, _ => exact leaf_07027
  | 28, _, _ => exact leaf_07028
  | 29, _, _ => exact leaf_07029
  | 30, _, _ => exact leaf_07030
  | 31, _, _ => exact leaf_07031
  | 32, _, _ => exact leaf_07032
  | 33, _, _ => exact leaf_07033
  | 34, _, _ => exact leaf_07034
  | 35, _, _ => exact leaf_07035
  | 36, _, _ => exact leaf_07036
  | 37, _, _ => exact leaf_07037
  | 38, _, _ => exact leaf_07038
  | 39, _, _ => exact leaf_07039
  | 40, _, _ => exact leaf_07040
  | 41, _, _ => exact leaf_07041
  | 42, _, _ => exact leaf_07042
  | 43, _, _ => exact leaf_07043
  | 44, _, _ => exact leaf_07044
  | 45, _, _ => exact leaf_07045
  | 46, _, _ => exact leaf_07046
  | 47, _, _ => exact leaf_07047
  | 48, _, _ => exact leaf_07048
  | 49, _, _ => exact leaf_07049
  | 50, _, _ => exact leaf_07050
  | 51, _, _ => exact leaf_07051
  | 52, _, _ => exact leaf_07052
  | 53, _, _ => exact leaf_07053
  | 54, _, _ => exact leaf_07054
  | 55, _, _ => exact leaf_07055
  | 56, _, _ => exact leaf_07056
  | 57, _, _ => exact leaf_07057
  | 58, _, _ => exact leaf_07058
  | 59, _, _ => exact leaf_07059
  | 60, _, _ => exact leaf_07060
  | 61, _, _ => exact leaf_07061
  | 62, _, _ => exact leaf_07062
  | 63, _, _ => exact leaf_07063
  | 64, _, _ => exact leaf_07064
  | 65, _, _ => exact leaf_07065
  | 66, _, _ => exact leaf_07066
  | 67, _, _ => exact leaf_07067
  | 68, _, _ => exact leaf_07068
  | 69, _, _ => exact leaf_07069
  | 70, _, _ => exact leaf_07070
  | 71, _, _ => exact leaf_07071
  | 72, _, _ => exact leaf_07072
  | 73, _, _ => exact leaf_07073
  | 74, _, _ => exact leaf_07074
  | 75, _, _ => exact leaf_07075
  | 76, _, _ => exact leaf_07076
  | 77, _, _ => exact leaf_07077
  | 78, _, _ => exact leaf_07078
  | 79, _, _ => exact leaf_07079
  | 80, _, _ => exact leaf_07080
  | 81, _, _ => exact leaf_07081
  | 82, _, _ => exact leaf_07082
  | 83, _, _ => exact leaf_07083
  | 84, _, _ => exact leaf_07084
  | 85, _, _ => exact leaf_07085
  | 86, _, _ => exact leaf_07086
  | 87, _, _ => exact leaf_07087
  | 88, _, _ => exact leaf_07088
  | 89, _, _ => exact leaf_07089
  | 90, _, _ => exact leaf_07090
  | 91, _, _ => exact leaf_07091
  | 92, _, _ => exact leaf_07092
  | 93, _, _ => exact leaf_07093
  | 94, _, _ => exact leaf_07094
  | 95, _, _ => exact leaf_07095
  | 96, _, _ => exact leaf_07096
  | 97, _, _ => exact leaf_07097
  | 98, _, _ => exact leaf_07098
  | 99, _, _ => exact leaf_07099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
