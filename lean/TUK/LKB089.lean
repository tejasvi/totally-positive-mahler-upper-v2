import TUK.Leaf08900
import TUK.Leaf08901
import TUK.Leaf08902
import TUK.Leaf08903
import TUK.Leaf08904
import TUK.Leaf08905
import TUK.Leaf08906
import TUK.Leaf08907
import TUK.Leaf08908
import TUK.Leaf08909
import TUK.Leaf08910
import TUK.Leaf08911
import TUK.Leaf08912
import TUK.Leaf08913
import TUK.Leaf08914
import TUK.Leaf08915
import TUK.Leaf08916
import TUK.Leaf08917
import TUK.Leaf08918
import TUK.Leaf08919
import TUK.Leaf08920
import TUK.Leaf08921
import TUK.Leaf08922
import TUK.Leaf08923
import TUK.Leaf08924
import TUK.Leaf08925
import TUK.Leaf08926
import TUK.Leaf08927
import TUK.Leaf08928
import TUK.Leaf08929
import TUK.Leaf08930
import TUK.Leaf08931
import TUK.Leaf08932
import TUK.Leaf08933
import TUK.Leaf08934
import TUK.Leaf08935
import TUK.Leaf08936
import TUK.Leaf08937
import TUK.Leaf08938
import TUK.Leaf08939
import TUK.Leaf08940
import TUK.Leaf08941
import TUK.Leaf08942
import TUK.Leaf08943
import TUK.Leaf08944
import TUK.Leaf08945
import TUK.Leaf08946
import TUK.Leaf08947
import TUK.Leaf08948
import TUK.Leaf08949
import TUK.Leaf08950
import TUK.Leaf08951
import TUK.Leaf08952
import TUK.Leaf08953
import TUK.Leaf08954
import TUK.Leaf08955
import TUK.Leaf08956
import TUK.Leaf08957
import TUK.Leaf08958
import TUK.Leaf08959
import TUK.Leaf08960
import TUK.Leaf08961
import TUK.Leaf08962
import TUK.Leaf08963
import TUK.Leaf08964
import TUK.Leaf08965
import TUK.Leaf08966
import TUK.Leaf08967
import TUK.Leaf08968
import TUK.Leaf08969
import TUK.Leaf08970
import TUK.Leaf08971
import TUK.Leaf08972
import TUK.Leaf08973
import TUK.Leaf08974
import TUK.Leaf08975
import TUK.Leaf08976
import TUK.Leaf08977
import TUK.Leaf08978
import TUK.Leaf08979
import TUK.Leaf08980
import TUK.Leaf08981
import TUK.Leaf08982
import TUK.Leaf08983
import TUK.Leaf08984
import TUK.Leaf08985
import TUK.Leaf08986
import TUK.Leaf08987
import TUK.Leaf08988
import TUK.Leaf08989
import TUK.Leaf08990
import TUK.Leaf08991
import TUK.Leaf08992
import TUK.Leaf08993
import TUK.Leaf08994
import TUK.Leaf08995
import TUK.Leaf08996
import TUK.Leaf08997
import TUK.Leaf08998
import TUK.Leaf08999

/-! Leaves 8900 .. 8999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_89 : ∀ j < 100, 100 * 89 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 89 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_08900
  | 1, _, _ => exact leaf_08901
  | 2, _, _ => exact leaf_08902
  | 3, _, _ => exact leaf_08903
  | 4, _, _ => exact leaf_08904
  | 5, _, _ => exact leaf_08905
  | 6, _, _ => exact leaf_08906
  | 7, _, _ => exact leaf_08907
  | 8, _, _ => exact leaf_08908
  | 9, _, _ => exact leaf_08909
  | 10, _, _ => exact leaf_08910
  | 11, _, _ => exact leaf_08911
  | 12, _, _ => exact leaf_08912
  | 13, _, _ => exact leaf_08913
  | 14, _, _ => exact leaf_08914
  | 15, _, _ => exact leaf_08915
  | 16, _, _ => exact leaf_08916
  | 17, _, _ => exact leaf_08917
  | 18, _, _ => exact leaf_08918
  | 19, _, _ => exact leaf_08919
  | 20, _, _ => exact leaf_08920
  | 21, _, _ => exact leaf_08921
  | 22, _, _ => exact leaf_08922
  | 23, _, _ => exact leaf_08923
  | 24, _, _ => exact leaf_08924
  | 25, _, _ => exact leaf_08925
  | 26, _, _ => exact leaf_08926
  | 27, _, _ => exact leaf_08927
  | 28, _, _ => exact leaf_08928
  | 29, _, _ => exact leaf_08929
  | 30, _, _ => exact leaf_08930
  | 31, _, _ => exact leaf_08931
  | 32, _, _ => exact leaf_08932
  | 33, _, _ => exact leaf_08933
  | 34, _, _ => exact leaf_08934
  | 35, _, _ => exact leaf_08935
  | 36, _, _ => exact leaf_08936
  | 37, _, _ => exact leaf_08937
  | 38, _, _ => exact leaf_08938
  | 39, _, _ => exact leaf_08939
  | 40, _, _ => exact leaf_08940
  | 41, _, _ => exact leaf_08941
  | 42, _, _ => exact leaf_08942
  | 43, _, _ => exact leaf_08943
  | 44, _, _ => exact leaf_08944
  | 45, _, _ => exact leaf_08945
  | 46, _, _ => exact leaf_08946
  | 47, _, _ => exact leaf_08947
  | 48, _, _ => exact leaf_08948
  | 49, _, _ => exact leaf_08949
  | 50, _, _ => exact leaf_08950
  | 51, _, _ => exact leaf_08951
  | 52, _, _ => exact leaf_08952
  | 53, _, _ => exact leaf_08953
  | 54, _, _ => exact leaf_08954
  | 55, _, _ => exact leaf_08955
  | 56, _, _ => exact leaf_08956
  | 57, _, _ => exact leaf_08957
  | 58, _, _ => exact leaf_08958
  | 59, _, _ => exact leaf_08959
  | 60, _, _ => exact leaf_08960
  | 61, _, _ => exact leaf_08961
  | 62, _, _ => exact leaf_08962
  | 63, _, _ => exact leaf_08963
  | 64, _, _ => exact leaf_08964
  | 65, _, _ => exact leaf_08965
  | 66, _, _ => exact leaf_08966
  | 67, _, _ => exact leaf_08967
  | 68, _, _ => exact leaf_08968
  | 69, _, _ => exact leaf_08969
  | 70, _, _ => exact leaf_08970
  | 71, _, _ => exact leaf_08971
  | 72, _, _ => exact leaf_08972
  | 73, _, _ => exact leaf_08973
  | 74, _, _ => exact leaf_08974
  | 75, _, _ => exact leaf_08975
  | 76, _, _ => exact leaf_08976
  | 77, _, _ => exact leaf_08977
  | 78, _, _ => exact leaf_08978
  | 79, _, _ => exact leaf_08979
  | 80, _, _ => exact leaf_08980
  | 81, _, _ => exact leaf_08981
  | 82, _, _ => exact leaf_08982
  | 83, _, _ => exact leaf_08983
  | 84, _, _ => exact leaf_08984
  | 85, _, _ => exact leaf_08985
  | 86, _, _ => exact leaf_08986
  | 87, _, _ => exact leaf_08987
  | 88, _, _ => exact leaf_08988
  | 89, _, _ => exact leaf_08989
  | 90, _, _ => exact leaf_08990
  | 91, _, _ => exact leaf_08991
  | 92, _, _ => exact leaf_08992
  | 93, _, _ => exact leaf_08993
  | 94, _, _ => exact leaf_08994
  | 95, _, _ => exact leaf_08995
  | 96, _, _ => exact leaf_08996
  | 97, _, _ => exact leaf_08997
  | 98, _, _ => exact leaf_08998
  | 99, _, _ => exact leaf_08999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
