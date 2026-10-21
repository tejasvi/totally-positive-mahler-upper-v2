import TUK.Leaf10000
import TUK.Leaf10001
import TUK.Leaf10002
import TUK.Leaf10003
import TUK.Leaf10004
import TUK.Leaf10005
import TUK.Leaf10006
import TUK.Leaf10007
import TUK.Leaf10008
import TUK.Leaf10009
import TUK.Leaf10010
import TUK.Leaf10011
import TUK.Leaf10012
import TUK.Leaf10013
import TUK.Leaf10014
import TUK.Leaf10015
import TUK.Leaf10016
import TUK.Leaf10017
import TUK.Leaf10018
import TUK.Leaf10019
import TUK.Leaf10020
import TUK.Leaf10021
import TUK.Leaf10022
import TUK.Leaf10023
import TUK.Leaf10024
import TUK.Leaf10025
import TUK.Leaf10026
import TUK.Leaf10027
import TUK.Leaf10028
import TUK.Leaf10029
import TUK.Leaf10030
import TUK.Leaf10031
import TUK.Leaf10032
import TUK.Leaf10033
import TUK.Leaf10034
import TUK.Leaf10035
import TUK.Leaf10036
import TUK.Leaf10037
import TUK.Leaf10038
import TUK.Leaf10039
import TUK.Leaf10040
import TUK.Leaf10041
import TUK.Leaf10042
import TUK.Leaf10043
import TUK.Leaf10044
import TUK.Leaf10045
import TUK.Leaf10046
import TUK.Leaf10047
import TUK.Leaf10048
import TUK.Leaf10049
import TUK.Leaf10050
import TUK.Leaf10051
import TUK.Leaf10052
import TUK.Leaf10053
import TUK.Leaf10054
import TUK.Leaf10055
import TUK.Leaf10056
import TUK.Leaf10057
import TUK.Leaf10058
import TUK.Leaf10059
import TUK.Leaf10060
import TUK.Leaf10061
import TUK.Leaf10062
import TUK.Leaf10063
import TUK.Leaf10064
import TUK.Leaf10065
import TUK.Leaf10066
import TUK.Leaf10067
import TUK.Leaf10068
import TUK.Leaf10069
import TUK.Leaf10070
import TUK.Leaf10071
import TUK.Leaf10072
import TUK.Leaf10073
import TUK.Leaf10074
import TUK.Leaf10075
import TUK.Leaf10076
import TUK.Leaf10077
import TUK.Leaf10078
import TUK.Leaf10079
import TUK.Leaf10080
import TUK.Leaf10081
import TUK.Leaf10082
import TUK.Leaf10083
import TUK.Leaf10084
import TUK.Leaf10085
import TUK.Leaf10086
import TUK.Leaf10087
import TUK.Leaf10088
import TUK.Leaf10089
import TUK.Leaf10090
import TUK.Leaf10091
import TUK.Leaf10092
import TUK.Leaf10093
import TUK.Leaf10094
import TUK.Leaf10095
import TUK.Leaf10096
import TUK.Leaf10097
import TUK.Leaf10098
import TUK.Leaf10099

/-! Leaves 10000 .. 10099 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_100 : ∀ j < 100, 100 * 100 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 100 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_10000
  | 1, _, _ => exact leaf_10001
  | 2, _, _ => exact leaf_10002
  | 3, _, _ => exact leaf_10003
  | 4, _, _ => exact leaf_10004
  | 5, _, _ => exact leaf_10005
  | 6, _, _ => exact leaf_10006
  | 7, _, _ => exact leaf_10007
  | 8, _, _ => exact leaf_10008
  | 9, _, _ => exact leaf_10009
  | 10, _, _ => exact leaf_10010
  | 11, _, _ => exact leaf_10011
  | 12, _, _ => exact leaf_10012
  | 13, _, _ => exact leaf_10013
  | 14, _, _ => exact leaf_10014
  | 15, _, _ => exact leaf_10015
  | 16, _, _ => exact leaf_10016
  | 17, _, _ => exact leaf_10017
  | 18, _, _ => exact leaf_10018
  | 19, _, _ => exact leaf_10019
  | 20, _, _ => exact leaf_10020
  | 21, _, _ => exact leaf_10021
  | 22, _, _ => exact leaf_10022
  | 23, _, _ => exact leaf_10023
  | 24, _, _ => exact leaf_10024
  | 25, _, _ => exact leaf_10025
  | 26, _, _ => exact leaf_10026
  | 27, _, _ => exact leaf_10027
  | 28, _, _ => exact leaf_10028
  | 29, _, _ => exact leaf_10029
  | 30, _, _ => exact leaf_10030
  | 31, _, _ => exact leaf_10031
  | 32, _, _ => exact leaf_10032
  | 33, _, _ => exact leaf_10033
  | 34, _, _ => exact leaf_10034
  | 35, _, _ => exact leaf_10035
  | 36, _, _ => exact leaf_10036
  | 37, _, _ => exact leaf_10037
  | 38, _, _ => exact leaf_10038
  | 39, _, _ => exact leaf_10039
  | 40, _, _ => exact leaf_10040
  | 41, _, _ => exact leaf_10041
  | 42, _, _ => exact leaf_10042
  | 43, _, _ => exact leaf_10043
  | 44, _, _ => exact leaf_10044
  | 45, _, _ => exact leaf_10045
  | 46, _, _ => exact leaf_10046
  | 47, _, _ => exact leaf_10047
  | 48, _, _ => exact leaf_10048
  | 49, _, _ => exact leaf_10049
  | 50, _, _ => exact leaf_10050
  | 51, _, _ => exact leaf_10051
  | 52, _, _ => exact leaf_10052
  | 53, _, _ => exact leaf_10053
  | 54, _, _ => exact leaf_10054
  | 55, _, _ => exact leaf_10055
  | 56, _, _ => exact leaf_10056
  | 57, _, _ => exact leaf_10057
  | 58, _, _ => exact leaf_10058
  | 59, _, _ => exact leaf_10059
  | 60, _, _ => exact leaf_10060
  | 61, _, _ => exact leaf_10061
  | 62, _, _ => exact leaf_10062
  | 63, _, _ => exact leaf_10063
  | 64, _, _ => exact leaf_10064
  | 65, _, _ => exact leaf_10065
  | 66, _, _ => exact leaf_10066
  | 67, _, _ => exact leaf_10067
  | 68, _, _ => exact leaf_10068
  | 69, _, _ => exact leaf_10069
  | 70, _, _ => exact leaf_10070
  | 71, _, _ => exact leaf_10071
  | 72, _, _ => exact leaf_10072
  | 73, _, _ => exact leaf_10073
  | 74, _, _ => exact leaf_10074
  | 75, _, _ => exact leaf_10075
  | 76, _, _ => exact leaf_10076
  | 77, _, _ => exact leaf_10077
  | 78, _, _ => exact leaf_10078
  | 79, _, _ => exact leaf_10079
  | 80, _, _ => exact leaf_10080
  | 81, _, _ => exact leaf_10081
  | 82, _, _ => exact leaf_10082
  | 83, _, _ => exact leaf_10083
  | 84, _, _ => exact leaf_10084
  | 85, _, _ => exact leaf_10085
  | 86, _, _ => exact leaf_10086
  | 87, _, _ => exact leaf_10087
  | 88, _, _ => exact leaf_10088
  | 89, _, _ => exact leaf_10089
  | 90, _, _ => exact leaf_10090
  | 91, _, _ => exact leaf_10091
  | 92, _, _ => exact leaf_10092
  | 93, _, _ => exact leaf_10093
  | 94, _, _ => exact leaf_10094
  | 95, _, _ => exact leaf_10095
  | 96, _, _ => exact leaf_10096
  | 97, _, _ => exact leaf_10097
  | 98, _, _ => exact leaf_10098
  | 99, _, _ => exact leaf_10099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
