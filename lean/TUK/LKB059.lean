import TUK.Leaf05900
import TUK.Leaf05901
import TUK.Leaf05902
import TUK.Leaf05903
import TUK.Leaf05904
import TUK.Leaf05905
import TUK.Leaf05906
import TUK.Leaf05907
import TUK.Leaf05908
import TUK.Leaf05909
import TUK.Leaf05910
import TUK.Leaf05911
import TUK.Leaf05912
import TUK.Leaf05913
import TUK.Leaf05914
import TUK.Leaf05915
import TUK.Leaf05916
import TUK.Leaf05917
import TUK.Leaf05918
import TUK.Leaf05919
import TUK.Leaf05920
import TUK.Leaf05921
import TUK.Leaf05922
import TUK.Leaf05923
import TUK.Leaf05924
import TUK.Leaf05925
import TUK.Leaf05926
import TUK.Leaf05927
import TUK.Leaf05928
import TUK.Leaf05929
import TUK.Leaf05930
import TUK.Leaf05931
import TUK.Leaf05932
import TUK.Leaf05933
import TUK.Leaf05934
import TUK.Leaf05935
import TUK.Leaf05936
import TUK.Leaf05937
import TUK.Leaf05938
import TUK.Leaf05939
import TUK.Leaf05940
import TUK.Leaf05941
import TUK.Leaf05942
import TUK.Leaf05943
import TUK.Leaf05944
import TUK.Leaf05945
import TUK.Leaf05946
import TUK.Leaf05947
import TUK.Leaf05948
import TUK.Leaf05949
import TUK.Leaf05950
import TUK.Leaf05951
import TUK.Leaf05952
import TUK.Leaf05953
import TUK.Leaf05954
import TUK.Leaf05955
import TUK.Leaf05956
import TUK.Leaf05957
import TUK.Leaf05958
import TUK.Leaf05959
import TUK.Leaf05960
import TUK.Leaf05961
import TUK.Leaf05962
import TUK.Leaf05963
import TUK.Leaf05964
import TUK.Leaf05965
import TUK.Leaf05966
import TUK.Leaf05967
import TUK.Leaf05968
import TUK.Leaf05969
import TUK.Leaf05970
import TUK.Leaf05971
import TUK.Leaf05972
import TUK.Leaf05973
import TUK.Leaf05974
import TUK.Leaf05975
import TUK.Leaf05976
import TUK.Leaf05977
import TUK.Leaf05978
import TUK.Leaf05979
import TUK.Leaf05980
import TUK.Leaf05981
import TUK.Leaf05982
import TUK.Leaf05983
import TUK.Leaf05984
import TUK.Leaf05985
import TUK.Leaf05986
import TUK.Leaf05987
import TUK.Leaf05988
import TUK.Leaf05989
import TUK.Leaf05990
import TUK.Leaf05991
import TUK.Leaf05992
import TUK.Leaf05993
import TUK.Leaf05994
import TUK.Leaf05995
import TUK.Leaf05996
import TUK.Leaf05997
import TUK.Leaf05998
import TUK.Leaf05999

/-! Leaves 5900 .. 5999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_59 : ∀ j < 100, 100 * 59 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 59 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_05900
  | 1, _, _ => exact leaf_05901
  | 2, _, _ => exact leaf_05902
  | 3, _, _ => exact leaf_05903
  | 4, _, _ => exact leaf_05904
  | 5, _, _ => exact leaf_05905
  | 6, _, _ => exact leaf_05906
  | 7, _, _ => exact leaf_05907
  | 8, _, _ => exact leaf_05908
  | 9, _, _ => exact leaf_05909
  | 10, _, _ => exact leaf_05910
  | 11, _, _ => exact leaf_05911
  | 12, _, _ => exact leaf_05912
  | 13, _, _ => exact leaf_05913
  | 14, _, _ => exact leaf_05914
  | 15, _, _ => exact leaf_05915
  | 16, _, _ => exact leaf_05916
  | 17, _, _ => exact leaf_05917
  | 18, _, _ => exact leaf_05918
  | 19, _, _ => exact leaf_05919
  | 20, _, _ => exact leaf_05920
  | 21, _, _ => exact leaf_05921
  | 22, _, _ => exact leaf_05922
  | 23, _, _ => exact leaf_05923
  | 24, _, _ => exact leaf_05924
  | 25, _, _ => exact leaf_05925
  | 26, _, _ => exact leaf_05926
  | 27, _, _ => exact leaf_05927
  | 28, _, _ => exact leaf_05928
  | 29, _, _ => exact leaf_05929
  | 30, _, _ => exact leaf_05930
  | 31, _, _ => exact leaf_05931
  | 32, _, _ => exact leaf_05932
  | 33, _, _ => exact leaf_05933
  | 34, _, _ => exact leaf_05934
  | 35, _, _ => exact leaf_05935
  | 36, _, _ => exact leaf_05936
  | 37, _, _ => exact leaf_05937
  | 38, _, _ => exact leaf_05938
  | 39, _, _ => exact leaf_05939
  | 40, _, _ => exact leaf_05940
  | 41, _, _ => exact leaf_05941
  | 42, _, _ => exact leaf_05942
  | 43, _, _ => exact leaf_05943
  | 44, _, _ => exact leaf_05944
  | 45, _, _ => exact leaf_05945
  | 46, _, _ => exact leaf_05946
  | 47, _, _ => exact leaf_05947
  | 48, _, _ => exact leaf_05948
  | 49, _, _ => exact leaf_05949
  | 50, _, _ => exact leaf_05950
  | 51, _, _ => exact leaf_05951
  | 52, _, _ => exact leaf_05952
  | 53, _, _ => exact leaf_05953
  | 54, _, _ => exact leaf_05954
  | 55, _, _ => exact leaf_05955
  | 56, _, _ => exact leaf_05956
  | 57, _, _ => exact leaf_05957
  | 58, _, _ => exact leaf_05958
  | 59, _, _ => exact leaf_05959
  | 60, _, _ => exact leaf_05960
  | 61, _, _ => exact leaf_05961
  | 62, _, _ => exact leaf_05962
  | 63, _, _ => exact leaf_05963
  | 64, _, _ => exact leaf_05964
  | 65, _, _ => exact leaf_05965
  | 66, _, _ => exact leaf_05966
  | 67, _, _ => exact leaf_05967
  | 68, _, _ => exact leaf_05968
  | 69, _, _ => exact leaf_05969
  | 70, _, _ => exact leaf_05970
  | 71, _, _ => exact leaf_05971
  | 72, _, _ => exact leaf_05972
  | 73, _, _ => exact leaf_05973
  | 74, _, _ => exact leaf_05974
  | 75, _, _ => exact leaf_05975
  | 76, _, _ => exact leaf_05976
  | 77, _, _ => exact leaf_05977
  | 78, _, _ => exact leaf_05978
  | 79, _, _ => exact leaf_05979
  | 80, _, _ => exact leaf_05980
  | 81, _, _ => exact leaf_05981
  | 82, _, _ => exact leaf_05982
  | 83, _, _ => exact leaf_05983
  | 84, _, _ => exact leaf_05984
  | 85, _, _ => exact leaf_05985
  | 86, _, _ => exact leaf_05986
  | 87, _, _ => exact leaf_05987
  | 88, _, _ => exact leaf_05988
  | 89, _, _ => exact leaf_05989
  | 90, _, _ => exact leaf_05990
  | 91, _, _ => exact leaf_05991
  | 92, _, _ => exact leaf_05992
  | 93, _, _ => exact leaf_05993
  | 94, _, _ => exact leaf_05994
  | 95, _, _ => exact leaf_05995
  | 96, _, _ => exact leaf_05996
  | 97, _, _ => exact leaf_05997
  | 98, _, _ => exact leaf_05998
  | 99, _, _ => exact leaf_05999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
