import TUK.Leaf00800
import TUK.Leaf00801
import TUK.Leaf00802
import TUK.Leaf00803
import TUK.Leaf00804
import TUK.Leaf00805
import TUK.Leaf00806
import TUK.Leaf00807
import TUK.Leaf00808
import TUK.Leaf00809
import TUK.Leaf00810
import TUK.Leaf00811
import TUK.Leaf00812
import TUK.Leaf00813
import TUK.Leaf00814
import TUK.Leaf00815
import TUK.Leaf00816
import TUK.Leaf00817
import TUK.Leaf00818
import TUK.Leaf00819
import TUK.Leaf00820
import TUK.Leaf00821
import TUK.Leaf00822
import TUK.Leaf00823
import TUK.Leaf00824
import TUK.Leaf00825
import TUK.Leaf00826
import TUK.Leaf00827
import TUK.Leaf00828
import TUK.Leaf00829
import TUK.Leaf00830
import TUK.Leaf00831
import TUK.Leaf00832
import TUK.Leaf00833
import TUK.Leaf00834
import TUK.Leaf00835
import TUK.Leaf00836
import TUK.Leaf00837
import TUK.Leaf00838
import TUK.Leaf00839
import TUK.Leaf00840
import TUK.Leaf00841
import TUK.Leaf00842
import TUK.Leaf00843
import TUK.Leaf00844
import TUK.Leaf00845
import TUK.Leaf00846
import TUK.Leaf00847
import TUK.Leaf00848
import TUK.Leaf00849
import TUK.Leaf00850
import TUK.Leaf00851
import TUK.Leaf00852
import TUK.Leaf00853
import TUK.Leaf00854
import TUK.Leaf00855
import TUK.Leaf00856
import TUK.Leaf00857
import TUK.Leaf00858
import TUK.Leaf00859
import TUK.Leaf00860
import TUK.Leaf00861
import TUK.Leaf00862
import TUK.Leaf00863
import TUK.Leaf00864
import TUK.Leaf00865
import TUK.Leaf00866
import TUK.Leaf00867
import TUK.Leaf00868
import TUK.Leaf00869
import TUK.Leaf00870
import TUK.Leaf00871
import TUK.Leaf00872
import TUK.Leaf00873
import TUK.Leaf00874
import TUK.Leaf00875
import TUK.Leaf00876
import TUK.Leaf00877
import TUK.Leaf00878
import TUK.Leaf00879
import TUK.Leaf00880
import TUK.Leaf00881
import TUK.Leaf00882
import TUK.Leaf00883
import TUK.Leaf00884
import TUK.Leaf00885
import TUK.Leaf00886
import TUK.Leaf00887
import TUK.Leaf00888
import TUK.Leaf00889
import TUK.Leaf00890
import TUK.Leaf00891
import TUK.Leaf00892
import TUK.Leaf00893
import TUK.Leaf00894
import TUK.Leaf00895
import TUK.Leaf00896
import TUK.Leaf00897
import TUK.Leaf00898
import TUK.Leaf00899

/-! Leaves 800 .. 899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_8 : ∀ j < 100, 100 * 8 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 8 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_00800
  | 1, _, _ => exact leaf_00801
  | 2, _, _ => exact leaf_00802
  | 3, _, _ => exact leaf_00803
  | 4, _, _ => exact leaf_00804
  | 5, _, _ => exact leaf_00805
  | 6, _, _ => exact leaf_00806
  | 7, _, _ => exact leaf_00807
  | 8, _, _ => exact leaf_00808
  | 9, _, _ => exact leaf_00809
  | 10, _, _ => exact leaf_00810
  | 11, _, _ => exact leaf_00811
  | 12, _, _ => exact leaf_00812
  | 13, _, _ => exact leaf_00813
  | 14, _, _ => exact leaf_00814
  | 15, _, _ => exact leaf_00815
  | 16, _, _ => exact leaf_00816
  | 17, _, _ => exact leaf_00817
  | 18, _, _ => exact leaf_00818
  | 19, _, _ => exact leaf_00819
  | 20, _, _ => exact leaf_00820
  | 21, _, _ => exact leaf_00821
  | 22, _, _ => exact leaf_00822
  | 23, _, _ => exact leaf_00823
  | 24, _, _ => exact leaf_00824
  | 25, _, _ => exact leaf_00825
  | 26, _, _ => exact leaf_00826
  | 27, _, _ => exact leaf_00827
  | 28, _, _ => exact leaf_00828
  | 29, _, _ => exact leaf_00829
  | 30, _, _ => exact leaf_00830
  | 31, _, _ => exact leaf_00831
  | 32, _, _ => exact leaf_00832
  | 33, _, _ => exact leaf_00833
  | 34, _, _ => exact leaf_00834
  | 35, _, _ => exact leaf_00835
  | 36, _, _ => exact leaf_00836
  | 37, _, _ => exact leaf_00837
  | 38, _, _ => exact leaf_00838
  | 39, _, _ => exact leaf_00839
  | 40, _, _ => exact leaf_00840
  | 41, _, _ => exact leaf_00841
  | 42, _, _ => exact leaf_00842
  | 43, _, _ => exact leaf_00843
  | 44, _, _ => exact leaf_00844
  | 45, _, _ => exact leaf_00845
  | 46, _, _ => exact leaf_00846
  | 47, _, _ => exact leaf_00847
  | 48, _, _ => exact leaf_00848
  | 49, _, _ => exact leaf_00849
  | 50, _, _ => exact leaf_00850
  | 51, _, _ => exact leaf_00851
  | 52, _, _ => exact leaf_00852
  | 53, _, _ => exact leaf_00853
  | 54, _, _ => exact leaf_00854
  | 55, _, _ => exact leaf_00855
  | 56, _, _ => exact leaf_00856
  | 57, _, _ => exact leaf_00857
  | 58, _, _ => exact leaf_00858
  | 59, _, _ => exact leaf_00859
  | 60, _, _ => exact leaf_00860
  | 61, _, _ => exact leaf_00861
  | 62, _, _ => exact leaf_00862
  | 63, _, _ => exact leaf_00863
  | 64, _, _ => exact leaf_00864
  | 65, _, _ => exact leaf_00865
  | 66, _, _ => exact leaf_00866
  | 67, _, _ => exact leaf_00867
  | 68, _, _ => exact leaf_00868
  | 69, _, _ => exact leaf_00869
  | 70, _, _ => exact leaf_00870
  | 71, _, _ => exact leaf_00871
  | 72, _, _ => exact leaf_00872
  | 73, _, _ => exact leaf_00873
  | 74, _, _ => exact leaf_00874
  | 75, _, _ => exact leaf_00875
  | 76, _, _ => exact leaf_00876
  | 77, _, _ => exact leaf_00877
  | 78, _, _ => exact leaf_00878
  | 79, _, _ => exact leaf_00879
  | 80, _, _ => exact leaf_00880
  | 81, _, _ => exact leaf_00881
  | 82, _, _ => exact leaf_00882
  | 83, _, _ => exact leaf_00883
  | 84, _, _ => exact leaf_00884
  | 85, _, _ => exact leaf_00885
  | 86, _, _ => exact leaf_00886
  | 87, _, _ => exact leaf_00887
  | 88, _, _ => exact leaf_00888
  | 89, _, _ => exact leaf_00889
  | 90, _, _ => exact leaf_00890
  | 91, _, _ => exact leaf_00891
  | 92, _, _ => exact leaf_00892
  | 93, _, _ => exact leaf_00893
  | 94, _, _ => exact leaf_00894
  | 95, _, _ => exact leaf_00895
  | 96, _, _ => exact leaf_00896
  | 97, _, _ => exact leaf_00897
  | 98, _, _ => exact leaf_00898
  | 99, _, _ => exact leaf_00899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
