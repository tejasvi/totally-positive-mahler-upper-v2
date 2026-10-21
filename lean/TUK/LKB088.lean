import TUK.Leaf08800
import TUK.Leaf08801
import TUK.Leaf08802
import TUK.Leaf08803
import TUK.Leaf08804
import TUK.Leaf08805
import TUK.Leaf08806
import TUK.Leaf08807
import TUK.Leaf08808
import TUK.Leaf08809
import TUK.Leaf08810
import TUK.Leaf08811
import TUK.Leaf08812
import TUK.Leaf08813
import TUK.Leaf08814
import TUK.Leaf08815
import TUK.Leaf08816
import TUK.Leaf08817
import TUK.Leaf08818
import TUK.Leaf08819
import TUK.Leaf08820
import TUK.Leaf08821
import TUK.Leaf08822
import TUK.Leaf08823
import TUK.Leaf08824
import TUK.Leaf08825
import TUK.Leaf08826
import TUK.Leaf08827
import TUK.Leaf08828
import TUK.Leaf08829
import TUK.Leaf08830
import TUK.Leaf08831
import TUK.Leaf08832
import TUK.Leaf08833
import TUK.Leaf08834
import TUK.Leaf08835
import TUK.Leaf08836
import TUK.Leaf08837
import TUK.Leaf08838
import TUK.Leaf08839
import TUK.Leaf08840
import TUK.Leaf08841
import TUK.Leaf08842
import TUK.Leaf08843
import TUK.Leaf08844
import TUK.Leaf08845
import TUK.Leaf08846
import TUK.Leaf08847
import TUK.Leaf08848
import TUK.Leaf08849
import TUK.Leaf08850
import TUK.Leaf08851
import TUK.Leaf08852
import TUK.Leaf08853
import TUK.Leaf08854
import TUK.Leaf08855
import TUK.Leaf08856
import TUK.Leaf08857
import TUK.Leaf08858
import TUK.Leaf08859
import TUK.Leaf08860
import TUK.Leaf08861
import TUK.Leaf08862
import TUK.Leaf08863
import TUK.Leaf08864
import TUK.Leaf08865
import TUK.Leaf08866
import TUK.Leaf08867
import TUK.Leaf08868
import TUK.Leaf08869
import TUK.Leaf08870
import TUK.Leaf08871
import TUK.Leaf08872
import TUK.Leaf08873
import TUK.Leaf08874
import TUK.Leaf08875
import TUK.Leaf08876
import TUK.Leaf08877
import TUK.Leaf08878
import TUK.Leaf08879
import TUK.Leaf08880
import TUK.Leaf08881
import TUK.Leaf08882
import TUK.Leaf08883
import TUK.Leaf08884
import TUK.Leaf08885
import TUK.Leaf08886
import TUK.Leaf08887
import TUK.Leaf08888
import TUK.Leaf08889
import TUK.Leaf08890
import TUK.Leaf08891
import TUK.Leaf08892
import TUK.Leaf08893
import TUK.Leaf08894
import TUK.Leaf08895
import TUK.Leaf08896
import TUK.Leaf08897
import TUK.Leaf08898
import TUK.Leaf08899

/-! Leaves 8800 .. 8899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_88 : ∀ j < 100, 100 * 88 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 88 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_08800
  | 1, _, _ => exact leaf_08801
  | 2, _, _ => exact leaf_08802
  | 3, _, _ => exact leaf_08803
  | 4, _, _ => exact leaf_08804
  | 5, _, _ => exact leaf_08805
  | 6, _, _ => exact leaf_08806
  | 7, _, _ => exact leaf_08807
  | 8, _, _ => exact leaf_08808
  | 9, _, _ => exact leaf_08809
  | 10, _, _ => exact leaf_08810
  | 11, _, _ => exact leaf_08811
  | 12, _, _ => exact leaf_08812
  | 13, _, _ => exact leaf_08813
  | 14, _, _ => exact leaf_08814
  | 15, _, _ => exact leaf_08815
  | 16, _, _ => exact leaf_08816
  | 17, _, _ => exact leaf_08817
  | 18, _, _ => exact leaf_08818
  | 19, _, _ => exact leaf_08819
  | 20, _, _ => exact leaf_08820
  | 21, _, _ => exact leaf_08821
  | 22, _, _ => exact leaf_08822
  | 23, _, _ => exact leaf_08823
  | 24, _, _ => exact leaf_08824
  | 25, _, _ => exact leaf_08825
  | 26, _, _ => exact leaf_08826
  | 27, _, _ => exact leaf_08827
  | 28, _, _ => exact leaf_08828
  | 29, _, _ => exact leaf_08829
  | 30, _, _ => exact leaf_08830
  | 31, _, _ => exact leaf_08831
  | 32, _, _ => exact leaf_08832
  | 33, _, _ => exact leaf_08833
  | 34, _, _ => exact leaf_08834
  | 35, _, _ => exact leaf_08835
  | 36, _, _ => exact leaf_08836
  | 37, _, _ => exact leaf_08837
  | 38, _, _ => exact leaf_08838
  | 39, _, _ => exact leaf_08839
  | 40, _, _ => exact leaf_08840
  | 41, _, _ => exact leaf_08841
  | 42, _, _ => exact leaf_08842
  | 43, _, _ => exact leaf_08843
  | 44, _, _ => exact leaf_08844
  | 45, _, _ => exact leaf_08845
  | 46, _, _ => exact leaf_08846
  | 47, _, _ => exact leaf_08847
  | 48, _, _ => exact leaf_08848
  | 49, _, _ => exact leaf_08849
  | 50, _, _ => exact leaf_08850
  | 51, _, _ => exact leaf_08851
  | 52, _, _ => exact leaf_08852
  | 53, _, _ => exact leaf_08853
  | 54, _, _ => exact leaf_08854
  | 55, _, _ => exact leaf_08855
  | 56, _, _ => exact leaf_08856
  | 57, _, _ => exact leaf_08857
  | 58, _, _ => exact leaf_08858
  | 59, _, _ => exact leaf_08859
  | 60, _, _ => exact leaf_08860
  | 61, _, _ => exact leaf_08861
  | 62, _, _ => exact leaf_08862
  | 63, _, _ => exact leaf_08863
  | 64, _, _ => exact leaf_08864
  | 65, _, _ => exact leaf_08865
  | 66, _, _ => exact leaf_08866
  | 67, _, _ => exact leaf_08867
  | 68, _, _ => exact leaf_08868
  | 69, _, _ => exact leaf_08869
  | 70, _, _ => exact leaf_08870
  | 71, _, _ => exact leaf_08871
  | 72, _, _ => exact leaf_08872
  | 73, _, _ => exact leaf_08873
  | 74, _, _ => exact leaf_08874
  | 75, _, _ => exact leaf_08875
  | 76, _, _ => exact leaf_08876
  | 77, _, _ => exact leaf_08877
  | 78, _, _ => exact leaf_08878
  | 79, _, _ => exact leaf_08879
  | 80, _, _ => exact leaf_08880
  | 81, _, _ => exact leaf_08881
  | 82, _, _ => exact leaf_08882
  | 83, _, _ => exact leaf_08883
  | 84, _, _ => exact leaf_08884
  | 85, _, _ => exact leaf_08885
  | 86, _, _ => exact leaf_08886
  | 87, _, _ => exact leaf_08887
  | 88, _, _ => exact leaf_08888
  | 89, _, _ => exact leaf_08889
  | 90, _, _ => exact leaf_08890
  | 91, _, _ => exact leaf_08891
  | 92, _, _ => exact leaf_08892
  | 93, _, _ => exact leaf_08893
  | 94, _, _ => exact leaf_08894
  | 95, _, _ => exact leaf_08895
  | 96, _, _ => exact leaf_08896
  | 97, _, _ => exact leaf_08897
  | 98, _, _ => exact leaf_08898
  | 99, _, _ => exact leaf_08899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
