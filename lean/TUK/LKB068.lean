import TUK.Leaf06800
import TUK.Leaf06801
import TUK.Leaf06802
import TUK.Leaf06803
import TUK.Leaf06804
import TUK.Leaf06805
import TUK.Leaf06806
import TUK.Leaf06807
import TUK.Leaf06808
import TUK.Leaf06809
import TUK.Leaf06810
import TUK.Leaf06811
import TUK.Leaf06812
import TUK.Leaf06813
import TUK.Leaf06814
import TUK.Leaf06815
import TUK.Leaf06816
import TUK.Leaf06817
import TUK.Leaf06818
import TUK.Leaf06819
import TUK.Leaf06820
import TUK.Leaf06821
import TUK.Leaf06822
import TUK.Leaf06823
import TUK.Leaf06824
import TUK.Leaf06825
import TUK.Leaf06826
import TUK.Leaf06827
import TUK.Leaf06828
import TUK.Leaf06829
import TUK.Leaf06830
import TUK.Leaf06831
import TUK.Leaf06832
import TUK.Leaf06833
import TUK.Leaf06834
import TUK.Leaf06835
import TUK.Leaf06836
import TUK.Leaf06837
import TUK.Leaf06838
import TUK.Leaf06839
import TUK.Leaf06840
import TUK.Leaf06841
import TUK.Leaf06842
import TUK.Leaf06843
import TUK.Leaf06844
import TUK.Leaf06845
import TUK.Leaf06846
import TUK.Leaf06847
import TUK.Leaf06848
import TUK.Leaf06849
import TUK.Leaf06850
import TUK.Leaf06851
import TUK.Leaf06852
import TUK.Leaf06853
import TUK.Leaf06854
import TUK.Leaf06855
import TUK.Leaf06856
import TUK.Leaf06857
import TUK.Leaf06858
import TUK.Leaf06859
import TUK.Leaf06860
import TUK.Leaf06861
import TUK.Leaf06862
import TUK.Leaf06863
import TUK.Leaf06864
import TUK.Leaf06865
import TUK.Leaf06866
import TUK.Leaf06867
import TUK.Leaf06868
import TUK.Leaf06869
import TUK.Leaf06870
import TUK.Leaf06871
import TUK.Leaf06872
import TUK.Leaf06873
import TUK.Leaf06874
import TUK.Leaf06875
import TUK.Leaf06876
import TUK.Leaf06877
import TUK.Leaf06878
import TUK.Leaf06879
import TUK.Leaf06880
import TUK.Leaf06881
import TUK.Leaf06882
import TUK.Leaf06883
import TUK.Leaf06884
import TUK.Leaf06885
import TUK.Leaf06886
import TUK.Leaf06887
import TUK.Leaf06888
import TUK.Leaf06889
import TUK.Leaf06890
import TUK.Leaf06891
import TUK.Leaf06892
import TUK.Leaf06893
import TUK.Leaf06894
import TUK.Leaf06895
import TUK.Leaf06896
import TUK.Leaf06897
import TUK.Leaf06898
import TUK.Leaf06899

/-! Leaves 6800 .. 6899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_68 : ∀ j < 100, 100 * 68 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 68 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_06800
  | 1, _, _ => exact leaf_06801
  | 2, _, _ => exact leaf_06802
  | 3, _, _ => exact leaf_06803
  | 4, _, _ => exact leaf_06804
  | 5, _, _ => exact leaf_06805
  | 6, _, _ => exact leaf_06806
  | 7, _, _ => exact leaf_06807
  | 8, _, _ => exact leaf_06808
  | 9, _, _ => exact leaf_06809
  | 10, _, _ => exact leaf_06810
  | 11, _, _ => exact leaf_06811
  | 12, _, _ => exact leaf_06812
  | 13, _, _ => exact leaf_06813
  | 14, _, _ => exact leaf_06814
  | 15, _, _ => exact leaf_06815
  | 16, _, _ => exact leaf_06816
  | 17, _, _ => exact leaf_06817
  | 18, _, _ => exact leaf_06818
  | 19, _, _ => exact leaf_06819
  | 20, _, _ => exact leaf_06820
  | 21, _, _ => exact leaf_06821
  | 22, _, _ => exact leaf_06822
  | 23, _, _ => exact leaf_06823
  | 24, _, _ => exact leaf_06824
  | 25, _, _ => exact leaf_06825
  | 26, _, _ => exact leaf_06826
  | 27, _, _ => exact leaf_06827
  | 28, _, _ => exact leaf_06828
  | 29, _, _ => exact leaf_06829
  | 30, _, _ => exact leaf_06830
  | 31, _, _ => exact leaf_06831
  | 32, _, _ => exact leaf_06832
  | 33, _, _ => exact leaf_06833
  | 34, _, _ => exact leaf_06834
  | 35, _, _ => exact leaf_06835
  | 36, _, _ => exact leaf_06836
  | 37, _, _ => exact leaf_06837
  | 38, _, _ => exact leaf_06838
  | 39, _, _ => exact leaf_06839
  | 40, _, _ => exact leaf_06840
  | 41, _, _ => exact leaf_06841
  | 42, _, _ => exact leaf_06842
  | 43, _, _ => exact leaf_06843
  | 44, _, _ => exact leaf_06844
  | 45, _, _ => exact leaf_06845
  | 46, _, _ => exact leaf_06846
  | 47, _, _ => exact leaf_06847
  | 48, _, _ => exact leaf_06848
  | 49, _, _ => exact leaf_06849
  | 50, _, _ => exact leaf_06850
  | 51, _, _ => exact leaf_06851
  | 52, _, _ => exact leaf_06852
  | 53, _, _ => exact leaf_06853
  | 54, _, _ => exact leaf_06854
  | 55, _, _ => exact leaf_06855
  | 56, _, _ => exact leaf_06856
  | 57, _, _ => exact leaf_06857
  | 58, _, _ => exact leaf_06858
  | 59, _, _ => exact leaf_06859
  | 60, _, _ => exact leaf_06860
  | 61, _, _ => exact leaf_06861
  | 62, _, _ => exact leaf_06862
  | 63, _, _ => exact leaf_06863
  | 64, _, _ => exact leaf_06864
  | 65, _, _ => exact leaf_06865
  | 66, _, _ => exact leaf_06866
  | 67, _, _ => exact leaf_06867
  | 68, _, _ => exact leaf_06868
  | 69, _, _ => exact leaf_06869
  | 70, _, _ => exact leaf_06870
  | 71, _, _ => exact leaf_06871
  | 72, _, _ => exact leaf_06872
  | 73, _, _ => exact leaf_06873
  | 74, _, _ => exact leaf_06874
  | 75, _, _ => exact leaf_06875
  | 76, _, _ => exact leaf_06876
  | 77, _, _ => exact leaf_06877
  | 78, _, _ => exact leaf_06878
  | 79, _, _ => exact leaf_06879
  | 80, _, _ => exact leaf_06880
  | 81, _, _ => exact leaf_06881
  | 82, _, _ => exact leaf_06882
  | 83, _, _ => exact leaf_06883
  | 84, _, _ => exact leaf_06884
  | 85, _, _ => exact leaf_06885
  | 86, _, _ => exact leaf_06886
  | 87, _, _ => exact leaf_06887
  | 88, _, _ => exact leaf_06888
  | 89, _, _ => exact leaf_06889
  | 90, _, _ => exact leaf_06890
  | 91, _, _ => exact leaf_06891
  | 92, _, _ => exact leaf_06892
  | 93, _, _ => exact leaf_06893
  | 94, _, _ => exact leaf_06894
  | 95, _, _ => exact leaf_06895
  | 96, _, _ => exact leaf_06896
  | 97, _, _ => exact leaf_06897
  | 98, _, _ => exact leaf_06898
  | 99, _, _ => exact leaf_06899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
