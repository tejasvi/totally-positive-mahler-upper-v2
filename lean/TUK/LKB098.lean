import TUK.Leaf09800
import TUK.Leaf09801
import TUK.Leaf09802
import TUK.Leaf09803
import TUK.Leaf09804
import TUK.Leaf09805
import TUK.Leaf09806
import TUK.Leaf09807
import TUK.Leaf09808
import TUK.Leaf09809
import TUK.Leaf09810
import TUK.Leaf09811
import TUK.Leaf09812
import TUK.Leaf09813
import TUK.Leaf09814
import TUK.Leaf09815
import TUK.Leaf09816
import TUK.Leaf09817
import TUK.Leaf09818
import TUK.Leaf09819
import TUK.Leaf09820
import TUK.Leaf09821
import TUK.Leaf09822
import TUK.Leaf09823
import TUK.Leaf09824
import TUK.Leaf09825
import TUK.Leaf09826
import TUK.Leaf09827
import TUK.Leaf09828
import TUK.Leaf09829
import TUK.Leaf09830
import TUK.Leaf09831
import TUK.Leaf09832
import TUK.Leaf09833
import TUK.Leaf09834
import TUK.Leaf09835
import TUK.Leaf09836
import TUK.Leaf09837
import TUK.Leaf09838
import TUK.Leaf09839
import TUK.Leaf09840
import TUK.Leaf09841
import TUK.Leaf09842
import TUK.Leaf09843
import TUK.Leaf09844
import TUK.Leaf09845
import TUK.Leaf09846
import TUK.Leaf09847
import TUK.Leaf09848
import TUK.Leaf09849
import TUK.Leaf09850
import TUK.Leaf09851
import TUK.Leaf09852
import TUK.Leaf09853
import TUK.Leaf09854
import TUK.Leaf09855
import TUK.Leaf09856
import TUK.Leaf09857
import TUK.Leaf09858
import TUK.Leaf09859
import TUK.Leaf09860
import TUK.Leaf09861
import TUK.Leaf09862
import TUK.Leaf09863
import TUK.Leaf09864
import TUK.Leaf09865
import TUK.Leaf09866
import TUK.Leaf09867
import TUK.Leaf09868
import TUK.Leaf09869
import TUK.Leaf09870
import TUK.Leaf09871
import TUK.Leaf09872
import TUK.Leaf09873
import TUK.Leaf09874
import TUK.Leaf09875
import TUK.Leaf09876
import TUK.Leaf09877
import TUK.Leaf09878
import TUK.Leaf09879
import TUK.Leaf09880
import TUK.Leaf09881
import TUK.Leaf09882
import TUK.Leaf09883
import TUK.Leaf09884
import TUK.Leaf09885
import TUK.Leaf09886
import TUK.Leaf09887
import TUK.Leaf09888
import TUK.Leaf09889
import TUK.Leaf09890
import TUK.Leaf09891
import TUK.Leaf09892
import TUK.Leaf09893
import TUK.Leaf09894
import TUK.Leaf09895
import TUK.Leaf09896
import TUK.Leaf09897
import TUK.Leaf09898
import TUK.Leaf09899

/-! Leaves 9800 .. 9899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_98 : ∀ j < 100, 100 * 98 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 98 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_09800
  | 1, _, _ => exact leaf_09801
  | 2, _, _ => exact leaf_09802
  | 3, _, _ => exact leaf_09803
  | 4, _, _ => exact leaf_09804
  | 5, _, _ => exact leaf_09805
  | 6, _, _ => exact leaf_09806
  | 7, _, _ => exact leaf_09807
  | 8, _, _ => exact leaf_09808
  | 9, _, _ => exact leaf_09809
  | 10, _, _ => exact leaf_09810
  | 11, _, _ => exact leaf_09811
  | 12, _, _ => exact leaf_09812
  | 13, _, _ => exact leaf_09813
  | 14, _, _ => exact leaf_09814
  | 15, _, _ => exact leaf_09815
  | 16, _, _ => exact leaf_09816
  | 17, _, _ => exact leaf_09817
  | 18, _, _ => exact leaf_09818
  | 19, _, _ => exact leaf_09819
  | 20, _, _ => exact leaf_09820
  | 21, _, _ => exact leaf_09821
  | 22, _, _ => exact leaf_09822
  | 23, _, _ => exact leaf_09823
  | 24, _, _ => exact leaf_09824
  | 25, _, _ => exact leaf_09825
  | 26, _, _ => exact leaf_09826
  | 27, _, _ => exact leaf_09827
  | 28, _, _ => exact leaf_09828
  | 29, _, _ => exact leaf_09829
  | 30, _, _ => exact leaf_09830
  | 31, _, _ => exact leaf_09831
  | 32, _, _ => exact leaf_09832
  | 33, _, _ => exact leaf_09833
  | 34, _, _ => exact leaf_09834
  | 35, _, _ => exact leaf_09835
  | 36, _, _ => exact leaf_09836
  | 37, _, _ => exact leaf_09837
  | 38, _, _ => exact leaf_09838
  | 39, _, _ => exact leaf_09839
  | 40, _, _ => exact leaf_09840
  | 41, _, _ => exact leaf_09841
  | 42, _, _ => exact leaf_09842
  | 43, _, _ => exact leaf_09843
  | 44, _, _ => exact leaf_09844
  | 45, _, _ => exact leaf_09845
  | 46, _, _ => exact leaf_09846
  | 47, _, _ => exact leaf_09847
  | 48, _, _ => exact leaf_09848
  | 49, _, _ => exact leaf_09849
  | 50, _, _ => exact leaf_09850
  | 51, _, _ => exact leaf_09851
  | 52, _, _ => exact leaf_09852
  | 53, _, _ => exact leaf_09853
  | 54, _, _ => exact leaf_09854
  | 55, _, _ => exact leaf_09855
  | 56, _, _ => exact leaf_09856
  | 57, _, _ => exact leaf_09857
  | 58, _, _ => exact leaf_09858
  | 59, _, _ => exact leaf_09859
  | 60, _, _ => exact leaf_09860
  | 61, _, _ => exact leaf_09861
  | 62, _, _ => exact leaf_09862
  | 63, _, _ => exact leaf_09863
  | 64, _, _ => exact leaf_09864
  | 65, _, _ => exact leaf_09865
  | 66, _, _ => exact leaf_09866
  | 67, _, _ => exact leaf_09867
  | 68, _, _ => exact leaf_09868
  | 69, _, _ => exact leaf_09869
  | 70, _, _ => exact leaf_09870
  | 71, _, _ => exact leaf_09871
  | 72, _, _ => exact leaf_09872
  | 73, _, _ => exact leaf_09873
  | 74, _, _ => exact leaf_09874
  | 75, _, _ => exact leaf_09875
  | 76, _, _ => exact leaf_09876
  | 77, _, _ => exact leaf_09877
  | 78, _, _ => exact leaf_09878
  | 79, _, _ => exact leaf_09879
  | 80, _, _ => exact leaf_09880
  | 81, _, _ => exact leaf_09881
  | 82, _, _ => exact leaf_09882
  | 83, _, _ => exact leaf_09883
  | 84, _, _ => exact leaf_09884
  | 85, _, _ => exact leaf_09885
  | 86, _, _ => exact leaf_09886
  | 87, _, _ => exact leaf_09887
  | 88, _, _ => exact leaf_09888
  | 89, _, _ => exact leaf_09889
  | 90, _, _ => exact leaf_09890
  | 91, _, _ => exact leaf_09891
  | 92, _, _ => exact leaf_09892
  | 93, _, _ => exact leaf_09893
  | 94, _, _ => exact leaf_09894
  | 95, _, _ => exact leaf_09895
  | 96, _, _ => exact leaf_09896
  | 97, _, _ => exact leaf_09897
  | 98, _, _ => exact leaf_09898
  | 99, _, _ => exact leaf_09899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
