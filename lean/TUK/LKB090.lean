import TUK.Leaf09000
import TUK.Leaf09001
import TUK.Leaf09002
import TUK.Leaf09003
import TUK.Leaf09004
import TUK.Leaf09005
import TUK.Leaf09006
import TUK.Leaf09007
import TUK.Leaf09008
import TUK.Leaf09009
import TUK.Leaf09010
import TUK.Leaf09011
import TUK.Leaf09012
import TUK.Leaf09013
import TUK.Leaf09014
import TUK.Leaf09015
import TUK.Leaf09016
import TUK.Leaf09017
import TUK.Leaf09018
import TUK.Leaf09019
import TUK.Leaf09020
import TUK.Leaf09021
import TUK.Leaf09022
import TUK.Leaf09023
import TUK.Leaf09024
import TUK.Leaf09025
import TUK.Leaf09026
import TUK.Leaf09027
import TUK.Leaf09028
import TUK.Leaf09029
import TUK.Leaf09030
import TUK.Leaf09031
import TUK.Leaf09032
import TUK.Leaf09033
import TUK.Leaf09034
import TUK.Leaf09035
import TUK.Leaf09036
import TUK.Leaf09037
import TUK.Leaf09038
import TUK.Leaf09039
import TUK.Leaf09040
import TUK.Leaf09041
import TUK.Leaf09042
import TUK.Leaf09043
import TUK.Leaf09044
import TUK.Leaf09045
import TUK.Leaf09046
import TUK.Leaf09047
import TUK.Leaf09048
import TUK.Leaf09049
import TUK.Leaf09050
import TUK.Leaf09051
import TUK.Leaf09052
import TUK.Leaf09053
import TUK.Leaf09054
import TUK.Leaf09055
import TUK.Leaf09056
import TUK.Leaf09057
import TUK.Leaf09058
import TUK.Leaf09059
import TUK.Leaf09060
import TUK.Leaf09061
import TUK.Leaf09062
import TUK.Leaf09063
import TUK.Leaf09064
import TUK.Leaf09065
import TUK.Leaf09066
import TUK.Leaf09067
import TUK.Leaf09068
import TUK.Leaf09069
import TUK.Leaf09070
import TUK.Leaf09071
import TUK.Leaf09072
import TUK.Leaf09073
import TUK.Leaf09074
import TUK.Leaf09075
import TUK.Leaf09076
import TUK.Leaf09077
import TUK.Leaf09078
import TUK.Leaf09079
import TUK.Leaf09080
import TUK.Leaf09081
import TUK.Leaf09082
import TUK.Leaf09083
import TUK.Leaf09084
import TUK.Leaf09085
import TUK.Leaf09086
import TUK.Leaf09087
import TUK.Leaf09088
import TUK.Leaf09089
import TUK.Leaf09090
import TUK.Leaf09091
import TUK.Leaf09092
import TUK.Leaf09093
import TUK.Leaf09094
import TUK.Leaf09095
import TUK.Leaf09096
import TUK.Leaf09097
import TUK.Leaf09098
import TUK.Leaf09099

/-! Leaves 9000 .. 9099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_90 : ∀ j < 100, 100 * 90 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 90 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_09000
  | 1, _, _ => exact leaf_09001
  | 2, _, _ => exact leaf_09002
  | 3, _, _ => exact leaf_09003
  | 4, _, _ => exact leaf_09004
  | 5, _, _ => exact leaf_09005
  | 6, _, _ => exact leaf_09006
  | 7, _, _ => exact leaf_09007
  | 8, _, _ => exact leaf_09008
  | 9, _, _ => exact leaf_09009
  | 10, _, _ => exact leaf_09010
  | 11, _, _ => exact leaf_09011
  | 12, _, _ => exact leaf_09012
  | 13, _, _ => exact leaf_09013
  | 14, _, _ => exact leaf_09014
  | 15, _, _ => exact leaf_09015
  | 16, _, _ => exact leaf_09016
  | 17, _, _ => exact leaf_09017
  | 18, _, _ => exact leaf_09018
  | 19, _, _ => exact leaf_09019
  | 20, _, _ => exact leaf_09020
  | 21, _, _ => exact leaf_09021
  | 22, _, _ => exact leaf_09022
  | 23, _, _ => exact leaf_09023
  | 24, _, _ => exact leaf_09024
  | 25, _, _ => exact leaf_09025
  | 26, _, _ => exact leaf_09026
  | 27, _, _ => exact leaf_09027
  | 28, _, _ => exact leaf_09028
  | 29, _, _ => exact leaf_09029
  | 30, _, _ => exact leaf_09030
  | 31, _, _ => exact leaf_09031
  | 32, _, _ => exact leaf_09032
  | 33, _, _ => exact leaf_09033
  | 34, _, _ => exact leaf_09034
  | 35, _, _ => exact leaf_09035
  | 36, _, _ => exact leaf_09036
  | 37, _, _ => exact leaf_09037
  | 38, _, _ => exact leaf_09038
  | 39, _, _ => exact leaf_09039
  | 40, _, _ => exact leaf_09040
  | 41, _, _ => exact leaf_09041
  | 42, _, _ => exact leaf_09042
  | 43, _, _ => exact leaf_09043
  | 44, _, _ => exact leaf_09044
  | 45, _, _ => exact leaf_09045
  | 46, _, _ => exact leaf_09046
  | 47, _, _ => exact leaf_09047
  | 48, _, _ => exact leaf_09048
  | 49, _, _ => exact leaf_09049
  | 50, _, _ => exact leaf_09050
  | 51, _, _ => exact leaf_09051
  | 52, _, _ => exact leaf_09052
  | 53, _, _ => exact leaf_09053
  | 54, _, _ => exact leaf_09054
  | 55, _, _ => exact leaf_09055
  | 56, _, _ => exact leaf_09056
  | 57, _, _ => exact leaf_09057
  | 58, _, _ => exact leaf_09058
  | 59, _, _ => exact leaf_09059
  | 60, _, _ => exact leaf_09060
  | 61, _, _ => exact leaf_09061
  | 62, _, _ => exact leaf_09062
  | 63, _, _ => exact leaf_09063
  | 64, _, _ => exact leaf_09064
  | 65, _, _ => exact leaf_09065
  | 66, _, _ => exact leaf_09066
  | 67, _, _ => exact leaf_09067
  | 68, _, _ => exact leaf_09068
  | 69, _, _ => exact leaf_09069
  | 70, _, _ => exact leaf_09070
  | 71, _, _ => exact leaf_09071
  | 72, _, _ => exact leaf_09072
  | 73, _, _ => exact leaf_09073
  | 74, _, _ => exact leaf_09074
  | 75, _, _ => exact leaf_09075
  | 76, _, _ => exact leaf_09076
  | 77, _, _ => exact leaf_09077
  | 78, _, _ => exact leaf_09078
  | 79, _, _ => exact leaf_09079
  | 80, _, _ => exact leaf_09080
  | 81, _, _ => exact leaf_09081
  | 82, _, _ => exact leaf_09082
  | 83, _, _ => exact leaf_09083
  | 84, _, _ => exact leaf_09084
  | 85, _, _ => exact leaf_09085
  | 86, _, _ => exact leaf_09086
  | 87, _, _ => exact leaf_09087
  | 88, _, _ => exact leaf_09088
  | 89, _, _ => exact leaf_09089
  | 90, _, _ => exact leaf_09090
  | 91, _, _ => exact leaf_09091
  | 92, _, _ => exact leaf_09092
  | 93, _, _ => exact leaf_09093
  | 94, _, _ => exact leaf_09094
  | 95, _, _ => exact leaf_09095
  | 96, _, _ => exact leaf_09096
  | 97, _, _ => exact leaf_09097
  | 98, _, _ => exact leaf_09098
  | 99, _, _ => exact leaf_09099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
