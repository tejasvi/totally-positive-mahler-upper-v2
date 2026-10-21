import TUK.Leaf04900
import TUK.Leaf04901
import TUK.Leaf04902
import TUK.Leaf04903
import TUK.Leaf04904
import TUK.Leaf04905
import TUK.Leaf04906
import TUK.Leaf04907
import TUK.Leaf04908
import TUK.Leaf04909
import TUK.Leaf04910
import TUK.Leaf04911
import TUK.Leaf04912
import TUK.Leaf04913
import TUK.Leaf04914
import TUK.Leaf04915
import TUK.Leaf04916
import TUK.Leaf04917
import TUK.Leaf04918
import TUK.Leaf04919
import TUK.Leaf04920
import TUK.Leaf04921
import TUK.Leaf04922
import TUK.Leaf04923
import TUK.Leaf04924
import TUK.Leaf04925
import TUK.Leaf04926
import TUK.Leaf04927
import TUK.Leaf04928
import TUK.Leaf04929
import TUK.Leaf04930
import TUK.Leaf04931
import TUK.Leaf04932
import TUK.Leaf04933
import TUK.Leaf04934
import TUK.Leaf04935
import TUK.Leaf04936
import TUK.Leaf04937
import TUK.Leaf04938
import TUK.Leaf04939
import TUK.Leaf04940
import TUK.Leaf04941
import TUK.Leaf04942
import TUK.Leaf04943
import TUK.Leaf04944
import TUK.Leaf04945
import TUK.Leaf04946
import TUK.Leaf04947
import TUK.Leaf04948
import TUK.Leaf04949
import TUK.Leaf04950
import TUK.Leaf04951
import TUK.Leaf04952
import TUK.Leaf04953
import TUK.Leaf04954
import TUK.Leaf04955
import TUK.Leaf04956
import TUK.Leaf04957
import TUK.Leaf04958
import TUK.Leaf04959
import TUK.Leaf04960
import TUK.Leaf04961
import TUK.Leaf04962
import TUK.Leaf04963
import TUK.Leaf04964
import TUK.Leaf04965
import TUK.Leaf04966
import TUK.Leaf04967
import TUK.Leaf04968
import TUK.Leaf04969
import TUK.Leaf04970
import TUK.Leaf04971
import TUK.Leaf04972
import TUK.Leaf04973
import TUK.Leaf04974
import TUK.Leaf04975
import TUK.Leaf04976
import TUK.Leaf04977
import TUK.Leaf04978
import TUK.Leaf04979
import TUK.Leaf04980
import TUK.Leaf04981
import TUK.Leaf04982
import TUK.Leaf04983
import TUK.Leaf04984
import TUK.Leaf04985
import TUK.Leaf04986
import TUK.Leaf04987
import TUK.Leaf04988
import TUK.Leaf04989
import TUK.Leaf04990
import TUK.Leaf04991
import TUK.Leaf04992
import TUK.Leaf04993
import TUK.Leaf04994
import TUK.Leaf04995
import TUK.Leaf04996
import TUK.Leaf04997
import TUK.Leaf04998
import TUK.Leaf04999

/-! Leaves 4900 .. 4999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_49 : ∀ j < 100, 100 * 49 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 49 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_04900
  | 1, _, _ => exact leaf_04901
  | 2, _, _ => exact leaf_04902
  | 3, _, _ => exact leaf_04903
  | 4, _, _ => exact leaf_04904
  | 5, _, _ => exact leaf_04905
  | 6, _, _ => exact leaf_04906
  | 7, _, _ => exact leaf_04907
  | 8, _, _ => exact leaf_04908
  | 9, _, _ => exact leaf_04909
  | 10, _, _ => exact leaf_04910
  | 11, _, _ => exact leaf_04911
  | 12, _, _ => exact leaf_04912
  | 13, _, _ => exact leaf_04913
  | 14, _, _ => exact leaf_04914
  | 15, _, _ => exact leaf_04915
  | 16, _, _ => exact leaf_04916
  | 17, _, _ => exact leaf_04917
  | 18, _, _ => exact leaf_04918
  | 19, _, _ => exact leaf_04919
  | 20, _, _ => exact leaf_04920
  | 21, _, _ => exact leaf_04921
  | 22, _, _ => exact leaf_04922
  | 23, _, _ => exact leaf_04923
  | 24, _, _ => exact leaf_04924
  | 25, _, _ => exact leaf_04925
  | 26, _, _ => exact leaf_04926
  | 27, _, _ => exact leaf_04927
  | 28, _, _ => exact leaf_04928
  | 29, _, _ => exact leaf_04929
  | 30, _, _ => exact leaf_04930
  | 31, _, _ => exact leaf_04931
  | 32, _, _ => exact leaf_04932
  | 33, _, _ => exact leaf_04933
  | 34, _, _ => exact leaf_04934
  | 35, _, _ => exact leaf_04935
  | 36, _, _ => exact leaf_04936
  | 37, _, _ => exact leaf_04937
  | 38, _, _ => exact leaf_04938
  | 39, _, _ => exact leaf_04939
  | 40, _, _ => exact leaf_04940
  | 41, _, _ => exact leaf_04941
  | 42, _, _ => exact leaf_04942
  | 43, _, _ => exact leaf_04943
  | 44, _, _ => exact leaf_04944
  | 45, _, _ => exact leaf_04945
  | 46, _, _ => exact leaf_04946
  | 47, _, _ => exact leaf_04947
  | 48, _, _ => exact leaf_04948
  | 49, _, _ => exact leaf_04949
  | 50, _, _ => exact leaf_04950
  | 51, _, _ => exact leaf_04951
  | 52, _, _ => exact leaf_04952
  | 53, _, _ => exact leaf_04953
  | 54, _, _ => exact leaf_04954
  | 55, _, _ => exact leaf_04955
  | 56, _, _ => exact leaf_04956
  | 57, _, _ => exact leaf_04957
  | 58, _, _ => exact leaf_04958
  | 59, _, _ => exact leaf_04959
  | 60, _, _ => exact leaf_04960
  | 61, _, _ => exact leaf_04961
  | 62, _, _ => exact leaf_04962
  | 63, _, _ => exact leaf_04963
  | 64, _, _ => exact leaf_04964
  | 65, _, _ => exact leaf_04965
  | 66, _, _ => exact leaf_04966
  | 67, _, _ => exact leaf_04967
  | 68, _, _ => exact leaf_04968
  | 69, _, _ => exact leaf_04969
  | 70, _, _ => exact leaf_04970
  | 71, _, _ => exact leaf_04971
  | 72, _, _ => exact leaf_04972
  | 73, _, _ => exact leaf_04973
  | 74, _, _ => exact leaf_04974
  | 75, _, _ => exact leaf_04975
  | 76, _, _ => exact leaf_04976
  | 77, _, _ => exact leaf_04977
  | 78, _, _ => exact leaf_04978
  | 79, _, _ => exact leaf_04979
  | 80, _, _ => exact leaf_04980
  | 81, _, _ => exact leaf_04981
  | 82, _, _ => exact leaf_04982
  | 83, _, _ => exact leaf_04983
  | 84, _, _ => exact leaf_04984
  | 85, _, _ => exact leaf_04985
  | 86, _, _ => exact leaf_04986
  | 87, _, _ => exact leaf_04987
  | 88, _, _ => exact leaf_04988
  | 89, _, _ => exact leaf_04989
  | 90, _, _ => exact leaf_04990
  | 91, _, _ => exact leaf_04991
  | 92, _, _ => exact leaf_04992
  | 93, _, _ => exact leaf_04993
  | 94, _, _ => exact leaf_04994
  | 95, _, _ => exact leaf_04995
  | 96, _, _ => exact leaf_04996
  | 97, _, _ => exact leaf_04997
  | 98, _, _ => exact leaf_04998
  | 99, _, _ => exact leaf_04999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
