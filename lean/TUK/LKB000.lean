import TUK.Leaf00000
import TUK.Leaf00001
import TUK.Leaf00002
import TUK.Leaf00003
import TUK.Leaf00004
import TUK.Leaf00005
import TUK.Leaf00006
import TUK.Leaf00007
import TUK.Leaf00008
import TUK.Leaf00009
import TUK.Leaf00010
import TUK.Leaf00011
import TUK.Leaf00012
import TUK.Leaf00013
import TUK.Leaf00014
import TUK.Leaf00015
import TUK.Leaf00016
import TUK.Leaf00017
import TUK.Leaf00018
import TUK.Leaf00019
import TUK.Leaf00020
import TUK.Leaf00021
import TUK.Leaf00022
import TUK.Leaf00023
import TUK.Leaf00024
import TUK.Leaf00025
import TUK.Leaf00026
import TUK.Leaf00027
import TUK.Leaf00028
import TUK.Leaf00029
import TUK.Leaf00030
import TUK.Leaf00031
import TUK.Leaf00032
import TUK.Leaf00033
import TUK.Leaf00034
import TUK.Leaf00035
import TUK.Leaf00036
import TUK.Leaf00037
import TUK.Leaf00038
import TUK.Leaf00039
import TUK.Leaf00040
import TUK.Leaf00041
import TUK.Leaf00042
import TUK.Leaf00043
import TUK.Leaf00044
import TUK.Leaf00045
import TUK.Leaf00046
import TUK.Leaf00047
import TUK.Leaf00048
import TUK.Leaf00049
import TUK.Leaf00050
import TUK.Leaf00051
import TUK.Leaf00052
import TUK.Leaf00053
import TUK.Leaf00054
import TUK.Leaf00055
import TUK.Leaf00056
import TUK.Leaf00057
import TUK.Leaf00058
import TUK.Leaf00059
import TUK.Leaf00060
import TUK.Leaf00061
import TUK.Leaf00062
import TUK.Leaf00063
import TUK.Leaf00064
import TUK.Leaf00065
import TUK.Leaf00066
import TUK.Leaf00067
import TUK.Leaf00068
import TUK.Leaf00069
import TUK.Leaf00070
import TUK.Leaf00071
import TUK.Leaf00072
import TUK.Leaf00073
import TUK.Leaf00074
import TUK.Leaf00075
import TUK.Leaf00076
import TUK.Leaf00077
import TUK.Leaf00078
import TUK.Leaf00079
import TUK.Leaf00080
import TUK.Leaf00081
import TUK.Leaf00082
import TUK.Leaf00083
import TUK.Leaf00084
import TUK.Leaf00085
import TUK.Leaf00086
import TUK.Leaf00087
import TUK.Leaf00088
import TUK.Leaf00089
import TUK.Leaf00090
import TUK.Leaf00091
import TUK.Leaf00092
import TUK.Leaf00093
import TUK.Leaf00094
import TUK.Leaf00095
import TUK.Leaf00096
import TUK.Leaf00097
import TUK.Leaf00098
import TUK.Leaf00099

/-! Leaves 0 .. 99 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_0 : ∀ j < 100, 100 * 0 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 0 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_00000
  | 1, _, _ => exact leaf_00001
  | 2, _, _ => exact leaf_00002
  | 3, _, _ => exact leaf_00003
  | 4, _, _ => exact leaf_00004
  | 5, _, _ => exact leaf_00005
  | 6, _, _ => exact leaf_00006
  | 7, _, _ => exact leaf_00007
  | 8, _, _ => exact leaf_00008
  | 9, _, _ => exact leaf_00009
  | 10, _, _ => exact leaf_00010
  | 11, _, _ => exact leaf_00011
  | 12, _, _ => exact leaf_00012
  | 13, _, _ => exact leaf_00013
  | 14, _, _ => exact leaf_00014
  | 15, _, _ => exact leaf_00015
  | 16, _, _ => exact leaf_00016
  | 17, _, _ => exact leaf_00017
  | 18, _, _ => exact leaf_00018
  | 19, _, _ => exact leaf_00019
  | 20, _, _ => exact leaf_00020
  | 21, _, _ => exact leaf_00021
  | 22, _, _ => exact leaf_00022
  | 23, _, _ => exact leaf_00023
  | 24, _, _ => exact leaf_00024
  | 25, _, _ => exact leaf_00025
  | 26, _, _ => exact leaf_00026
  | 27, _, _ => exact leaf_00027
  | 28, _, _ => exact leaf_00028
  | 29, _, _ => exact leaf_00029
  | 30, _, _ => exact leaf_00030
  | 31, _, _ => exact leaf_00031
  | 32, _, _ => exact leaf_00032
  | 33, _, _ => exact leaf_00033
  | 34, _, _ => exact leaf_00034
  | 35, _, _ => exact leaf_00035
  | 36, _, _ => exact leaf_00036
  | 37, _, _ => exact leaf_00037
  | 38, _, _ => exact leaf_00038
  | 39, _, _ => exact leaf_00039
  | 40, _, _ => exact leaf_00040
  | 41, _, _ => exact leaf_00041
  | 42, _, _ => exact leaf_00042
  | 43, _, _ => exact leaf_00043
  | 44, _, _ => exact leaf_00044
  | 45, _, _ => exact leaf_00045
  | 46, _, _ => exact leaf_00046
  | 47, _, _ => exact leaf_00047
  | 48, _, _ => exact leaf_00048
  | 49, _, _ => exact leaf_00049
  | 50, _, _ => exact leaf_00050
  | 51, _, _ => exact leaf_00051
  | 52, _, _ => exact leaf_00052
  | 53, _, _ => exact leaf_00053
  | 54, _, _ => exact leaf_00054
  | 55, _, _ => exact leaf_00055
  | 56, _, _ => exact leaf_00056
  | 57, _, _ => exact leaf_00057
  | 58, _, _ => exact leaf_00058
  | 59, _, _ => exact leaf_00059
  | 60, _, _ => exact leaf_00060
  | 61, _, _ => exact leaf_00061
  | 62, _, _ => exact leaf_00062
  | 63, _, _ => exact leaf_00063
  | 64, _, _ => exact leaf_00064
  | 65, _, _ => exact leaf_00065
  | 66, _, _ => exact leaf_00066
  | 67, _, _ => exact leaf_00067
  | 68, _, _ => exact leaf_00068
  | 69, _, _ => exact leaf_00069
  | 70, _, _ => exact leaf_00070
  | 71, _, _ => exact leaf_00071
  | 72, _, _ => exact leaf_00072
  | 73, _, _ => exact leaf_00073
  | 74, _, _ => exact leaf_00074
  | 75, _, _ => exact leaf_00075
  | 76, _, _ => exact leaf_00076
  | 77, _, _ => exact leaf_00077
  | 78, _, _ => exact leaf_00078
  | 79, _, _ => exact leaf_00079
  | 80, _, _ => exact leaf_00080
  | 81, _, _ => exact leaf_00081
  | 82, _, _ => exact leaf_00082
  | 83, _, _ => exact leaf_00083
  | 84, _, _ => exact leaf_00084
  | 85, _, _ => exact leaf_00085
  | 86, _, _ => exact leaf_00086
  | 87, _, _ => exact leaf_00087
  | 88, _, _ => exact leaf_00088
  | 89, _, _ => exact leaf_00089
  | 90, _, _ => exact leaf_00090
  | 91, _, _ => exact leaf_00091
  | 92, _, _ => exact leaf_00092
  | 93, _, _ => exact leaf_00093
  | 94, _, _ => exact leaf_00094
  | 95, _, _ => exact leaf_00095
  | 96, _, _ => exact leaf_00096
  | 97, _, _ => exact leaf_00097
  | 98, _, _ => exact leaf_00098
  | 99, _, _ => exact leaf_00099
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
