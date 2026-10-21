import TUK.Leaf05800
import TUK.Leaf05801
import TUK.Leaf05802
import TUK.Leaf05803
import TUK.Leaf05804
import TUK.Leaf05805
import TUK.Leaf05806
import TUK.Leaf05807
import TUK.Leaf05808
import TUK.Leaf05809
import TUK.Leaf05810
import TUK.Leaf05811
import TUK.Leaf05812
import TUK.Leaf05813
import TUK.Leaf05814
import TUK.Leaf05815
import TUK.Leaf05816
import TUK.Leaf05817
import TUK.Leaf05818
import TUK.Leaf05819
import TUK.Leaf05820
import TUK.Leaf05821
import TUK.Leaf05822
import TUK.Leaf05823
import TUK.Leaf05824
import TUK.Leaf05825
import TUK.Leaf05826
import TUK.Leaf05827
import TUK.Leaf05828
import TUK.Leaf05829
import TUK.Leaf05830
import TUK.Leaf05831
import TUK.Leaf05832
import TUK.Leaf05833
import TUK.Leaf05834
import TUK.Leaf05835
import TUK.Leaf05836
import TUK.Leaf05837
import TUK.Leaf05838
import TUK.Leaf05839
import TUK.Leaf05840
import TUK.Leaf05841
import TUK.Leaf05842
import TUK.Leaf05843
import TUK.Leaf05844
import TUK.Leaf05845
import TUK.Leaf05846
import TUK.Leaf05847
import TUK.Leaf05848
import TUK.Leaf05849
import TUK.Leaf05850
import TUK.Leaf05851
import TUK.Leaf05852
import TUK.Leaf05853
import TUK.Leaf05854
import TUK.Leaf05855
import TUK.Leaf05856
import TUK.Leaf05857
import TUK.Leaf05858
import TUK.Leaf05859
import TUK.Leaf05860
import TUK.Leaf05861
import TUK.Leaf05862
import TUK.Leaf05863
import TUK.Leaf05864
import TUK.Leaf05865
import TUK.Leaf05866
import TUK.Leaf05867
import TUK.Leaf05868
import TUK.Leaf05869
import TUK.Leaf05870
import TUK.Leaf05871
import TUK.Leaf05872
import TUK.Leaf05873
import TUK.Leaf05874
import TUK.Leaf05875
import TUK.Leaf05876
import TUK.Leaf05877
import TUK.Leaf05878
import TUK.Leaf05879
import TUK.Leaf05880
import TUK.Leaf05881
import TUK.Leaf05882
import TUK.Leaf05883
import TUK.Leaf05884
import TUK.Leaf05885
import TUK.Leaf05886
import TUK.Leaf05887
import TUK.Leaf05888
import TUK.Leaf05889
import TUK.Leaf05890
import TUK.Leaf05891
import TUK.Leaf05892
import TUK.Leaf05893
import TUK.Leaf05894
import TUK.Leaf05895
import TUK.Leaf05896
import TUK.Leaf05897
import TUK.Leaf05898
import TUK.Leaf05899

/-! Leaves 5800 .. 5899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_58 : ∀ j < 100, 100 * 58 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 58 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_05800
  | 1, _, _ => exact leaf_05801
  | 2, _, _ => exact leaf_05802
  | 3, _, _ => exact leaf_05803
  | 4, _, _ => exact leaf_05804
  | 5, _, _ => exact leaf_05805
  | 6, _, _ => exact leaf_05806
  | 7, _, _ => exact leaf_05807
  | 8, _, _ => exact leaf_05808
  | 9, _, _ => exact leaf_05809
  | 10, _, _ => exact leaf_05810
  | 11, _, _ => exact leaf_05811
  | 12, _, _ => exact leaf_05812
  | 13, _, _ => exact leaf_05813
  | 14, _, _ => exact leaf_05814
  | 15, _, _ => exact leaf_05815
  | 16, _, _ => exact leaf_05816
  | 17, _, _ => exact leaf_05817
  | 18, _, _ => exact leaf_05818
  | 19, _, _ => exact leaf_05819
  | 20, _, _ => exact leaf_05820
  | 21, _, _ => exact leaf_05821
  | 22, _, _ => exact leaf_05822
  | 23, _, _ => exact leaf_05823
  | 24, _, _ => exact leaf_05824
  | 25, _, _ => exact leaf_05825
  | 26, _, _ => exact leaf_05826
  | 27, _, _ => exact leaf_05827
  | 28, _, _ => exact leaf_05828
  | 29, _, _ => exact leaf_05829
  | 30, _, _ => exact leaf_05830
  | 31, _, _ => exact leaf_05831
  | 32, _, _ => exact leaf_05832
  | 33, _, _ => exact leaf_05833
  | 34, _, _ => exact leaf_05834
  | 35, _, _ => exact leaf_05835
  | 36, _, _ => exact leaf_05836
  | 37, _, _ => exact leaf_05837
  | 38, _, _ => exact leaf_05838
  | 39, _, _ => exact leaf_05839
  | 40, _, _ => exact leaf_05840
  | 41, _, _ => exact leaf_05841
  | 42, _, _ => exact leaf_05842
  | 43, _, _ => exact leaf_05843
  | 44, _, _ => exact leaf_05844
  | 45, _, _ => exact leaf_05845
  | 46, _, _ => exact leaf_05846
  | 47, _, _ => exact leaf_05847
  | 48, _, _ => exact leaf_05848
  | 49, _, _ => exact leaf_05849
  | 50, _, _ => exact leaf_05850
  | 51, _, _ => exact leaf_05851
  | 52, _, _ => exact leaf_05852
  | 53, _, _ => exact leaf_05853
  | 54, _, _ => exact leaf_05854
  | 55, _, _ => exact leaf_05855
  | 56, _, _ => exact leaf_05856
  | 57, _, _ => exact leaf_05857
  | 58, _, _ => exact leaf_05858
  | 59, _, _ => exact leaf_05859
  | 60, _, _ => exact leaf_05860
  | 61, _, _ => exact leaf_05861
  | 62, _, _ => exact leaf_05862
  | 63, _, _ => exact leaf_05863
  | 64, _, _ => exact leaf_05864
  | 65, _, _ => exact leaf_05865
  | 66, _, _ => exact leaf_05866
  | 67, _, _ => exact leaf_05867
  | 68, _, _ => exact leaf_05868
  | 69, _, _ => exact leaf_05869
  | 70, _, _ => exact leaf_05870
  | 71, _, _ => exact leaf_05871
  | 72, _, _ => exact leaf_05872
  | 73, _, _ => exact leaf_05873
  | 74, _, _ => exact leaf_05874
  | 75, _, _ => exact leaf_05875
  | 76, _, _ => exact leaf_05876
  | 77, _, _ => exact leaf_05877
  | 78, _, _ => exact leaf_05878
  | 79, _, _ => exact leaf_05879
  | 80, _, _ => exact leaf_05880
  | 81, _, _ => exact leaf_05881
  | 82, _, _ => exact leaf_05882
  | 83, _, _ => exact leaf_05883
  | 84, _, _ => exact leaf_05884
  | 85, _, _ => exact leaf_05885
  | 86, _, _ => exact leaf_05886
  | 87, _, _ => exact leaf_05887
  | 88, _, _ => exact leaf_05888
  | 89, _, _ => exact leaf_05889
  | 90, _, _ => exact leaf_05890
  | 91, _, _ => exact leaf_05891
  | 92, _, _ => exact leaf_05892
  | 93, _, _ => exact leaf_05893
  | 94, _, _ => exact leaf_05894
  | 95, _, _ => exact leaf_05895
  | 96, _, _ => exact leaf_05896
  | 97, _, _ => exact leaf_05897
  | 98, _, _ => exact leaf_05898
  | 99, _, _ => exact leaf_05899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
