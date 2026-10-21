import TUK.Leaf00900
import TUK.Leaf00901
import TUK.Leaf00902
import TUK.Leaf00903
import TUK.Leaf00904
import TUK.Leaf00905
import TUK.Leaf00906
import TUK.Leaf00907
import TUK.Leaf00908
import TUK.Leaf00909
import TUK.Leaf00910
import TUK.Leaf00911
import TUK.Leaf00912
import TUK.Leaf00913
import TUK.Leaf00914
import TUK.Leaf00915
import TUK.Leaf00916
import TUK.Leaf00917
import TUK.Leaf00918
import TUK.Leaf00919
import TUK.Leaf00920
import TUK.Leaf00921
import TUK.Leaf00922
import TUK.Leaf00923
import TUK.Leaf00924
import TUK.Leaf00925
import TUK.Leaf00926
import TUK.Leaf00927
import TUK.Leaf00928
import TUK.Leaf00929
import TUK.Leaf00930
import TUK.Leaf00931
import TUK.Leaf00932
import TUK.Leaf00933
import TUK.Leaf00934
import TUK.Leaf00935
import TUK.Leaf00936
import TUK.Leaf00937
import TUK.Leaf00938
import TUK.Leaf00939
import TUK.Leaf00940
import TUK.Leaf00941
import TUK.Leaf00942
import TUK.Leaf00943
import TUK.Leaf00944
import TUK.Leaf00945
import TUK.Leaf00946
import TUK.Leaf00947
import TUK.Leaf00948
import TUK.Leaf00949
import TUK.Leaf00950
import TUK.Leaf00951
import TUK.Leaf00952
import TUK.Leaf00953
import TUK.Leaf00954
import TUK.Leaf00955
import TUK.Leaf00956
import TUK.Leaf00957
import TUK.Leaf00958
import TUK.Leaf00959
import TUK.Leaf00960
import TUK.Leaf00961
import TUK.Leaf00962
import TUK.Leaf00963
import TUK.Leaf00964
import TUK.Leaf00965
import TUK.Leaf00966
import TUK.Leaf00967
import TUK.Leaf00968
import TUK.Leaf00969
import TUK.Leaf00970
import TUK.Leaf00971
import TUK.Leaf00972
import TUK.Leaf00973
import TUK.Leaf00974
import TUK.Leaf00975
import TUK.Leaf00976
import TUK.Leaf00977
import TUK.Leaf00978
import TUK.Leaf00979
import TUK.Leaf00980
import TUK.Leaf00981
import TUK.Leaf00982
import TUK.Leaf00983
import TUK.Leaf00984
import TUK.Leaf00985
import TUK.Leaf00986
import TUK.Leaf00987
import TUK.Leaf00988
import TUK.Leaf00989
import TUK.Leaf00990
import TUK.Leaf00991
import TUK.Leaf00992
import TUK.Leaf00993
import TUK.Leaf00994
import TUK.Leaf00995
import TUK.Leaf00996
import TUK.Leaf00997
import TUK.Leaf00998
import TUK.Leaf00999

/-! Leaves 900 .. 999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_9 : ∀ j < 100, 100 * 9 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 9 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_00900
  | 1, _, _ => exact leaf_00901
  | 2, _, _ => exact leaf_00902
  | 3, _, _ => exact leaf_00903
  | 4, _, _ => exact leaf_00904
  | 5, _, _ => exact leaf_00905
  | 6, _, _ => exact leaf_00906
  | 7, _, _ => exact leaf_00907
  | 8, _, _ => exact leaf_00908
  | 9, _, _ => exact leaf_00909
  | 10, _, _ => exact leaf_00910
  | 11, _, _ => exact leaf_00911
  | 12, _, _ => exact leaf_00912
  | 13, _, _ => exact leaf_00913
  | 14, _, _ => exact leaf_00914
  | 15, _, _ => exact leaf_00915
  | 16, _, _ => exact leaf_00916
  | 17, _, _ => exact leaf_00917
  | 18, _, _ => exact leaf_00918
  | 19, _, _ => exact leaf_00919
  | 20, _, _ => exact leaf_00920
  | 21, _, _ => exact leaf_00921
  | 22, _, _ => exact leaf_00922
  | 23, _, _ => exact leaf_00923
  | 24, _, _ => exact leaf_00924
  | 25, _, _ => exact leaf_00925
  | 26, _, _ => exact leaf_00926
  | 27, _, _ => exact leaf_00927
  | 28, _, _ => exact leaf_00928
  | 29, _, _ => exact leaf_00929
  | 30, _, _ => exact leaf_00930
  | 31, _, _ => exact leaf_00931
  | 32, _, _ => exact leaf_00932
  | 33, _, _ => exact leaf_00933
  | 34, _, _ => exact leaf_00934
  | 35, _, _ => exact leaf_00935
  | 36, _, _ => exact leaf_00936
  | 37, _, _ => exact leaf_00937
  | 38, _, _ => exact leaf_00938
  | 39, _, _ => exact leaf_00939
  | 40, _, _ => exact leaf_00940
  | 41, _, _ => exact leaf_00941
  | 42, _, _ => exact leaf_00942
  | 43, _, _ => exact leaf_00943
  | 44, _, _ => exact leaf_00944
  | 45, _, _ => exact leaf_00945
  | 46, _, _ => exact leaf_00946
  | 47, _, _ => exact leaf_00947
  | 48, _, _ => exact leaf_00948
  | 49, _, _ => exact leaf_00949
  | 50, _, _ => exact leaf_00950
  | 51, _, _ => exact leaf_00951
  | 52, _, _ => exact leaf_00952
  | 53, _, _ => exact leaf_00953
  | 54, _, _ => exact leaf_00954
  | 55, _, _ => exact leaf_00955
  | 56, _, _ => exact leaf_00956
  | 57, _, _ => exact leaf_00957
  | 58, _, _ => exact leaf_00958
  | 59, _, _ => exact leaf_00959
  | 60, _, _ => exact leaf_00960
  | 61, _, _ => exact leaf_00961
  | 62, _, _ => exact leaf_00962
  | 63, _, _ => exact leaf_00963
  | 64, _, _ => exact leaf_00964
  | 65, _, _ => exact leaf_00965
  | 66, _, _ => exact leaf_00966
  | 67, _, _ => exact leaf_00967
  | 68, _, _ => exact leaf_00968
  | 69, _, _ => exact leaf_00969
  | 70, _, _ => exact leaf_00970
  | 71, _, _ => exact leaf_00971
  | 72, _, _ => exact leaf_00972
  | 73, _, _ => exact leaf_00973
  | 74, _, _ => exact leaf_00974
  | 75, _, _ => exact leaf_00975
  | 76, _, _ => exact leaf_00976
  | 77, _, _ => exact leaf_00977
  | 78, _, _ => exact leaf_00978
  | 79, _, _ => exact leaf_00979
  | 80, _, _ => exact leaf_00980
  | 81, _, _ => exact leaf_00981
  | 82, _, _ => exact leaf_00982
  | 83, _, _ => exact leaf_00983
  | 84, _, _ => exact leaf_00984
  | 85, _, _ => exact leaf_00985
  | 86, _, _ => exact leaf_00986
  | 87, _, _ => exact leaf_00987
  | 88, _, _ => exact leaf_00988
  | 89, _, _ => exact leaf_00989
  | 90, _, _ => exact leaf_00990
  | 91, _, _ => exact leaf_00991
  | 92, _, _ => exact leaf_00992
  | 93, _, _ => exact leaf_00993
  | 94, _, _ => exact leaf_00994
  | 95, _, _ => exact leaf_00995
  | 96, _, _ => exact leaf_00996
  | 97, _, _ => exact leaf_00997
  | 98, _, _ => exact leaf_00998
  | 99, _, _ => exact leaf_00999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
