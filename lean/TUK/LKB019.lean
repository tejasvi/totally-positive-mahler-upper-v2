import TUK.Leaf01900
import TUK.Leaf01901
import TUK.Leaf01902
import TUK.Leaf01903
import TUK.Leaf01904
import TUK.Leaf01905
import TUK.Leaf01906
import TUK.Leaf01907
import TUK.Leaf01908
import TUK.Leaf01909
import TUK.Leaf01910
import TUK.Leaf01911
import TUK.Leaf01912
import TUK.Leaf01913
import TUK.Leaf01914
import TUK.Leaf01915
import TUK.Leaf01916
import TUK.Leaf01917
import TUK.Leaf01918
import TUK.Leaf01919
import TUK.Leaf01920
import TUK.Leaf01921
import TUK.Leaf01922
import TUK.Leaf01923
import TUK.Leaf01924
import TUK.Leaf01925
import TUK.Leaf01926
import TUK.Leaf01927
import TUK.Leaf01928
import TUK.Leaf01929
import TUK.Leaf01930
import TUK.Leaf01931
import TUK.Leaf01932
import TUK.Leaf01933
import TUK.Leaf01934
import TUK.Leaf01935
import TUK.Leaf01936
import TUK.Leaf01937
import TUK.Leaf01938
import TUK.Leaf01939
import TUK.Leaf01940
import TUK.Leaf01941
import TUK.Leaf01942
import TUK.Leaf01943
import TUK.Leaf01944
import TUK.Leaf01945
import TUK.Leaf01946
import TUK.Leaf01947
import TUK.Leaf01948
import TUK.Leaf01949
import TUK.Leaf01950
import TUK.Leaf01951
import TUK.Leaf01952
import TUK.Leaf01953
import TUK.Leaf01954
import TUK.Leaf01955
import TUK.Leaf01956
import TUK.Leaf01957
import TUK.Leaf01958
import TUK.Leaf01959
import TUK.Leaf01960
import TUK.Leaf01961
import TUK.Leaf01962
import TUK.Leaf01963
import TUK.Leaf01964
import TUK.Leaf01965
import TUK.Leaf01966
import TUK.Leaf01967
import TUK.Leaf01968
import TUK.Leaf01969
import TUK.Leaf01970
import TUK.Leaf01971
import TUK.Leaf01972
import TUK.Leaf01973
import TUK.Leaf01974
import TUK.Leaf01975
import TUK.Leaf01976
import TUK.Leaf01977
import TUK.Leaf01978
import TUK.Leaf01979
import TUK.Leaf01980
import TUK.Leaf01981
import TUK.Leaf01982
import TUK.Leaf01983
import TUK.Leaf01984
import TUK.Leaf01985
import TUK.Leaf01986
import TUK.Leaf01987
import TUK.Leaf01988
import TUK.Leaf01989
import TUK.Leaf01990
import TUK.Leaf01991
import TUK.Leaf01992
import TUK.Leaf01993
import TUK.Leaf01994
import TUK.Leaf01995
import TUK.Leaf01996
import TUK.Leaf01997
import TUK.Leaf01998
import TUK.Leaf01999

/-! Leaves 1900 .. 1999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_19 : ∀ j < 100, 100 * 19 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 19 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_01900
  | 1, _, _ => exact leaf_01901
  | 2, _, _ => exact leaf_01902
  | 3, _, _ => exact leaf_01903
  | 4, _, _ => exact leaf_01904
  | 5, _, _ => exact leaf_01905
  | 6, _, _ => exact leaf_01906
  | 7, _, _ => exact leaf_01907
  | 8, _, _ => exact leaf_01908
  | 9, _, _ => exact leaf_01909
  | 10, _, _ => exact leaf_01910
  | 11, _, _ => exact leaf_01911
  | 12, _, _ => exact leaf_01912
  | 13, _, _ => exact leaf_01913
  | 14, _, _ => exact leaf_01914
  | 15, _, _ => exact leaf_01915
  | 16, _, _ => exact leaf_01916
  | 17, _, _ => exact leaf_01917
  | 18, _, _ => exact leaf_01918
  | 19, _, _ => exact leaf_01919
  | 20, _, _ => exact leaf_01920
  | 21, _, _ => exact leaf_01921
  | 22, _, _ => exact leaf_01922
  | 23, _, _ => exact leaf_01923
  | 24, _, _ => exact leaf_01924
  | 25, _, _ => exact leaf_01925
  | 26, _, _ => exact leaf_01926
  | 27, _, _ => exact leaf_01927
  | 28, _, _ => exact leaf_01928
  | 29, _, _ => exact leaf_01929
  | 30, _, _ => exact leaf_01930
  | 31, _, _ => exact leaf_01931
  | 32, _, _ => exact leaf_01932
  | 33, _, _ => exact leaf_01933
  | 34, _, _ => exact leaf_01934
  | 35, _, _ => exact leaf_01935
  | 36, _, _ => exact leaf_01936
  | 37, _, _ => exact leaf_01937
  | 38, _, _ => exact leaf_01938
  | 39, _, _ => exact leaf_01939
  | 40, _, _ => exact leaf_01940
  | 41, _, _ => exact leaf_01941
  | 42, _, _ => exact leaf_01942
  | 43, _, _ => exact leaf_01943
  | 44, _, _ => exact leaf_01944
  | 45, _, _ => exact leaf_01945
  | 46, _, _ => exact leaf_01946
  | 47, _, _ => exact leaf_01947
  | 48, _, _ => exact leaf_01948
  | 49, _, _ => exact leaf_01949
  | 50, _, _ => exact leaf_01950
  | 51, _, _ => exact leaf_01951
  | 52, _, _ => exact leaf_01952
  | 53, _, _ => exact leaf_01953
  | 54, _, _ => exact leaf_01954
  | 55, _, _ => exact leaf_01955
  | 56, _, _ => exact leaf_01956
  | 57, _, _ => exact leaf_01957
  | 58, _, _ => exact leaf_01958
  | 59, _, _ => exact leaf_01959
  | 60, _, _ => exact leaf_01960
  | 61, _, _ => exact leaf_01961
  | 62, _, _ => exact leaf_01962
  | 63, _, _ => exact leaf_01963
  | 64, _, _ => exact leaf_01964
  | 65, _, _ => exact leaf_01965
  | 66, _, _ => exact leaf_01966
  | 67, _, _ => exact leaf_01967
  | 68, _, _ => exact leaf_01968
  | 69, _, _ => exact leaf_01969
  | 70, _, _ => exact leaf_01970
  | 71, _, _ => exact leaf_01971
  | 72, _, _ => exact leaf_01972
  | 73, _, _ => exact leaf_01973
  | 74, _, _ => exact leaf_01974
  | 75, _, _ => exact leaf_01975
  | 76, _, _ => exact leaf_01976
  | 77, _, _ => exact leaf_01977
  | 78, _, _ => exact leaf_01978
  | 79, _, _ => exact leaf_01979
  | 80, _, _ => exact leaf_01980
  | 81, _, _ => exact leaf_01981
  | 82, _, _ => exact leaf_01982
  | 83, _, _ => exact leaf_01983
  | 84, _, _ => exact leaf_01984
  | 85, _, _ => exact leaf_01985
  | 86, _, _ => exact leaf_01986
  | 87, _, _ => exact leaf_01987
  | 88, _, _ => exact leaf_01988
  | 89, _, _ => exact leaf_01989
  | 90, _, _ => exact leaf_01990
  | 91, _, _ => exact leaf_01991
  | 92, _, _ => exact leaf_01992
  | 93, _, _ => exact leaf_01993
  | 94, _, _ => exact leaf_01994
  | 95, _, _ => exact leaf_01995
  | 96, _, _ => exact leaf_01996
  | 97, _, _ => exact leaf_01997
  | 98, _, _ => exact leaf_01998
  | 99, _, _ => exact leaf_01999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
