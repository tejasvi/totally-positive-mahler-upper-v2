import TUK.Leaf07800
import TUK.Leaf07801
import TUK.Leaf07802
import TUK.Leaf07803
import TUK.Leaf07804
import TUK.Leaf07805
import TUK.Leaf07806
import TUK.Leaf07807
import TUK.Leaf07808
import TUK.Leaf07809
import TUK.Leaf07810
import TUK.Leaf07811
import TUK.Leaf07812
import TUK.Leaf07813
import TUK.Leaf07814
import TUK.Leaf07815
import TUK.Leaf07816
import TUK.Leaf07817
import TUK.Leaf07818
import TUK.Leaf07819
import TUK.Leaf07820
import TUK.Leaf07821
import TUK.Leaf07822
import TUK.Leaf07823
import TUK.Leaf07824
import TUK.Leaf07825
import TUK.Leaf07826
import TUK.Leaf07827
import TUK.Leaf07828
import TUK.Leaf07829
import TUK.Leaf07830
import TUK.Leaf07831
import TUK.Leaf07832
import TUK.Leaf07833
import TUK.Leaf07834
import TUK.Leaf07835
import TUK.Leaf07836
import TUK.Leaf07837
import TUK.Leaf07838
import TUK.Leaf07839
import TUK.Leaf07840
import TUK.Leaf07841
import TUK.Leaf07842
import TUK.Leaf07843
import TUK.Leaf07844
import TUK.Leaf07845
import TUK.Leaf07846
import TUK.Leaf07847
import TUK.Leaf07848
import TUK.Leaf07849
import TUK.Leaf07850
import TUK.Leaf07851
import TUK.Leaf07852
import TUK.Leaf07853
import TUK.Leaf07854
import TUK.Leaf07855
import TUK.Leaf07856
import TUK.Leaf07857
import TUK.Leaf07858
import TUK.Leaf07859
import TUK.Leaf07860
import TUK.Leaf07861
import TUK.Leaf07862
import TUK.Leaf07863
import TUK.Leaf07864
import TUK.Leaf07865
import TUK.Leaf07866
import TUK.Leaf07867
import TUK.Leaf07868
import TUK.Leaf07869
import TUK.Leaf07870
import TUK.Leaf07871
import TUK.Leaf07872
import TUK.Leaf07873
import TUK.Leaf07874
import TUK.Leaf07875
import TUK.Leaf07876
import TUK.Leaf07877
import TUK.Leaf07878
import TUK.Leaf07879
import TUK.Leaf07880
import TUK.Leaf07881
import TUK.Leaf07882
import TUK.Leaf07883
import TUK.Leaf07884
import TUK.Leaf07885
import TUK.Leaf07886
import TUK.Leaf07887
import TUK.Leaf07888
import TUK.Leaf07889
import TUK.Leaf07890
import TUK.Leaf07891
import TUK.Leaf07892
import TUK.Leaf07893
import TUK.Leaf07894
import TUK.Leaf07895
import TUK.Leaf07896
import TUK.Leaf07897
import TUK.Leaf07898
import TUK.Leaf07899

/-! Leaves 7800 .. 7899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_78 : ∀ j < 100, 100 * 78 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 78 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_07800
  | 1, _, _ => exact leaf_07801
  | 2, _, _ => exact leaf_07802
  | 3, _, _ => exact leaf_07803
  | 4, _, _ => exact leaf_07804
  | 5, _, _ => exact leaf_07805
  | 6, _, _ => exact leaf_07806
  | 7, _, _ => exact leaf_07807
  | 8, _, _ => exact leaf_07808
  | 9, _, _ => exact leaf_07809
  | 10, _, _ => exact leaf_07810
  | 11, _, _ => exact leaf_07811
  | 12, _, _ => exact leaf_07812
  | 13, _, _ => exact leaf_07813
  | 14, _, _ => exact leaf_07814
  | 15, _, _ => exact leaf_07815
  | 16, _, _ => exact leaf_07816
  | 17, _, _ => exact leaf_07817
  | 18, _, _ => exact leaf_07818
  | 19, _, _ => exact leaf_07819
  | 20, _, _ => exact leaf_07820
  | 21, _, _ => exact leaf_07821
  | 22, _, _ => exact leaf_07822
  | 23, _, _ => exact leaf_07823
  | 24, _, _ => exact leaf_07824
  | 25, _, _ => exact leaf_07825
  | 26, _, _ => exact leaf_07826
  | 27, _, _ => exact leaf_07827
  | 28, _, _ => exact leaf_07828
  | 29, _, _ => exact leaf_07829
  | 30, _, _ => exact leaf_07830
  | 31, _, _ => exact leaf_07831
  | 32, _, _ => exact leaf_07832
  | 33, _, _ => exact leaf_07833
  | 34, _, _ => exact leaf_07834
  | 35, _, _ => exact leaf_07835
  | 36, _, _ => exact leaf_07836
  | 37, _, _ => exact leaf_07837
  | 38, _, _ => exact leaf_07838
  | 39, _, _ => exact leaf_07839
  | 40, _, _ => exact leaf_07840
  | 41, _, _ => exact leaf_07841
  | 42, _, _ => exact leaf_07842
  | 43, _, _ => exact leaf_07843
  | 44, _, _ => exact leaf_07844
  | 45, _, _ => exact leaf_07845
  | 46, _, _ => exact leaf_07846
  | 47, _, _ => exact leaf_07847
  | 48, _, _ => exact leaf_07848
  | 49, _, _ => exact leaf_07849
  | 50, _, _ => exact leaf_07850
  | 51, _, _ => exact leaf_07851
  | 52, _, _ => exact leaf_07852
  | 53, _, _ => exact leaf_07853
  | 54, _, _ => exact leaf_07854
  | 55, _, _ => exact leaf_07855
  | 56, _, _ => exact leaf_07856
  | 57, _, _ => exact leaf_07857
  | 58, _, _ => exact leaf_07858
  | 59, _, _ => exact leaf_07859
  | 60, _, _ => exact leaf_07860
  | 61, _, _ => exact leaf_07861
  | 62, _, _ => exact leaf_07862
  | 63, _, _ => exact leaf_07863
  | 64, _, _ => exact leaf_07864
  | 65, _, _ => exact leaf_07865
  | 66, _, _ => exact leaf_07866
  | 67, _, _ => exact leaf_07867
  | 68, _, _ => exact leaf_07868
  | 69, _, _ => exact leaf_07869
  | 70, _, _ => exact leaf_07870
  | 71, _, _ => exact leaf_07871
  | 72, _, _ => exact leaf_07872
  | 73, _, _ => exact leaf_07873
  | 74, _, _ => exact leaf_07874
  | 75, _, _ => exact leaf_07875
  | 76, _, _ => exact leaf_07876
  | 77, _, _ => exact leaf_07877
  | 78, _, _ => exact leaf_07878
  | 79, _, _ => exact leaf_07879
  | 80, _, _ => exact leaf_07880
  | 81, _, _ => exact leaf_07881
  | 82, _, _ => exact leaf_07882
  | 83, _, _ => exact leaf_07883
  | 84, _, _ => exact leaf_07884
  | 85, _, _ => exact leaf_07885
  | 86, _, _ => exact leaf_07886
  | 87, _, _ => exact leaf_07887
  | 88, _, _ => exact leaf_07888
  | 89, _, _ => exact leaf_07889
  | 90, _, _ => exact leaf_07890
  | 91, _, _ => exact leaf_07891
  | 92, _, _ => exact leaf_07892
  | 93, _, _ => exact leaf_07893
  | 94, _, _ => exact leaf_07894
  | 95, _, _ => exact leaf_07895
  | 96, _, _ => exact leaf_07896
  | 97, _, _ => exact leaf_07897
  | 98, _, _ => exact leaf_07898
  | 99, _, _ => exact leaf_07899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
