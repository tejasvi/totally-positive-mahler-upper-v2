import TUK.Leaf03800
import TUK.Leaf03801
import TUK.Leaf03802
import TUK.Leaf03803
import TUK.Leaf03804
import TUK.Leaf03805
import TUK.Leaf03806
import TUK.Leaf03807
import TUK.Leaf03808
import TUK.Leaf03809
import TUK.Leaf03810
import TUK.Leaf03811
import TUK.Leaf03812
import TUK.Leaf03813
import TUK.Leaf03814
import TUK.Leaf03815
import TUK.Leaf03816
import TUK.Leaf03817
import TUK.Leaf03818
import TUK.Leaf03819
import TUK.Leaf03820
import TUK.Leaf03821
import TUK.Leaf03822
import TUK.Leaf03823
import TUK.Leaf03824
import TUK.Leaf03825
import TUK.Leaf03826
import TUK.Leaf03827
import TUK.Leaf03828
import TUK.Leaf03829
import TUK.Leaf03830
import TUK.Leaf03831
import TUK.Leaf03832
import TUK.Leaf03833
import TUK.Leaf03834
import TUK.Leaf03835
import TUK.Leaf03836
import TUK.Leaf03837
import TUK.Leaf03838
import TUK.Leaf03839
import TUK.Leaf03840
import TUK.Leaf03841
import TUK.Leaf03842
import TUK.Leaf03843
import TUK.Leaf03844
import TUK.Leaf03845
import TUK.Leaf03846
import TUK.Leaf03847
import TUK.Leaf03848
import TUK.Leaf03849
import TUK.Leaf03850
import TUK.Leaf03851
import TUK.Leaf03852
import TUK.Leaf03853
import TUK.Leaf03854
import TUK.Leaf03855
import TUK.Leaf03856
import TUK.Leaf03857
import TUK.Leaf03858
import TUK.Leaf03859
import TUK.Leaf03860
import TUK.Leaf03861
import TUK.Leaf03862
import TUK.Leaf03863
import TUK.Leaf03864
import TUK.Leaf03865
import TUK.Leaf03866
import TUK.Leaf03867
import TUK.Leaf03868
import TUK.Leaf03869
import TUK.Leaf03870
import TUK.Leaf03871
import TUK.Leaf03872
import TUK.Leaf03873
import TUK.Leaf03874
import TUK.Leaf03875
import TUK.Leaf03876
import TUK.Leaf03877
import TUK.Leaf03878
import TUK.Leaf03879
import TUK.Leaf03880
import TUK.Leaf03881
import TUK.Leaf03882
import TUK.Leaf03883
import TUK.Leaf03884
import TUK.Leaf03885
import TUK.Leaf03886
import TUK.Leaf03887
import TUK.Leaf03888
import TUK.Leaf03889
import TUK.Leaf03890
import TUK.Leaf03891
import TUK.Leaf03892
import TUK.Leaf03893
import TUK.Leaf03894
import TUK.Leaf03895
import TUK.Leaf03896
import TUK.Leaf03897
import TUK.Leaf03898
import TUK.Leaf03899

/-! Leaves 3800 .. 3899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_38 : ∀ j < 100, 100 * 38 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 38 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_03800
  | 1, _, _ => exact leaf_03801
  | 2, _, _ => exact leaf_03802
  | 3, _, _ => exact leaf_03803
  | 4, _, _ => exact leaf_03804
  | 5, _, _ => exact leaf_03805
  | 6, _, _ => exact leaf_03806
  | 7, _, _ => exact leaf_03807
  | 8, _, _ => exact leaf_03808
  | 9, _, _ => exact leaf_03809
  | 10, _, _ => exact leaf_03810
  | 11, _, _ => exact leaf_03811
  | 12, _, _ => exact leaf_03812
  | 13, _, _ => exact leaf_03813
  | 14, _, _ => exact leaf_03814
  | 15, _, _ => exact leaf_03815
  | 16, _, _ => exact leaf_03816
  | 17, _, _ => exact leaf_03817
  | 18, _, _ => exact leaf_03818
  | 19, _, _ => exact leaf_03819
  | 20, _, _ => exact leaf_03820
  | 21, _, _ => exact leaf_03821
  | 22, _, _ => exact leaf_03822
  | 23, _, _ => exact leaf_03823
  | 24, _, _ => exact leaf_03824
  | 25, _, _ => exact leaf_03825
  | 26, _, _ => exact leaf_03826
  | 27, _, _ => exact leaf_03827
  | 28, _, _ => exact leaf_03828
  | 29, _, _ => exact leaf_03829
  | 30, _, _ => exact leaf_03830
  | 31, _, _ => exact leaf_03831
  | 32, _, _ => exact leaf_03832
  | 33, _, _ => exact leaf_03833
  | 34, _, _ => exact leaf_03834
  | 35, _, _ => exact leaf_03835
  | 36, _, _ => exact leaf_03836
  | 37, _, _ => exact leaf_03837
  | 38, _, _ => exact leaf_03838
  | 39, _, _ => exact leaf_03839
  | 40, _, _ => exact leaf_03840
  | 41, _, _ => exact leaf_03841
  | 42, _, _ => exact leaf_03842
  | 43, _, _ => exact leaf_03843
  | 44, _, _ => exact leaf_03844
  | 45, _, _ => exact leaf_03845
  | 46, _, _ => exact leaf_03846
  | 47, _, _ => exact leaf_03847
  | 48, _, _ => exact leaf_03848
  | 49, _, _ => exact leaf_03849
  | 50, _, _ => exact leaf_03850
  | 51, _, _ => exact leaf_03851
  | 52, _, _ => exact leaf_03852
  | 53, _, _ => exact leaf_03853
  | 54, _, _ => exact leaf_03854
  | 55, _, _ => exact leaf_03855
  | 56, _, _ => exact leaf_03856
  | 57, _, _ => exact leaf_03857
  | 58, _, _ => exact leaf_03858
  | 59, _, _ => exact leaf_03859
  | 60, _, _ => exact leaf_03860
  | 61, _, _ => exact leaf_03861
  | 62, _, _ => exact leaf_03862
  | 63, _, _ => exact leaf_03863
  | 64, _, _ => exact leaf_03864
  | 65, _, _ => exact leaf_03865
  | 66, _, _ => exact leaf_03866
  | 67, _, _ => exact leaf_03867
  | 68, _, _ => exact leaf_03868
  | 69, _, _ => exact leaf_03869
  | 70, _, _ => exact leaf_03870
  | 71, _, _ => exact leaf_03871
  | 72, _, _ => exact leaf_03872
  | 73, _, _ => exact leaf_03873
  | 74, _, _ => exact leaf_03874
  | 75, _, _ => exact leaf_03875
  | 76, _, _ => exact leaf_03876
  | 77, _, _ => exact leaf_03877
  | 78, _, _ => exact leaf_03878
  | 79, _, _ => exact leaf_03879
  | 80, _, _ => exact leaf_03880
  | 81, _, _ => exact leaf_03881
  | 82, _, _ => exact leaf_03882
  | 83, _, _ => exact leaf_03883
  | 84, _, _ => exact leaf_03884
  | 85, _, _ => exact leaf_03885
  | 86, _, _ => exact leaf_03886
  | 87, _, _ => exact leaf_03887
  | 88, _, _ => exact leaf_03888
  | 89, _, _ => exact leaf_03889
  | 90, _, _ => exact leaf_03890
  | 91, _, _ => exact leaf_03891
  | 92, _, _ => exact leaf_03892
  | 93, _, _ => exact leaf_03893
  | 94, _, _ => exact leaf_03894
  | 95, _, _ => exact leaf_03895
  | 96, _, _ => exact leaf_03896
  | 97, _, _ => exact leaf_03897
  | 98, _, _ => exact leaf_03898
  | 99, _, _ => exact leaf_03899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
