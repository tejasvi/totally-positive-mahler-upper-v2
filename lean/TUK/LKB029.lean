import TUK.Leaf02900
import TUK.Leaf02901
import TUK.Leaf02902
import TUK.Leaf02903
import TUK.Leaf02904
import TUK.Leaf02905
import TUK.Leaf02906
import TUK.Leaf02907
import TUK.Leaf02908
import TUK.Leaf02909
import TUK.Leaf02910
import TUK.Leaf02911
import TUK.Leaf02912
import TUK.Leaf02913
import TUK.Leaf02914
import TUK.Leaf02915
import TUK.Leaf02916
import TUK.Leaf02917
import TUK.Leaf02918
import TUK.Leaf02919
import TUK.Leaf02920
import TUK.Leaf02921
import TUK.Leaf02922
import TUK.Leaf02923
import TUK.Leaf02924
import TUK.Leaf02925
import TUK.Leaf02926
import TUK.Leaf02927
import TUK.Leaf02928
import TUK.Leaf02929
import TUK.Leaf02930
import TUK.Leaf02931
import TUK.Leaf02932
import TUK.Leaf02933
import TUK.Leaf02934
import TUK.Leaf02935
import TUK.Leaf02936
import TUK.Leaf02937
import TUK.Leaf02938
import TUK.Leaf02939
import TUK.Leaf02940
import TUK.Leaf02941
import TUK.Leaf02942
import TUK.Leaf02943
import TUK.Leaf02944
import TUK.Leaf02945
import TUK.Leaf02946
import TUK.Leaf02947
import TUK.Leaf02948
import TUK.Leaf02949
import TUK.Leaf02950
import TUK.Leaf02951
import TUK.Leaf02952
import TUK.Leaf02953
import TUK.Leaf02954
import TUK.Leaf02955
import TUK.Leaf02956
import TUK.Leaf02957
import TUK.Leaf02958
import TUK.Leaf02959
import TUK.Leaf02960
import TUK.Leaf02961
import TUK.Leaf02962
import TUK.Leaf02963
import TUK.Leaf02964
import TUK.Leaf02965
import TUK.Leaf02966
import TUK.Leaf02967
import TUK.Leaf02968
import TUK.Leaf02969
import TUK.Leaf02970
import TUK.Leaf02971
import TUK.Leaf02972
import TUK.Leaf02973
import TUK.Leaf02974
import TUK.Leaf02975
import TUK.Leaf02976
import TUK.Leaf02977
import TUK.Leaf02978
import TUK.Leaf02979
import TUK.Leaf02980
import TUK.Leaf02981
import TUK.Leaf02982
import TUK.Leaf02983
import TUK.Leaf02984
import TUK.Leaf02985
import TUK.Leaf02986
import TUK.Leaf02987
import TUK.Leaf02988
import TUK.Leaf02989
import TUK.Leaf02990
import TUK.Leaf02991
import TUK.Leaf02992
import TUK.Leaf02993
import TUK.Leaf02994
import TUK.Leaf02995
import TUK.Leaf02996
import TUK.Leaf02997
import TUK.Leaf02998
import TUK.Leaf02999

/-! Leaves 2900 .. 2999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_29 : ∀ j < 100, 100 * 29 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 29 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_02900
  | 1, _, _ => exact leaf_02901
  | 2, _, _ => exact leaf_02902
  | 3, _, _ => exact leaf_02903
  | 4, _, _ => exact leaf_02904
  | 5, _, _ => exact leaf_02905
  | 6, _, _ => exact leaf_02906
  | 7, _, _ => exact leaf_02907
  | 8, _, _ => exact leaf_02908
  | 9, _, _ => exact leaf_02909
  | 10, _, _ => exact leaf_02910
  | 11, _, _ => exact leaf_02911
  | 12, _, _ => exact leaf_02912
  | 13, _, _ => exact leaf_02913
  | 14, _, _ => exact leaf_02914
  | 15, _, _ => exact leaf_02915
  | 16, _, _ => exact leaf_02916
  | 17, _, _ => exact leaf_02917
  | 18, _, _ => exact leaf_02918
  | 19, _, _ => exact leaf_02919
  | 20, _, _ => exact leaf_02920
  | 21, _, _ => exact leaf_02921
  | 22, _, _ => exact leaf_02922
  | 23, _, _ => exact leaf_02923
  | 24, _, _ => exact leaf_02924
  | 25, _, _ => exact leaf_02925
  | 26, _, _ => exact leaf_02926
  | 27, _, _ => exact leaf_02927
  | 28, _, _ => exact leaf_02928
  | 29, _, _ => exact leaf_02929
  | 30, _, _ => exact leaf_02930
  | 31, _, _ => exact leaf_02931
  | 32, _, _ => exact leaf_02932
  | 33, _, _ => exact leaf_02933
  | 34, _, _ => exact leaf_02934
  | 35, _, _ => exact leaf_02935
  | 36, _, _ => exact leaf_02936
  | 37, _, _ => exact leaf_02937
  | 38, _, _ => exact leaf_02938
  | 39, _, _ => exact leaf_02939
  | 40, _, _ => exact leaf_02940
  | 41, _, _ => exact leaf_02941
  | 42, _, _ => exact leaf_02942
  | 43, _, _ => exact leaf_02943
  | 44, _, _ => exact leaf_02944
  | 45, _, _ => exact leaf_02945
  | 46, _, _ => exact leaf_02946
  | 47, _, _ => exact leaf_02947
  | 48, _, _ => exact leaf_02948
  | 49, _, _ => exact leaf_02949
  | 50, _, _ => exact leaf_02950
  | 51, _, _ => exact leaf_02951
  | 52, _, _ => exact leaf_02952
  | 53, _, _ => exact leaf_02953
  | 54, _, _ => exact leaf_02954
  | 55, _, _ => exact leaf_02955
  | 56, _, _ => exact leaf_02956
  | 57, _, _ => exact leaf_02957
  | 58, _, _ => exact leaf_02958
  | 59, _, _ => exact leaf_02959
  | 60, _, _ => exact leaf_02960
  | 61, _, _ => exact leaf_02961
  | 62, _, _ => exact leaf_02962
  | 63, _, _ => exact leaf_02963
  | 64, _, _ => exact leaf_02964
  | 65, _, _ => exact leaf_02965
  | 66, _, _ => exact leaf_02966
  | 67, _, _ => exact leaf_02967
  | 68, _, _ => exact leaf_02968
  | 69, _, _ => exact leaf_02969
  | 70, _, _ => exact leaf_02970
  | 71, _, _ => exact leaf_02971
  | 72, _, _ => exact leaf_02972
  | 73, _, _ => exact leaf_02973
  | 74, _, _ => exact leaf_02974
  | 75, _, _ => exact leaf_02975
  | 76, _, _ => exact leaf_02976
  | 77, _, _ => exact leaf_02977
  | 78, _, _ => exact leaf_02978
  | 79, _, _ => exact leaf_02979
  | 80, _, _ => exact leaf_02980
  | 81, _, _ => exact leaf_02981
  | 82, _, _ => exact leaf_02982
  | 83, _, _ => exact leaf_02983
  | 84, _, _ => exact leaf_02984
  | 85, _, _ => exact leaf_02985
  | 86, _, _ => exact leaf_02986
  | 87, _, _ => exact leaf_02987
  | 88, _, _ => exact leaf_02988
  | 89, _, _ => exact leaf_02989
  | 90, _, _ => exact leaf_02990
  | 91, _, _ => exact leaf_02991
  | 92, _, _ => exact leaf_02992
  | 93, _, _ => exact leaf_02993
  | 94, _, _ => exact leaf_02994
  | 95, _, _ => exact leaf_02995
  | 96, _, _ => exact leaf_02996
  | 97, _, _ => exact leaf_02997
  | 98, _, _ => exact leaf_02998
  | 99, _, _ => exact leaf_02999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
