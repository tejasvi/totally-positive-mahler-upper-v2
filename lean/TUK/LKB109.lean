import TUK.Leaf10900
import TUK.Leaf10901
import TUK.Leaf10902
import TUK.Leaf10903
import TUK.Leaf10904
import TUK.Leaf10905
import TUK.Leaf10906
import TUK.Leaf10907
import TUK.Leaf10908
import TUK.Leaf10909
import TUK.Leaf10910
import TUK.Leaf10911
import TUK.Leaf10912
import TUK.Leaf10913
import TUK.Leaf10914
import TUK.Leaf10915
import TUK.Leaf10916
import TUK.Leaf10917
import TUK.Leaf10918
import TUK.Leaf10919
import TUK.Leaf10920
import TUK.Leaf10921
import TUK.Leaf10922
import TUK.Leaf10923
import TUK.Leaf10924
import TUK.Leaf10925
import TUK.Leaf10926
import TUK.Leaf10927
import TUK.Leaf10928
import TUK.Leaf10929
import TUK.Leaf10930
import TUK.Leaf10931
import TUK.Leaf10932
import TUK.Leaf10933
import TUK.Leaf10934
import TUK.Leaf10935
import TUK.Leaf10936
import TUK.Leaf10937
import TUK.Leaf10938
import TUK.Leaf10939
import TUK.Leaf10940
import TUK.Leaf10941
import TUK.Leaf10942
import TUK.Leaf10943
import TUK.Leaf10944
import TUK.Leaf10945
import TUK.Leaf10946
import TUK.Leaf10947
import TUK.Leaf10948
import TUK.Leaf10949
import TUK.Leaf10950
import TUK.Leaf10951
import TUK.Leaf10952
import TUK.Leaf10953
import TUK.Leaf10954
import TUK.Leaf10955
import TUK.Leaf10956
import TUK.Leaf10957
import TUK.Leaf10958
import TUK.Leaf10959
import TUK.Leaf10960
import TUK.Leaf10961
import TUK.Leaf10962
import TUK.Leaf10963
import TUK.Leaf10964
import TUK.Leaf10965
import TUK.Leaf10966
import TUK.Leaf10967
import TUK.Leaf10968
import TUK.Leaf10969
import TUK.Leaf10970
import TUK.Leaf10971
import TUK.Leaf10972
import TUK.Leaf10973
import TUK.Leaf10974
import TUK.Leaf10975
import TUK.Leaf10976
import TUK.Leaf10977
import TUK.Leaf10978
import TUK.Leaf10979
import TUK.Leaf10980
import TUK.Leaf10981
import TUK.Leaf10982
import TUK.Leaf10983
import TUK.Leaf10984
import TUK.Leaf10985
import TUK.Leaf10986
import TUK.Leaf10987
import TUK.Leaf10988
import TUK.Leaf10989
import TUK.Leaf10990
import TUK.Leaf10991
import TUK.Leaf10992
import TUK.Leaf10993
import TUK.Leaf10994
import TUK.Leaf10995
import TUK.Leaf10996
import TUK.Leaf10997
import TUK.Leaf10998
import TUK.Leaf10999

/-! Leaves 10900 .. 10999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_109 : ∀ j < 100, 100 * 109 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 109 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_10900
  | 1, _, _ => exact leaf_10901
  | 2, _, _ => exact leaf_10902
  | 3, _, _ => exact leaf_10903
  | 4, _, _ => exact leaf_10904
  | 5, _, _ => exact leaf_10905
  | 6, _, _ => exact leaf_10906
  | 7, _, _ => exact leaf_10907
  | 8, _, _ => exact leaf_10908
  | 9, _, _ => exact leaf_10909
  | 10, _, _ => exact leaf_10910
  | 11, _, _ => exact leaf_10911
  | 12, _, _ => exact leaf_10912
  | 13, _, _ => exact leaf_10913
  | 14, _, _ => exact leaf_10914
  | 15, _, _ => exact leaf_10915
  | 16, _, _ => exact leaf_10916
  | 17, _, _ => exact leaf_10917
  | 18, _, _ => exact leaf_10918
  | 19, _, _ => exact leaf_10919
  | 20, _, _ => exact leaf_10920
  | 21, _, _ => exact leaf_10921
  | 22, _, _ => exact leaf_10922
  | 23, _, _ => exact leaf_10923
  | 24, _, _ => exact leaf_10924
  | 25, _, _ => exact leaf_10925
  | 26, _, _ => exact leaf_10926
  | 27, _, _ => exact leaf_10927
  | 28, _, _ => exact leaf_10928
  | 29, _, _ => exact leaf_10929
  | 30, _, _ => exact leaf_10930
  | 31, _, _ => exact leaf_10931
  | 32, _, _ => exact leaf_10932
  | 33, _, _ => exact leaf_10933
  | 34, _, _ => exact leaf_10934
  | 35, _, _ => exact leaf_10935
  | 36, _, _ => exact leaf_10936
  | 37, _, _ => exact leaf_10937
  | 38, _, _ => exact leaf_10938
  | 39, _, _ => exact leaf_10939
  | 40, _, _ => exact leaf_10940
  | 41, _, _ => exact leaf_10941
  | 42, _, _ => exact leaf_10942
  | 43, _, _ => exact leaf_10943
  | 44, _, _ => exact leaf_10944
  | 45, _, _ => exact leaf_10945
  | 46, _, _ => exact leaf_10946
  | 47, _, _ => exact leaf_10947
  | 48, _, _ => exact leaf_10948
  | 49, _, _ => exact leaf_10949
  | 50, _, _ => exact leaf_10950
  | 51, _, _ => exact leaf_10951
  | 52, _, _ => exact leaf_10952
  | 53, _, _ => exact leaf_10953
  | 54, _, _ => exact leaf_10954
  | 55, _, _ => exact leaf_10955
  | 56, _, _ => exact leaf_10956
  | 57, _, _ => exact leaf_10957
  | 58, _, _ => exact leaf_10958
  | 59, _, _ => exact leaf_10959
  | 60, _, _ => exact leaf_10960
  | 61, _, _ => exact leaf_10961
  | 62, _, _ => exact leaf_10962
  | 63, _, _ => exact leaf_10963
  | 64, _, _ => exact leaf_10964
  | 65, _, _ => exact leaf_10965
  | 66, _, _ => exact leaf_10966
  | 67, _, _ => exact leaf_10967
  | 68, _, _ => exact leaf_10968
  | 69, _, _ => exact leaf_10969
  | 70, _, _ => exact leaf_10970
  | 71, _, _ => exact leaf_10971
  | 72, _, _ => exact leaf_10972
  | 73, _, _ => exact leaf_10973
  | 74, _, _ => exact leaf_10974
  | 75, _, _ => exact leaf_10975
  | 76, _, _ => exact leaf_10976
  | 77, _, _ => exact leaf_10977
  | 78, _, _ => exact leaf_10978
  | 79, _, _ => exact leaf_10979
  | 80, _, _ => exact leaf_10980
  | 81, _, _ => exact leaf_10981
  | 82, _, _ => exact leaf_10982
  | 83, _, _ => exact leaf_10983
  | 84, _, _ => exact leaf_10984
  | 85, _, _ => exact leaf_10985
  | 86, _, _ => exact leaf_10986
  | 87, _, _ => exact leaf_10987
  | 88, _, _ => exact leaf_10988
  | 89, _, _ => exact leaf_10989
  | 90, _, _ => exact leaf_10990
  | 91, _, _ => exact leaf_10991
  | 92, _, _ => exact leaf_10992
  | 93, _, _ => exact leaf_10993
  | 94, _, _ => exact leaf_10994
  | 95, _, _ => exact leaf_10995
  | 96, _, _ => exact leaf_10996
  | 97, _, _ => exact leaf_10997
  | 98, _, _ => exact leaf_10998
  | 99, _, _ => exact leaf_10999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
