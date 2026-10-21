import TUK.Leaf01800
import TUK.Leaf01801
import TUK.Leaf01802
import TUK.Leaf01803
import TUK.Leaf01804
import TUK.Leaf01805
import TUK.Leaf01806
import TUK.Leaf01807
import TUK.Leaf01808
import TUK.Leaf01809
import TUK.Leaf01810
import TUK.Leaf01811
import TUK.Leaf01812
import TUK.Leaf01813
import TUK.Leaf01814
import TUK.Leaf01815
import TUK.Leaf01816
import TUK.Leaf01817
import TUK.Leaf01818
import TUK.Leaf01819
import TUK.Leaf01820
import TUK.Leaf01821
import TUK.Leaf01822
import TUK.Leaf01823
import TUK.Leaf01824
import TUK.Leaf01825
import TUK.Leaf01826
import TUK.Leaf01827
import TUK.Leaf01828
import TUK.Leaf01829
import TUK.Leaf01830
import TUK.Leaf01831
import TUK.Leaf01832
import TUK.Leaf01833
import TUK.Leaf01834
import TUK.Leaf01835
import TUK.Leaf01836
import TUK.Leaf01837
import TUK.Leaf01838
import TUK.Leaf01839
import TUK.Leaf01840
import TUK.Leaf01841
import TUK.Leaf01842
import TUK.Leaf01843
import TUK.Leaf01844
import TUK.Leaf01845
import TUK.Leaf01846
import TUK.Leaf01847
import TUK.Leaf01848
import TUK.Leaf01849
import TUK.Leaf01850
import TUK.Leaf01851
import TUK.Leaf01852
import TUK.Leaf01853
import TUK.Leaf01854
import TUK.Leaf01855
import TUK.Leaf01856
import TUK.Leaf01857
import TUK.Leaf01858
import TUK.Leaf01859
import TUK.Leaf01860
import TUK.Leaf01861
import TUK.Leaf01862
import TUK.Leaf01863
import TUK.Leaf01864
import TUK.Leaf01865
import TUK.Leaf01866
import TUK.Leaf01867
import TUK.Leaf01868
import TUK.Leaf01869
import TUK.Leaf01870
import TUK.Leaf01871
import TUK.Leaf01872
import TUK.Leaf01873
import TUK.Leaf01874
import TUK.Leaf01875
import TUK.Leaf01876
import TUK.Leaf01877
import TUK.Leaf01878
import TUK.Leaf01879
import TUK.Leaf01880
import TUK.Leaf01881
import TUK.Leaf01882
import TUK.Leaf01883
import TUK.Leaf01884
import TUK.Leaf01885
import TUK.Leaf01886
import TUK.Leaf01887
import TUK.Leaf01888
import TUK.Leaf01889
import TUK.Leaf01890
import TUK.Leaf01891
import TUK.Leaf01892
import TUK.Leaf01893
import TUK.Leaf01894
import TUK.Leaf01895
import TUK.Leaf01896
import TUK.Leaf01897
import TUK.Leaf01898
import TUK.Leaf01899

/-! Leaves 1800 .. 1899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_18 : ∀ j < 100, 100 * 18 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 18 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_01800
  | 1, _, _ => exact leaf_01801
  | 2, _, _ => exact leaf_01802
  | 3, _, _ => exact leaf_01803
  | 4, _, _ => exact leaf_01804
  | 5, _, _ => exact leaf_01805
  | 6, _, _ => exact leaf_01806
  | 7, _, _ => exact leaf_01807
  | 8, _, _ => exact leaf_01808
  | 9, _, _ => exact leaf_01809
  | 10, _, _ => exact leaf_01810
  | 11, _, _ => exact leaf_01811
  | 12, _, _ => exact leaf_01812
  | 13, _, _ => exact leaf_01813
  | 14, _, _ => exact leaf_01814
  | 15, _, _ => exact leaf_01815
  | 16, _, _ => exact leaf_01816
  | 17, _, _ => exact leaf_01817
  | 18, _, _ => exact leaf_01818
  | 19, _, _ => exact leaf_01819
  | 20, _, _ => exact leaf_01820
  | 21, _, _ => exact leaf_01821
  | 22, _, _ => exact leaf_01822
  | 23, _, _ => exact leaf_01823
  | 24, _, _ => exact leaf_01824
  | 25, _, _ => exact leaf_01825
  | 26, _, _ => exact leaf_01826
  | 27, _, _ => exact leaf_01827
  | 28, _, _ => exact leaf_01828
  | 29, _, _ => exact leaf_01829
  | 30, _, _ => exact leaf_01830
  | 31, _, _ => exact leaf_01831
  | 32, _, _ => exact leaf_01832
  | 33, _, _ => exact leaf_01833
  | 34, _, _ => exact leaf_01834
  | 35, _, _ => exact leaf_01835
  | 36, _, _ => exact leaf_01836
  | 37, _, _ => exact leaf_01837
  | 38, _, _ => exact leaf_01838
  | 39, _, _ => exact leaf_01839
  | 40, _, _ => exact leaf_01840
  | 41, _, _ => exact leaf_01841
  | 42, _, _ => exact leaf_01842
  | 43, _, _ => exact leaf_01843
  | 44, _, _ => exact leaf_01844
  | 45, _, _ => exact leaf_01845
  | 46, _, _ => exact leaf_01846
  | 47, _, _ => exact leaf_01847
  | 48, _, _ => exact leaf_01848
  | 49, _, _ => exact leaf_01849
  | 50, _, _ => exact leaf_01850
  | 51, _, _ => exact leaf_01851
  | 52, _, _ => exact leaf_01852
  | 53, _, _ => exact leaf_01853
  | 54, _, _ => exact leaf_01854
  | 55, _, _ => exact leaf_01855
  | 56, _, _ => exact leaf_01856
  | 57, _, _ => exact leaf_01857
  | 58, _, _ => exact leaf_01858
  | 59, _, _ => exact leaf_01859
  | 60, _, _ => exact leaf_01860
  | 61, _, _ => exact leaf_01861
  | 62, _, _ => exact leaf_01862
  | 63, _, _ => exact leaf_01863
  | 64, _, _ => exact leaf_01864
  | 65, _, _ => exact leaf_01865
  | 66, _, _ => exact leaf_01866
  | 67, _, _ => exact leaf_01867
  | 68, _, _ => exact leaf_01868
  | 69, _, _ => exact leaf_01869
  | 70, _, _ => exact leaf_01870
  | 71, _, _ => exact leaf_01871
  | 72, _, _ => exact leaf_01872
  | 73, _, _ => exact leaf_01873
  | 74, _, _ => exact leaf_01874
  | 75, _, _ => exact leaf_01875
  | 76, _, _ => exact leaf_01876
  | 77, _, _ => exact leaf_01877
  | 78, _, _ => exact leaf_01878
  | 79, _, _ => exact leaf_01879
  | 80, _, _ => exact leaf_01880
  | 81, _, _ => exact leaf_01881
  | 82, _, _ => exact leaf_01882
  | 83, _, _ => exact leaf_01883
  | 84, _, _ => exact leaf_01884
  | 85, _, _ => exact leaf_01885
  | 86, _, _ => exact leaf_01886
  | 87, _, _ => exact leaf_01887
  | 88, _, _ => exact leaf_01888
  | 89, _, _ => exact leaf_01889
  | 90, _, _ => exact leaf_01890
  | 91, _, _ => exact leaf_01891
  | 92, _, _ => exact leaf_01892
  | 93, _, _ => exact leaf_01893
  | 94, _, _ => exact leaf_01894
  | 95, _, _ => exact leaf_01895
  | 96, _, _ => exact leaf_01896
  | 97, _, _ => exact leaf_01897
  | 98, _, _ => exact leaf_01898
  | 99, _, _ => exact leaf_01899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
