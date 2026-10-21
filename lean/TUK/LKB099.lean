import TUK.Leaf09900
import TUK.Leaf09901
import TUK.Leaf09902
import TUK.Leaf09903
import TUK.Leaf09904
import TUK.Leaf09905
import TUK.Leaf09906
import TUK.Leaf09907
import TUK.Leaf09908
import TUK.Leaf09909
import TUK.Leaf09910
import TUK.Leaf09911
import TUK.Leaf09912
import TUK.Leaf09913
import TUK.Leaf09914
import TUK.Leaf09915
import TUK.Leaf09916
import TUK.Leaf09917
import TUK.Leaf09918
import TUK.Leaf09919
import TUK.Leaf09920
import TUK.Leaf09921
import TUK.Leaf09922
import TUK.Leaf09923
import TUK.Leaf09924
import TUK.Leaf09925
import TUK.Leaf09926
import TUK.Leaf09927
import TUK.Leaf09928
import TUK.Leaf09929
import TUK.Leaf09930
import TUK.Leaf09931
import TUK.Leaf09932
import TUK.Leaf09933
import TUK.Leaf09934
import TUK.Leaf09935
import TUK.Leaf09936
import TUK.Leaf09937
import TUK.Leaf09938
import TUK.Leaf09939
import TUK.Leaf09940
import TUK.Leaf09941
import TUK.Leaf09942
import TUK.Leaf09943
import TUK.Leaf09944
import TUK.Leaf09945
import TUK.Leaf09946
import TUK.Leaf09947
import TUK.Leaf09948
import TUK.Leaf09949
import TUK.Leaf09950
import TUK.Leaf09951
import TUK.Leaf09952
import TUK.Leaf09953
import TUK.Leaf09954
import TUK.Leaf09955
import TUK.Leaf09956
import TUK.Leaf09957
import TUK.Leaf09958
import TUK.Leaf09959
import TUK.Leaf09960
import TUK.Leaf09961
import TUK.Leaf09962
import TUK.Leaf09963
import TUK.Leaf09964
import TUK.Leaf09965
import TUK.Leaf09966
import TUK.Leaf09967
import TUK.Leaf09968
import TUK.Leaf09969
import TUK.Leaf09970
import TUK.Leaf09971
import TUK.Leaf09972
import TUK.Leaf09973
import TUK.Leaf09974
import TUK.Leaf09975
import TUK.Leaf09976
import TUK.Leaf09977
import TUK.Leaf09978
import TUK.Leaf09979
import TUK.Leaf09980
import TUK.Leaf09981
import TUK.Leaf09982
import TUK.Leaf09983
import TUK.Leaf09984
import TUK.Leaf09985
import TUK.Leaf09986
import TUK.Leaf09987
import TUK.Leaf09988
import TUK.Leaf09989
import TUK.Leaf09990
import TUK.Leaf09991
import TUK.Leaf09992
import TUK.Leaf09993
import TUK.Leaf09994
import TUK.Leaf09995
import TUK.Leaf09996
import TUK.Leaf09997
import TUK.Leaf09998
import TUK.Leaf09999

/-! Leaves 9900 .. 9999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_99 : ∀ j < 100, 100 * 99 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 99 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_09900
  | 1, _, _ => exact leaf_09901
  | 2, _, _ => exact leaf_09902
  | 3, _, _ => exact leaf_09903
  | 4, _, _ => exact leaf_09904
  | 5, _, _ => exact leaf_09905
  | 6, _, _ => exact leaf_09906
  | 7, _, _ => exact leaf_09907
  | 8, _, _ => exact leaf_09908
  | 9, _, _ => exact leaf_09909
  | 10, _, _ => exact leaf_09910
  | 11, _, _ => exact leaf_09911
  | 12, _, _ => exact leaf_09912
  | 13, _, _ => exact leaf_09913
  | 14, _, _ => exact leaf_09914
  | 15, _, _ => exact leaf_09915
  | 16, _, _ => exact leaf_09916
  | 17, _, _ => exact leaf_09917
  | 18, _, _ => exact leaf_09918
  | 19, _, _ => exact leaf_09919
  | 20, _, _ => exact leaf_09920
  | 21, _, _ => exact leaf_09921
  | 22, _, _ => exact leaf_09922
  | 23, _, _ => exact leaf_09923
  | 24, _, _ => exact leaf_09924
  | 25, _, _ => exact leaf_09925
  | 26, _, _ => exact leaf_09926
  | 27, _, _ => exact leaf_09927
  | 28, _, _ => exact leaf_09928
  | 29, _, _ => exact leaf_09929
  | 30, _, _ => exact leaf_09930
  | 31, _, _ => exact leaf_09931
  | 32, _, _ => exact leaf_09932
  | 33, _, _ => exact leaf_09933
  | 34, _, _ => exact leaf_09934
  | 35, _, _ => exact leaf_09935
  | 36, _, _ => exact leaf_09936
  | 37, _, _ => exact leaf_09937
  | 38, _, _ => exact leaf_09938
  | 39, _, _ => exact leaf_09939
  | 40, _, _ => exact leaf_09940
  | 41, _, _ => exact leaf_09941
  | 42, _, _ => exact leaf_09942
  | 43, _, _ => exact leaf_09943
  | 44, _, _ => exact leaf_09944
  | 45, _, _ => exact leaf_09945
  | 46, _, _ => exact leaf_09946
  | 47, _, _ => exact leaf_09947
  | 48, _, _ => exact leaf_09948
  | 49, _, _ => exact leaf_09949
  | 50, _, _ => exact leaf_09950
  | 51, _, _ => exact leaf_09951
  | 52, _, _ => exact leaf_09952
  | 53, _, _ => exact leaf_09953
  | 54, _, _ => exact leaf_09954
  | 55, _, _ => exact leaf_09955
  | 56, _, _ => exact leaf_09956
  | 57, _, _ => exact leaf_09957
  | 58, _, _ => exact leaf_09958
  | 59, _, _ => exact leaf_09959
  | 60, _, _ => exact leaf_09960
  | 61, _, _ => exact leaf_09961
  | 62, _, _ => exact leaf_09962
  | 63, _, _ => exact leaf_09963
  | 64, _, _ => exact leaf_09964
  | 65, _, _ => exact leaf_09965
  | 66, _, _ => exact leaf_09966
  | 67, _, _ => exact leaf_09967
  | 68, _, _ => exact leaf_09968
  | 69, _, _ => exact leaf_09969
  | 70, _, _ => exact leaf_09970
  | 71, _, _ => exact leaf_09971
  | 72, _, _ => exact leaf_09972
  | 73, _, _ => exact leaf_09973
  | 74, _, _ => exact leaf_09974
  | 75, _, _ => exact leaf_09975
  | 76, _, _ => exact leaf_09976
  | 77, _, _ => exact leaf_09977
  | 78, _, _ => exact leaf_09978
  | 79, _, _ => exact leaf_09979
  | 80, _, _ => exact leaf_09980
  | 81, _, _ => exact leaf_09981
  | 82, _, _ => exact leaf_09982
  | 83, _, _ => exact leaf_09983
  | 84, _, _ => exact leaf_09984
  | 85, _, _ => exact leaf_09985
  | 86, _, _ => exact leaf_09986
  | 87, _, _ => exact leaf_09987
  | 88, _, _ => exact leaf_09988
  | 89, _, _ => exact leaf_09989
  | 90, _, _ => exact leaf_09990
  | 91, _, _ => exact leaf_09991
  | 92, _, _ => exact leaf_09992
  | 93, _, _ => exact leaf_09993
  | 94, _, _ => exact leaf_09994
  | 95, _, _ => exact leaf_09995
  | 96, _, _ => exact leaf_09996
  | 97, _, _ => exact leaf_09997
  | 98, _, _ => exact leaf_09998
  | 99, _, _ => exact leaf_09999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
