import TUK.Leaf02800
import TUK.Leaf02801
import TUK.Leaf02802
import TUK.Leaf02803
import TUK.Leaf02804
import TUK.Leaf02805
import TUK.Leaf02806
import TUK.Leaf02807
import TUK.Leaf02808
import TUK.Leaf02809
import TUK.Leaf02810
import TUK.Leaf02811
import TUK.Leaf02812
import TUK.Leaf02813
import TUK.Leaf02814
import TUK.Leaf02815
import TUK.Leaf02816
import TUK.Leaf02817
import TUK.Leaf02818
import TUK.Leaf02819
import TUK.Leaf02820
import TUK.Leaf02821
import TUK.Leaf02822
import TUK.Leaf02823
import TUK.Leaf02824
import TUK.Leaf02825
import TUK.Leaf02826
import TUK.Leaf02827
import TUK.Leaf02828
import TUK.Leaf02829
import TUK.Leaf02830
import TUK.Leaf02831
import TUK.Leaf02832
import TUK.Leaf02833
import TUK.Leaf02834
import TUK.Leaf02835
import TUK.Leaf02836
import TUK.Leaf02837
import TUK.Leaf02838
import TUK.Leaf02839
import TUK.Leaf02840
import TUK.Leaf02841
import TUK.Leaf02842
import TUK.Leaf02843
import TUK.Leaf02844
import TUK.Leaf02845
import TUK.Leaf02846
import TUK.Leaf02847
import TUK.Leaf02848
import TUK.Leaf02849
import TUK.Leaf02850
import TUK.Leaf02851
import TUK.Leaf02852
import TUK.Leaf02853
import TUK.Leaf02854
import TUK.Leaf02855
import TUK.Leaf02856
import TUK.Leaf02857
import TUK.Leaf02858
import TUK.Leaf02859
import TUK.Leaf02860
import TUK.Leaf02861
import TUK.Leaf02862
import TUK.Leaf02863
import TUK.Leaf02864
import TUK.Leaf02865
import TUK.Leaf02866
import TUK.Leaf02867
import TUK.Leaf02868
import TUK.Leaf02869
import TUK.Leaf02870
import TUK.Leaf02871
import TUK.Leaf02872
import TUK.Leaf02873
import TUK.Leaf02874
import TUK.Leaf02875
import TUK.Leaf02876
import TUK.Leaf02877
import TUK.Leaf02878
import TUK.Leaf02879
import TUK.Leaf02880
import TUK.Leaf02881
import TUK.Leaf02882
import TUK.Leaf02883
import TUK.Leaf02884
import TUK.Leaf02885
import TUK.Leaf02886
import TUK.Leaf02887
import TUK.Leaf02888
import TUK.Leaf02889
import TUK.Leaf02890
import TUK.Leaf02891
import TUK.Leaf02892
import TUK.Leaf02893
import TUK.Leaf02894
import TUK.Leaf02895
import TUK.Leaf02896
import TUK.Leaf02897
import TUK.Leaf02898
import TUK.Leaf02899

/-! Leaves 2800 .. 2899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_28 : ∀ j < 100, 100 * 28 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 28 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_02800
  | 1, _, _ => exact leaf_02801
  | 2, _, _ => exact leaf_02802
  | 3, _, _ => exact leaf_02803
  | 4, _, _ => exact leaf_02804
  | 5, _, _ => exact leaf_02805
  | 6, _, _ => exact leaf_02806
  | 7, _, _ => exact leaf_02807
  | 8, _, _ => exact leaf_02808
  | 9, _, _ => exact leaf_02809
  | 10, _, _ => exact leaf_02810
  | 11, _, _ => exact leaf_02811
  | 12, _, _ => exact leaf_02812
  | 13, _, _ => exact leaf_02813
  | 14, _, _ => exact leaf_02814
  | 15, _, _ => exact leaf_02815
  | 16, _, _ => exact leaf_02816
  | 17, _, _ => exact leaf_02817
  | 18, _, _ => exact leaf_02818
  | 19, _, _ => exact leaf_02819
  | 20, _, _ => exact leaf_02820
  | 21, _, _ => exact leaf_02821
  | 22, _, _ => exact leaf_02822
  | 23, _, _ => exact leaf_02823
  | 24, _, _ => exact leaf_02824
  | 25, _, _ => exact leaf_02825
  | 26, _, _ => exact leaf_02826
  | 27, _, _ => exact leaf_02827
  | 28, _, _ => exact leaf_02828
  | 29, _, _ => exact leaf_02829
  | 30, _, _ => exact leaf_02830
  | 31, _, _ => exact leaf_02831
  | 32, _, _ => exact leaf_02832
  | 33, _, _ => exact leaf_02833
  | 34, _, _ => exact leaf_02834
  | 35, _, _ => exact leaf_02835
  | 36, _, _ => exact leaf_02836
  | 37, _, _ => exact leaf_02837
  | 38, _, _ => exact leaf_02838
  | 39, _, _ => exact leaf_02839
  | 40, _, _ => exact leaf_02840
  | 41, _, _ => exact leaf_02841
  | 42, _, _ => exact leaf_02842
  | 43, _, _ => exact leaf_02843
  | 44, _, _ => exact leaf_02844
  | 45, _, _ => exact leaf_02845
  | 46, _, _ => exact leaf_02846
  | 47, _, _ => exact leaf_02847
  | 48, _, _ => exact leaf_02848
  | 49, _, _ => exact leaf_02849
  | 50, _, _ => exact leaf_02850
  | 51, _, _ => exact leaf_02851
  | 52, _, _ => exact leaf_02852
  | 53, _, _ => exact leaf_02853
  | 54, _, _ => exact leaf_02854
  | 55, _, _ => exact leaf_02855
  | 56, _, _ => exact leaf_02856
  | 57, _, _ => exact leaf_02857
  | 58, _, _ => exact leaf_02858
  | 59, _, _ => exact leaf_02859
  | 60, _, _ => exact leaf_02860
  | 61, _, _ => exact leaf_02861
  | 62, _, _ => exact leaf_02862
  | 63, _, _ => exact leaf_02863
  | 64, _, _ => exact leaf_02864
  | 65, _, _ => exact leaf_02865
  | 66, _, _ => exact leaf_02866
  | 67, _, _ => exact leaf_02867
  | 68, _, _ => exact leaf_02868
  | 69, _, _ => exact leaf_02869
  | 70, _, _ => exact leaf_02870
  | 71, _, _ => exact leaf_02871
  | 72, _, _ => exact leaf_02872
  | 73, _, _ => exact leaf_02873
  | 74, _, _ => exact leaf_02874
  | 75, _, _ => exact leaf_02875
  | 76, _, _ => exact leaf_02876
  | 77, _, _ => exact leaf_02877
  | 78, _, _ => exact leaf_02878
  | 79, _, _ => exact leaf_02879
  | 80, _, _ => exact leaf_02880
  | 81, _, _ => exact leaf_02881
  | 82, _, _ => exact leaf_02882
  | 83, _, _ => exact leaf_02883
  | 84, _, _ => exact leaf_02884
  | 85, _, _ => exact leaf_02885
  | 86, _, _ => exact leaf_02886
  | 87, _, _ => exact leaf_02887
  | 88, _, _ => exact leaf_02888
  | 89, _, _ => exact leaf_02889
  | 90, _, _ => exact leaf_02890
  | 91, _, _ => exact leaf_02891
  | 92, _, _ => exact leaf_02892
  | 93, _, _ => exact leaf_02893
  | 94, _, _ => exact leaf_02894
  | 95, _, _ => exact leaf_02895
  | 96, _, _ => exact leaf_02896
  | 97, _, _ => exact leaf_02897
  | 98, _, _ => exact leaf_02898
  | 99, _, _ => exact leaf_02899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
