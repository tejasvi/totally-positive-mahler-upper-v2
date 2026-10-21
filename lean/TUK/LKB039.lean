import TUK.Leaf03900
import TUK.Leaf03901
import TUK.Leaf03902
import TUK.Leaf03903
import TUK.Leaf03904
import TUK.Leaf03905
import TUK.Leaf03906
import TUK.Leaf03907
import TUK.Leaf03908
import TUK.Leaf03909
import TUK.Leaf03910
import TUK.Leaf03911
import TUK.Leaf03912
import TUK.Leaf03913
import TUK.Leaf03914
import TUK.Leaf03915
import TUK.Leaf03916
import TUK.Leaf03917
import TUK.Leaf03918
import TUK.Leaf03919
import TUK.Leaf03920
import TUK.Leaf03921
import TUK.Leaf03922
import TUK.Leaf03923
import TUK.Leaf03924
import TUK.Leaf03925
import TUK.Leaf03926
import TUK.Leaf03927
import TUK.Leaf03928
import TUK.Leaf03929
import TUK.Leaf03930
import TUK.Leaf03931
import TUK.Leaf03932
import TUK.Leaf03933
import TUK.Leaf03934
import TUK.Leaf03935
import TUK.Leaf03936
import TUK.Leaf03937
import TUK.Leaf03938
import TUK.Leaf03939
import TUK.Leaf03940
import TUK.Leaf03941
import TUK.Leaf03942
import TUK.Leaf03943
import TUK.Leaf03944
import TUK.Leaf03945
import TUK.Leaf03946
import TUK.Leaf03947
import TUK.Leaf03948
import TUK.Leaf03949
import TUK.Leaf03950
import TUK.Leaf03951
import TUK.Leaf03952
import TUK.Leaf03953
import TUK.Leaf03954
import TUK.Leaf03955
import TUK.Leaf03956
import TUK.Leaf03957
import TUK.Leaf03958
import TUK.Leaf03959
import TUK.Leaf03960
import TUK.Leaf03961
import TUK.Leaf03962
import TUK.Leaf03963
import TUK.Leaf03964
import TUK.Leaf03965
import TUK.Leaf03966
import TUK.Leaf03967
import TUK.Leaf03968
import TUK.Leaf03969
import TUK.Leaf03970
import TUK.Leaf03971
import TUK.Leaf03972
import TUK.Leaf03973
import TUK.Leaf03974
import TUK.Leaf03975
import TUK.Leaf03976
import TUK.Leaf03977
import TUK.Leaf03978
import TUK.Leaf03979
import TUK.Leaf03980
import TUK.Leaf03981
import TUK.Leaf03982
import TUK.Leaf03983
import TUK.Leaf03984
import TUK.Leaf03985
import TUK.Leaf03986
import TUK.Leaf03987
import TUK.Leaf03988
import TUK.Leaf03989
import TUK.Leaf03990
import TUK.Leaf03991
import TUK.Leaf03992
import TUK.Leaf03993
import TUK.Leaf03994
import TUK.Leaf03995
import TUK.Leaf03996
import TUK.Leaf03997
import TUK.Leaf03998
import TUK.Leaf03999

/-! Leaves 3900 .. 3999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_39 : ∀ j < 100, 100 * 39 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 39 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_03900
  | 1, _, _ => exact leaf_03901
  | 2, _, _ => exact leaf_03902
  | 3, _, _ => exact leaf_03903
  | 4, _, _ => exact leaf_03904
  | 5, _, _ => exact leaf_03905
  | 6, _, _ => exact leaf_03906
  | 7, _, _ => exact leaf_03907
  | 8, _, _ => exact leaf_03908
  | 9, _, _ => exact leaf_03909
  | 10, _, _ => exact leaf_03910
  | 11, _, _ => exact leaf_03911
  | 12, _, _ => exact leaf_03912
  | 13, _, _ => exact leaf_03913
  | 14, _, _ => exact leaf_03914
  | 15, _, _ => exact leaf_03915
  | 16, _, _ => exact leaf_03916
  | 17, _, _ => exact leaf_03917
  | 18, _, _ => exact leaf_03918
  | 19, _, _ => exact leaf_03919
  | 20, _, _ => exact leaf_03920
  | 21, _, _ => exact leaf_03921
  | 22, _, _ => exact leaf_03922
  | 23, _, _ => exact leaf_03923
  | 24, _, _ => exact leaf_03924
  | 25, _, _ => exact leaf_03925
  | 26, _, _ => exact leaf_03926
  | 27, _, _ => exact leaf_03927
  | 28, _, _ => exact leaf_03928
  | 29, _, _ => exact leaf_03929
  | 30, _, _ => exact leaf_03930
  | 31, _, _ => exact leaf_03931
  | 32, _, _ => exact leaf_03932
  | 33, _, _ => exact leaf_03933
  | 34, _, _ => exact leaf_03934
  | 35, _, _ => exact leaf_03935
  | 36, _, _ => exact leaf_03936
  | 37, _, _ => exact leaf_03937
  | 38, _, _ => exact leaf_03938
  | 39, _, _ => exact leaf_03939
  | 40, _, _ => exact leaf_03940
  | 41, _, _ => exact leaf_03941
  | 42, _, _ => exact leaf_03942
  | 43, _, _ => exact leaf_03943
  | 44, _, _ => exact leaf_03944
  | 45, _, _ => exact leaf_03945
  | 46, _, _ => exact leaf_03946
  | 47, _, _ => exact leaf_03947
  | 48, _, _ => exact leaf_03948
  | 49, _, _ => exact leaf_03949
  | 50, _, _ => exact leaf_03950
  | 51, _, _ => exact leaf_03951
  | 52, _, _ => exact leaf_03952
  | 53, _, _ => exact leaf_03953
  | 54, _, _ => exact leaf_03954
  | 55, _, _ => exact leaf_03955
  | 56, _, _ => exact leaf_03956
  | 57, _, _ => exact leaf_03957
  | 58, _, _ => exact leaf_03958
  | 59, _, _ => exact leaf_03959
  | 60, _, _ => exact leaf_03960
  | 61, _, _ => exact leaf_03961
  | 62, _, _ => exact leaf_03962
  | 63, _, _ => exact leaf_03963
  | 64, _, _ => exact leaf_03964
  | 65, _, _ => exact leaf_03965
  | 66, _, _ => exact leaf_03966
  | 67, _, _ => exact leaf_03967
  | 68, _, _ => exact leaf_03968
  | 69, _, _ => exact leaf_03969
  | 70, _, _ => exact leaf_03970
  | 71, _, _ => exact leaf_03971
  | 72, _, _ => exact leaf_03972
  | 73, _, _ => exact leaf_03973
  | 74, _, _ => exact leaf_03974
  | 75, _, _ => exact leaf_03975
  | 76, _, _ => exact leaf_03976
  | 77, _, _ => exact leaf_03977
  | 78, _, _ => exact leaf_03978
  | 79, _, _ => exact leaf_03979
  | 80, _, _ => exact leaf_03980
  | 81, _, _ => exact leaf_03981
  | 82, _, _ => exact leaf_03982
  | 83, _, _ => exact leaf_03983
  | 84, _, _ => exact leaf_03984
  | 85, _, _ => exact leaf_03985
  | 86, _, _ => exact leaf_03986
  | 87, _, _ => exact leaf_03987
  | 88, _, _ => exact leaf_03988
  | 89, _, _ => exact leaf_03989
  | 90, _, _ => exact leaf_03990
  | 91, _, _ => exact leaf_03991
  | 92, _, _ => exact leaf_03992
  | 93, _, _ => exact leaf_03993
  | 94, _, _ => exact leaf_03994
  | 95, _, _ => exact leaf_03995
  | 96, _, _ => exact leaf_03996
  | 97, _, _ => exact leaf_03997
  | 98, _, _ => exact leaf_03998
  | 99, _, _ => exact leaf_03999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
