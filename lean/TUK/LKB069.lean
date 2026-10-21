import TUK.Leaf06900
import TUK.Leaf06901
import TUK.Leaf06902
import TUK.Leaf06903
import TUK.Leaf06904
import TUK.Leaf06905
import TUK.Leaf06906
import TUK.Leaf06907
import TUK.Leaf06908
import TUK.Leaf06909
import TUK.Leaf06910
import TUK.Leaf06911
import TUK.Leaf06912
import TUK.Leaf06913
import TUK.Leaf06914
import TUK.Leaf06915
import TUK.Leaf06916
import TUK.Leaf06917
import TUK.Leaf06918
import TUK.Leaf06919
import TUK.Leaf06920
import TUK.Leaf06921
import TUK.Leaf06922
import TUK.Leaf06923
import TUK.Leaf06924
import TUK.Leaf06925
import TUK.Leaf06926
import TUK.Leaf06927
import TUK.Leaf06928
import TUK.Leaf06929
import TUK.Leaf06930
import TUK.Leaf06931
import TUK.Leaf06932
import TUK.Leaf06933
import TUK.Leaf06934
import TUK.Leaf06935
import TUK.Leaf06936
import TUK.Leaf06937
import TUK.Leaf06938
import TUK.Leaf06939
import TUK.Leaf06940
import TUK.Leaf06941
import TUK.Leaf06942
import TUK.Leaf06943
import TUK.Leaf06944
import TUK.Leaf06945
import TUK.Leaf06946
import TUK.Leaf06947
import TUK.Leaf06948
import TUK.Leaf06949
import TUK.Leaf06950
import TUK.Leaf06951
import TUK.Leaf06952
import TUK.Leaf06953
import TUK.Leaf06954
import TUK.Leaf06955
import TUK.Leaf06956
import TUK.Leaf06957
import TUK.Leaf06958
import TUK.Leaf06959
import TUK.Leaf06960
import TUK.Leaf06961
import TUK.Leaf06962
import TUK.Leaf06963
import TUK.Leaf06964
import TUK.Leaf06965
import TUK.Leaf06966
import TUK.Leaf06967
import TUK.Leaf06968
import TUK.Leaf06969
import TUK.Leaf06970
import TUK.Leaf06971
import TUK.Leaf06972
import TUK.Leaf06973
import TUK.Leaf06974
import TUK.Leaf06975
import TUK.Leaf06976
import TUK.Leaf06977
import TUK.Leaf06978
import TUK.Leaf06979
import TUK.Leaf06980
import TUK.Leaf06981
import TUK.Leaf06982
import TUK.Leaf06983
import TUK.Leaf06984
import TUK.Leaf06985
import TUK.Leaf06986
import TUK.Leaf06987
import TUK.Leaf06988
import TUK.Leaf06989
import TUK.Leaf06990
import TUK.Leaf06991
import TUK.Leaf06992
import TUK.Leaf06993
import TUK.Leaf06994
import TUK.Leaf06995
import TUK.Leaf06996
import TUK.Leaf06997
import TUK.Leaf06998
import TUK.Leaf06999

/-! Leaves 6900 .. 6999 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_69 : ∀ j < 100, 100 * 69 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 69 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_06900
  | 1, _, _ => exact leaf_06901
  | 2, _, _ => exact leaf_06902
  | 3, _, _ => exact leaf_06903
  | 4, _, _ => exact leaf_06904
  | 5, _, _ => exact leaf_06905
  | 6, _, _ => exact leaf_06906
  | 7, _, _ => exact leaf_06907
  | 8, _, _ => exact leaf_06908
  | 9, _, _ => exact leaf_06909
  | 10, _, _ => exact leaf_06910
  | 11, _, _ => exact leaf_06911
  | 12, _, _ => exact leaf_06912
  | 13, _, _ => exact leaf_06913
  | 14, _, _ => exact leaf_06914
  | 15, _, _ => exact leaf_06915
  | 16, _, _ => exact leaf_06916
  | 17, _, _ => exact leaf_06917
  | 18, _, _ => exact leaf_06918
  | 19, _, _ => exact leaf_06919
  | 20, _, _ => exact leaf_06920
  | 21, _, _ => exact leaf_06921
  | 22, _, _ => exact leaf_06922
  | 23, _, _ => exact leaf_06923
  | 24, _, _ => exact leaf_06924
  | 25, _, _ => exact leaf_06925
  | 26, _, _ => exact leaf_06926
  | 27, _, _ => exact leaf_06927
  | 28, _, _ => exact leaf_06928
  | 29, _, _ => exact leaf_06929
  | 30, _, _ => exact leaf_06930
  | 31, _, _ => exact leaf_06931
  | 32, _, _ => exact leaf_06932
  | 33, _, _ => exact leaf_06933
  | 34, _, _ => exact leaf_06934
  | 35, _, _ => exact leaf_06935
  | 36, _, _ => exact leaf_06936
  | 37, _, _ => exact leaf_06937
  | 38, _, _ => exact leaf_06938
  | 39, _, _ => exact leaf_06939
  | 40, _, _ => exact leaf_06940
  | 41, _, _ => exact leaf_06941
  | 42, _, _ => exact leaf_06942
  | 43, _, _ => exact leaf_06943
  | 44, _, _ => exact leaf_06944
  | 45, _, _ => exact leaf_06945
  | 46, _, _ => exact leaf_06946
  | 47, _, _ => exact leaf_06947
  | 48, _, _ => exact leaf_06948
  | 49, _, _ => exact leaf_06949
  | 50, _, _ => exact leaf_06950
  | 51, _, _ => exact leaf_06951
  | 52, _, _ => exact leaf_06952
  | 53, _, _ => exact leaf_06953
  | 54, _, _ => exact leaf_06954
  | 55, _, _ => exact leaf_06955
  | 56, _, _ => exact leaf_06956
  | 57, _, _ => exact leaf_06957
  | 58, _, _ => exact leaf_06958
  | 59, _, _ => exact leaf_06959
  | 60, _, _ => exact leaf_06960
  | 61, _, _ => exact leaf_06961
  | 62, _, _ => exact leaf_06962
  | 63, _, _ => exact leaf_06963
  | 64, _, _ => exact leaf_06964
  | 65, _, _ => exact leaf_06965
  | 66, _, _ => exact leaf_06966
  | 67, _, _ => exact leaf_06967
  | 68, _, _ => exact leaf_06968
  | 69, _, _ => exact leaf_06969
  | 70, _, _ => exact leaf_06970
  | 71, _, _ => exact leaf_06971
  | 72, _, _ => exact leaf_06972
  | 73, _, _ => exact leaf_06973
  | 74, _, _ => exact leaf_06974
  | 75, _, _ => exact leaf_06975
  | 76, _, _ => exact leaf_06976
  | 77, _, _ => exact leaf_06977
  | 78, _, _ => exact leaf_06978
  | 79, _, _ => exact leaf_06979
  | 80, _, _ => exact leaf_06980
  | 81, _, _ => exact leaf_06981
  | 82, _, _ => exact leaf_06982
  | 83, _, _ => exact leaf_06983
  | 84, _, _ => exact leaf_06984
  | 85, _, _ => exact leaf_06985
  | 86, _, _ => exact leaf_06986
  | 87, _, _ => exact leaf_06987
  | 88, _, _ => exact leaf_06988
  | 89, _, _ => exact leaf_06989
  | 90, _, _ => exact leaf_06990
  | 91, _, _ => exact leaf_06991
  | 92, _, _ => exact leaf_06992
  | 93, _, _ => exact leaf_06993
  | 94, _, _ => exact leaf_06994
  | 95, _, _ => exact leaf_06995
  | 96, _, _ => exact leaf_06996
  | 97, _, _ => exact leaf_06997
  | 98, _, _ => exact leaf_06998
  | 99, _, _ => exact leaf_06999
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
