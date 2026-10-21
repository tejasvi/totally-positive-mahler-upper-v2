import TUK.Leaf04000
import TUK.Leaf04001
import TUK.Leaf04002
import TUK.Leaf04003
import TUK.Leaf04004
import TUK.Leaf04005
import TUK.Leaf04006
import TUK.Leaf04007
import TUK.Leaf04008
import TUK.Leaf04009
import TUK.Leaf04010
import TUK.Leaf04011
import TUK.Leaf04012
import TUK.Leaf04013
import TUK.Leaf04014
import TUK.Leaf04015
import TUK.Leaf04016
import TUK.Leaf04017
import TUK.Leaf04018
import TUK.Leaf04019
import TUK.Leaf04020
import TUK.Leaf04021
import TUK.Leaf04022
import TUK.Leaf04023
import TUK.Leaf04024
import TUK.Leaf04025
import TUK.Leaf04026
import TUK.Leaf04027
import TUK.Leaf04028
import TUK.Leaf04029
import TUK.Leaf04030
import TUK.Leaf04031
import TUK.Leaf04032
import TUK.Leaf04033
import TUK.Leaf04034
import TUK.Leaf04035
import TUK.Leaf04036
import TUK.Leaf04037
import TUK.Leaf04038
import TUK.Leaf04039
import TUK.Leaf04040
import TUK.Leaf04041
import TUK.Leaf04042
import TUK.Leaf04043
import TUK.Leaf04044
import TUK.Leaf04045
import TUK.Leaf04046
import TUK.Leaf04047
import TUK.Leaf04048
import TUK.Leaf04049
import TUK.Leaf04050
import TUK.Leaf04051
import TUK.Leaf04052
import TUK.Leaf04053
import TUK.Leaf04054
import TUK.Leaf04055
import TUK.Leaf04056
import TUK.Leaf04057
import TUK.Leaf04058
import TUK.Leaf04059
import TUK.Leaf04060
import TUK.Leaf04061
import TUK.Leaf04062
import TUK.Leaf04063
import TUK.Leaf04064
import TUK.Leaf04065
import TUK.Leaf04066
import TUK.Leaf04067
import TUK.Leaf04068
import TUK.Leaf04069
import TUK.Leaf04070
import TUK.Leaf04071
import TUK.Leaf04072
import TUK.Leaf04073
import TUK.Leaf04074
import TUK.Leaf04075
import TUK.Leaf04076
import TUK.Leaf04077
import TUK.Leaf04078
import TUK.Leaf04079
import TUK.Leaf04080
import TUK.Leaf04081
import TUK.Leaf04082
import TUK.Leaf04083
import TUK.Leaf04084
import TUK.Leaf04085
import TUK.Leaf04086
import TUK.Leaf04087
import TUK.Leaf04088
import TUK.Leaf04089
import TUK.Leaf04090
import TUK.Leaf04091
import TUK.Leaf04092
import TUK.Leaf04093
import TUK.Leaf04094
import TUK.Leaf04095
import TUK.Leaf04096
import TUK.Leaf04097
import TUK.Leaf04098
import TUK.Leaf04099

/-! Leaves 4000 .. 4099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_40 : ∀ j < 100, 100 * 40 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 40 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_04000
  | 1, _, _ => exact leaf_04001
  | 2, _, _ => exact leaf_04002
  | 3, _, _ => exact leaf_04003
  | 4, _, _ => exact leaf_04004
  | 5, _, _ => exact leaf_04005
  | 6, _, _ => exact leaf_04006
  | 7, _, _ => exact leaf_04007
  | 8, _, _ => exact leaf_04008
  | 9, _, _ => exact leaf_04009
  | 10, _, _ => exact leaf_04010
  | 11, _, _ => exact leaf_04011
  | 12, _, _ => exact leaf_04012
  | 13, _, _ => exact leaf_04013
  | 14, _, _ => exact leaf_04014
  | 15, _, _ => exact leaf_04015
  | 16, _, _ => exact leaf_04016
  | 17, _, _ => exact leaf_04017
  | 18, _, _ => exact leaf_04018
  | 19, _, _ => exact leaf_04019
  | 20, _, _ => exact leaf_04020
  | 21, _, _ => exact leaf_04021
  | 22, _, _ => exact leaf_04022
  | 23, _, _ => exact leaf_04023
  | 24, _, _ => exact leaf_04024
  | 25, _, _ => exact leaf_04025
  | 26, _, _ => exact leaf_04026
  | 27, _, _ => exact leaf_04027
  | 28, _, _ => exact leaf_04028
  | 29, _, _ => exact leaf_04029
  | 30, _, _ => exact leaf_04030
  | 31, _, _ => exact leaf_04031
  | 32, _, _ => exact leaf_04032
  | 33, _, _ => exact leaf_04033
  | 34, _, _ => exact leaf_04034
  | 35, _, _ => exact leaf_04035
  | 36, _, _ => exact leaf_04036
  | 37, _, _ => exact leaf_04037
  | 38, _, _ => exact leaf_04038
  | 39, _, _ => exact leaf_04039
  | 40, _, _ => exact leaf_04040
  | 41, _, _ => exact leaf_04041
  | 42, _, _ => exact leaf_04042
  | 43, _, _ => exact leaf_04043
  | 44, _, _ => exact leaf_04044
  | 45, _, _ => exact leaf_04045
  | 46, _, _ => exact leaf_04046
  | 47, _, _ => exact leaf_04047
  | 48, _, _ => exact leaf_04048
  | 49, _, _ => exact leaf_04049
  | 50, _, _ => exact leaf_04050
  | 51, _, _ => exact leaf_04051
  | 52, _, _ => exact leaf_04052
  | 53, _, _ => exact leaf_04053
  | 54, _, _ => exact leaf_04054
  | 55, _, _ => exact leaf_04055
  | 56, _, _ => exact leaf_04056
  | 57, _, _ => exact leaf_04057
  | 58, _, _ => exact leaf_04058
  | 59, _, _ => exact leaf_04059
  | 60, _, _ => exact leaf_04060
  | 61, _, _ => exact leaf_04061
  | 62, _, _ => exact leaf_04062
  | 63, _, _ => exact leaf_04063
  | 64, _, _ => exact leaf_04064
  | 65, _, _ => exact leaf_04065
  | 66, _, _ => exact leaf_04066
  | 67, _, _ => exact leaf_04067
  | 68, _, _ => exact leaf_04068
  | 69, _, _ => exact leaf_04069
  | 70, _, _ => exact leaf_04070
  | 71, _, _ => exact leaf_04071
  | 72, _, _ => exact leaf_04072
  | 73, _, _ => exact leaf_04073
  | 74, _, _ => exact leaf_04074
  | 75, _, _ => exact leaf_04075
  | 76, _, _ => exact leaf_04076
  | 77, _, _ => exact leaf_04077
  | 78, _, _ => exact leaf_04078
  | 79, _, _ => exact leaf_04079
  | 80, _, _ => exact leaf_04080
  | 81, _, _ => exact leaf_04081
  | 82, _, _ => exact leaf_04082
  | 83, _, _ => exact leaf_04083
  | 84, _, _ => exact leaf_04084
  | 85, _, _ => exact leaf_04085
  | 86, _, _ => exact leaf_04086
  | 87, _, _ => exact leaf_04087
  | 88, _, _ => exact leaf_04088
  | 89, _, _ => exact leaf_04089
  | 90, _, _ => exact leaf_04090
  | 91, _, _ => exact leaf_04091
  | 92, _, _ => exact leaf_04092
  | 93, _, _ => exact leaf_04093
  | 94, _, _ => exact leaf_04094
  | 95, _, _ => exact leaf_04095
  | 96, _, _ => exact leaf_04096
  | 97, _, _ => exact leaf_04097
  | 98, _, _ => exact leaf_04098
  | 99, _, _ => exact leaf_04099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
