import TUK.Leaf07900
import TUK.Leaf07901
import TUK.Leaf07902
import TUK.Leaf07903
import TUK.Leaf07904
import TUK.Leaf07905
import TUK.Leaf07906
import TUK.Leaf07907
import TUK.Leaf07908
import TUK.Leaf07909
import TUK.Leaf07910
import TUK.Leaf07911
import TUK.Leaf07912
import TUK.Leaf07913
import TUK.Leaf07914
import TUK.Leaf07915
import TUK.Leaf07916
import TUK.Leaf07917
import TUK.Leaf07918
import TUK.Leaf07919
import TUK.Leaf07920
import TUK.Leaf07921
import TUK.Leaf07922
import TUK.Leaf07923
import TUK.Leaf07924
import TUK.Leaf07925
import TUK.Leaf07926
import TUK.Leaf07927
import TUK.Leaf07928
import TUK.Leaf07929
import TUK.Leaf07930
import TUK.Leaf07931
import TUK.Leaf07932
import TUK.Leaf07933
import TUK.Leaf07934
import TUK.Leaf07935
import TUK.Leaf07936
import TUK.Leaf07937
import TUK.Leaf07938
import TUK.Leaf07939
import TUK.Leaf07940
import TUK.Leaf07941
import TUK.Leaf07942
import TUK.Leaf07943
import TUK.Leaf07944
import TUK.Leaf07945
import TUK.Leaf07946
import TUK.Leaf07947
import TUK.Leaf07948
import TUK.Leaf07949
import TUK.Leaf07950
import TUK.Leaf07951
import TUK.Leaf07952
import TUK.Leaf07953
import TUK.Leaf07954
import TUK.Leaf07955
import TUK.Leaf07956
import TUK.Leaf07957
import TUK.Leaf07958
import TUK.Leaf07959
import TUK.Leaf07960
import TUK.Leaf07961
import TUK.Leaf07962
import TUK.Leaf07963
import TUK.Leaf07964
import TUK.Leaf07965
import TUK.Leaf07966
import TUK.Leaf07967
import TUK.Leaf07968
import TUK.Leaf07969
import TUK.Leaf07970
import TUK.Leaf07971
import TUK.Leaf07972
import TUK.Leaf07973
import TUK.Leaf07974
import TUK.Leaf07975
import TUK.Leaf07976
import TUK.Leaf07977
import TUK.Leaf07978
import TUK.Leaf07979
import TUK.Leaf07980
import TUK.Leaf07981
import TUK.Leaf07982
import TUK.Leaf07983
import TUK.Leaf07984
import TUK.Leaf07985
import TUK.Leaf07986
import TUK.Leaf07987
import TUK.Leaf07988
import TUK.Leaf07989
import TUK.Leaf07990
import TUK.Leaf07991
import TUK.Leaf07992
import TUK.Leaf07993
import TUK.Leaf07994
import TUK.Leaf07995
import TUK.Leaf07996
import TUK.Leaf07997
import TUK.Leaf07998
import TUK.Leaf07999

/-! Leaves 7900 .. 7999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_79 : ∀ j < 100, 100 * 79 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 79 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_07900
  | 1, _, _ => exact leaf_07901
  | 2, _, _ => exact leaf_07902
  | 3, _, _ => exact leaf_07903
  | 4, _, _ => exact leaf_07904
  | 5, _, _ => exact leaf_07905
  | 6, _, _ => exact leaf_07906
  | 7, _, _ => exact leaf_07907
  | 8, _, _ => exact leaf_07908
  | 9, _, _ => exact leaf_07909
  | 10, _, _ => exact leaf_07910
  | 11, _, _ => exact leaf_07911
  | 12, _, _ => exact leaf_07912
  | 13, _, _ => exact leaf_07913
  | 14, _, _ => exact leaf_07914
  | 15, _, _ => exact leaf_07915
  | 16, _, _ => exact leaf_07916
  | 17, _, _ => exact leaf_07917
  | 18, _, _ => exact leaf_07918
  | 19, _, _ => exact leaf_07919
  | 20, _, _ => exact leaf_07920
  | 21, _, _ => exact leaf_07921
  | 22, _, _ => exact leaf_07922
  | 23, _, _ => exact leaf_07923
  | 24, _, _ => exact leaf_07924
  | 25, _, _ => exact leaf_07925
  | 26, _, _ => exact leaf_07926
  | 27, _, _ => exact leaf_07927
  | 28, _, _ => exact leaf_07928
  | 29, _, _ => exact leaf_07929
  | 30, _, _ => exact leaf_07930
  | 31, _, _ => exact leaf_07931
  | 32, _, _ => exact leaf_07932
  | 33, _, _ => exact leaf_07933
  | 34, _, _ => exact leaf_07934
  | 35, _, _ => exact leaf_07935
  | 36, _, _ => exact leaf_07936
  | 37, _, _ => exact leaf_07937
  | 38, _, _ => exact leaf_07938
  | 39, _, _ => exact leaf_07939
  | 40, _, _ => exact leaf_07940
  | 41, _, _ => exact leaf_07941
  | 42, _, _ => exact leaf_07942
  | 43, _, _ => exact leaf_07943
  | 44, _, _ => exact leaf_07944
  | 45, _, _ => exact leaf_07945
  | 46, _, _ => exact leaf_07946
  | 47, _, _ => exact leaf_07947
  | 48, _, _ => exact leaf_07948
  | 49, _, _ => exact leaf_07949
  | 50, _, _ => exact leaf_07950
  | 51, _, _ => exact leaf_07951
  | 52, _, _ => exact leaf_07952
  | 53, _, _ => exact leaf_07953
  | 54, _, _ => exact leaf_07954
  | 55, _, _ => exact leaf_07955
  | 56, _, _ => exact leaf_07956
  | 57, _, _ => exact leaf_07957
  | 58, _, _ => exact leaf_07958
  | 59, _, _ => exact leaf_07959
  | 60, _, _ => exact leaf_07960
  | 61, _, _ => exact leaf_07961
  | 62, _, _ => exact leaf_07962
  | 63, _, _ => exact leaf_07963
  | 64, _, _ => exact leaf_07964
  | 65, _, _ => exact leaf_07965
  | 66, _, _ => exact leaf_07966
  | 67, _, _ => exact leaf_07967
  | 68, _, _ => exact leaf_07968
  | 69, _, _ => exact leaf_07969
  | 70, _, _ => exact leaf_07970
  | 71, _, _ => exact leaf_07971
  | 72, _, _ => exact leaf_07972
  | 73, _, _ => exact leaf_07973
  | 74, _, _ => exact leaf_07974
  | 75, _, _ => exact leaf_07975
  | 76, _, _ => exact leaf_07976
  | 77, _, _ => exact leaf_07977
  | 78, _, _ => exact leaf_07978
  | 79, _, _ => exact leaf_07979
  | 80, _, _ => exact leaf_07980
  | 81, _, _ => exact leaf_07981
  | 82, _, _ => exact leaf_07982
  | 83, _, _ => exact leaf_07983
  | 84, _, _ => exact leaf_07984
  | 85, _, _ => exact leaf_07985
  | 86, _, _ => exact leaf_07986
  | 87, _, _ => exact leaf_07987
  | 88, _, _ => exact leaf_07988
  | 89, _, _ => exact leaf_07989
  | 90, _, _ => exact leaf_07990
  | 91, _, _ => exact leaf_07991
  | 92, _, _ => exact leaf_07992
  | 93, _, _ => exact leaf_07993
  | 94, _, _ => exact leaf_07994
  | 95, _, _ => exact leaf_07995
  | 96, _, _ => exact leaf_07996
  | 97, _, _ => exact leaf_07997
  | 98, _, _ => exact leaf_07998
  | 99, _, _ => exact leaf_07999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
