import TUK.Leaf04800
import TUK.Leaf04801
import TUK.Leaf04802
import TUK.Leaf04803
import TUK.Leaf04804
import TUK.Leaf04805
import TUK.Leaf04806
import TUK.Leaf04807
import TUK.Leaf04808
import TUK.Leaf04809
import TUK.Leaf04810
import TUK.Leaf04811
import TUK.Leaf04812
import TUK.Leaf04813
import TUK.Leaf04814
import TUK.Leaf04815
import TUK.Leaf04816
import TUK.Leaf04817
import TUK.Leaf04818
import TUK.Leaf04819
import TUK.Leaf04820
import TUK.Leaf04821
import TUK.Leaf04822
import TUK.Leaf04823
import TUK.Leaf04824
import TUK.Leaf04825
import TUK.Leaf04826
import TUK.Leaf04827
import TUK.Leaf04828
import TUK.Leaf04829
import TUK.Leaf04830
import TUK.Leaf04831
import TUK.Leaf04832
import TUK.Leaf04833
import TUK.Leaf04834
import TUK.Leaf04835
import TUK.Leaf04836
import TUK.Leaf04837
import TUK.Leaf04838
import TUK.Leaf04839
import TUK.Leaf04840
import TUK.Leaf04841
import TUK.Leaf04842
import TUK.Leaf04843
import TUK.Leaf04844
import TUK.Leaf04845
import TUK.Leaf04846
import TUK.Leaf04847
import TUK.Leaf04848
import TUK.Leaf04849
import TUK.Leaf04850
import TUK.Leaf04851
import TUK.Leaf04852
import TUK.Leaf04853
import TUK.Leaf04854
import TUK.Leaf04855
import TUK.Leaf04856
import TUK.Leaf04857
import TUK.Leaf04858
import TUK.Leaf04859
import TUK.Leaf04860
import TUK.Leaf04861
import TUK.Leaf04862
import TUK.Leaf04863
import TUK.Leaf04864
import TUK.Leaf04865
import TUK.Leaf04866
import TUK.Leaf04867
import TUK.Leaf04868
import TUK.Leaf04869
import TUK.Leaf04870
import TUK.Leaf04871
import TUK.Leaf04872
import TUK.Leaf04873
import TUK.Leaf04874
import TUK.Leaf04875
import TUK.Leaf04876
import TUK.Leaf04877
import TUK.Leaf04878
import TUK.Leaf04879
import TUK.Leaf04880
import TUK.Leaf04881
import TUK.Leaf04882
import TUK.Leaf04883
import TUK.Leaf04884
import TUK.Leaf04885
import TUK.Leaf04886
import TUK.Leaf04887
import TUK.Leaf04888
import TUK.Leaf04889
import TUK.Leaf04890
import TUK.Leaf04891
import TUK.Leaf04892
import TUK.Leaf04893
import TUK.Leaf04894
import TUK.Leaf04895
import TUK.Leaf04896
import TUK.Leaf04897
import TUK.Leaf04898
import TUK.Leaf04899

/-! Leaves 4800 .. 4899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_48 : ∀ j < 100, 100 * 48 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 48 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_04800
  | 1, _, _ => exact leaf_04801
  | 2, _, _ => exact leaf_04802
  | 3, _, _ => exact leaf_04803
  | 4, _, _ => exact leaf_04804
  | 5, _, _ => exact leaf_04805
  | 6, _, _ => exact leaf_04806
  | 7, _, _ => exact leaf_04807
  | 8, _, _ => exact leaf_04808
  | 9, _, _ => exact leaf_04809
  | 10, _, _ => exact leaf_04810
  | 11, _, _ => exact leaf_04811
  | 12, _, _ => exact leaf_04812
  | 13, _, _ => exact leaf_04813
  | 14, _, _ => exact leaf_04814
  | 15, _, _ => exact leaf_04815
  | 16, _, _ => exact leaf_04816
  | 17, _, _ => exact leaf_04817
  | 18, _, _ => exact leaf_04818
  | 19, _, _ => exact leaf_04819
  | 20, _, _ => exact leaf_04820
  | 21, _, _ => exact leaf_04821
  | 22, _, _ => exact leaf_04822
  | 23, _, _ => exact leaf_04823
  | 24, _, _ => exact leaf_04824
  | 25, _, _ => exact leaf_04825
  | 26, _, _ => exact leaf_04826
  | 27, _, _ => exact leaf_04827
  | 28, _, _ => exact leaf_04828
  | 29, _, _ => exact leaf_04829
  | 30, _, _ => exact leaf_04830
  | 31, _, _ => exact leaf_04831
  | 32, _, _ => exact leaf_04832
  | 33, _, _ => exact leaf_04833
  | 34, _, _ => exact leaf_04834
  | 35, _, _ => exact leaf_04835
  | 36, _, _ => exact leaf_04836
  | 37, _, _ => exact leaf_04837
  | 38, _, _ => exact leaf_04838
  | 39, _, _ => exact leaf_04839
  | 40, _, _ => exact leaf_04840
  | 41, _, _ => exact leaf_04841
  | 42, _, _ => exact leaf_04842
  | 43, _, _ => exact leaf_04843
  | 44, _, _ => exact leaf_04844
  | 45, _, _ => exact leaf_04845
  | 46, _, _ => exact leaf_04846
  | 47, _, _ => exact leaf_04847
  | 48, _, _ => exact leaf_04848
  | 49, _, _ => exact leaf_04849
  | 50, _, _ => exact leaf_04850
  | 51, _, _ => exact leaf_04851
  | 52, _, _ => exact leaf_04852
  | 53, _, _ => exact leaf_04853
  | 54, _, _ => exact leaf_04854
  | 55, _, _ => exact leaf_04855
  | 56, _, _ => exact leaf_04856
  | 57, _, _ => exact leaf_04857
  | 58, _, _ => exact leaf_04858
  | 59, _, _ => exact leaf_04859
  | 60, _, _ => exact leaf_04860
  | 61, _, _ => exact leaf_04861
  | 62, _, _ => exact leaf_04862
  | 63, _, _ => exact leaf_04863
  | 64, _, _ => exact leaf_04864
  | 65, _, _ => exact leaf_04865
  | 66, _, _ => exact leaf_04866
  | 67, _, _ => exact leaf_04867
  | 68, _, _ => exact leaf_04868
  | 69, _, _ => exact leaf_04869
  | 70, _, _ => exact leaf_04870
  | 71, _, _ => exact leaf_04871
  | 72, _, _ => exact leaf_04872
  | 73, _, _ => exact leaf_04873
  | 74, _, _ => exact leaf_04874
  | 75, _, _ => exact leaf_04875
  | 76, _, _ => exact leaf_04876
  | 77, _, _ => exact leaf_04877
  | 78, _, _ => exact leaf_04878
  | 79, _, _ => exact leaf_04879
  | 80, _, _ => exact leaf_04880
  | 81, _, _ => exact leaf_04881
  | 82, _, _ => exact leaf_04882
  | 83, _, _ => exact leaf_04883
  | 84, _, _ => exact leaf_04884
  | 85, _, _ => exact leaf_04885
  | 86, _, _ => exact leaf_04886
  | 87, _, _ => exact leaf_04887
  | 88, _, _ => exact leaf_04888
  | 89, _, _ => exact leaf_04889
  | 90, _, _ => exact leaf_04890
  | 91, _, _ => exact leaf_04891
  | 92, _, _ => exact leaf_04892
  | 93, _, _ => exact leaf_04893
  | 94, _, _ => exact leaf_04894
  | 95, _, _ => exact leaf_04895
  | 96, _, _ => exact leaf_04896
  | 97, _, _ => exact leaf_04897
  | 98, _, _ => exact leaf_04898
  | 99, _, _ => exact leaf_04899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
