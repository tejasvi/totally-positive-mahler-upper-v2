import TUK.Leaf10800
import TUK.Leaf10801
import TUK.Leaf10802
import TUK.Leaf10803
import TUK.Leaf10804
import TUK.Leaf10805
import TUK.Leaf10806
import TUK.Leaf10807
import TUK.Leaf10808
import TUK.Leaf10809
import TUK.Leaf10810
import TUK.Leaf10811
import TUK.Leaf10812
import TUK.Leaf10813
import TUK.Leaf10814
import TUK.Leaf10815
import TUK.Leaf10816
import TUK.Leaf10817
import TUK.Leaf10818
import TUK.Leaf10819
import TUK.Leaf10820
import TUK.Leaf10821
import TUK.Leaf10822
import TUK.Leaf10823
import TUK.Leaf10824
import TUK.Leaf10825
import TUK.Leaf10826
import TUK.Leaf10827
import TUK.Leaf10828
import TUK.Leaf10829
import TUK.Leaf10830
import TUK.Leaf10831
import TUK.Leaf10832
import TUK.Leaf10833
import TUK.Leaf10834
import TUK.Leaf10835
import TUK.Leaf10836
import TUK.Leaf10837
import TUK.Leaf10838
import TUK.Leaf10839
import TUK.Leaf10840
import TUK.Leaf10841
import TUK.Leaf10842
import TUK.Leaf10843
import TUK.Leaf10844
import TUK.Leaf10845
import TUK.Leaf10846
import TUK.Leaf10847
import TUK.Leaf10848
import TUK.Leaf10849
import TUK.Leaf10850
import TUK.Leaf10851
import TUK.Leaf10852
import TUK.Leaf10853
import TUK.Leaf10854
import TUK.Leaf10855
import TUK.Leaf10856
import TUK.Leaf10857
import TUK.Leaf10858
import TUK.Leaf10859
import TUK.Leaf10860
import TUK.Leaf10861
import TUK.Leaf10862
import TUK.Leaf10863
import TUK.Leaf10864
import TUK.Leaf10865
import TUK.Leaf10866
import TUK.Leaf10867
import TUK.Leaf10868
import TUK.Leaf10869
import TUK.Leaf10870
import TUK.Leaf10871
import TUK.Leaf10872
import TUK.Leaf10873
import TUK.Leaf10874
import TUK.Leaf10875
import TUK.Leaf10876
import TUK.Leaf10877
import TUK.Leaf10878
import TUK.Leaf10879
import TUK.Leaf10880
import TUK.Leaf10881
import TUK.Leaf10882
import TUK.Leaf10883
import TUK.Leaf10884
import TUK.Leaf10885
import TUK.Leaf10886
import TUK.Leaf10887
import TUK.Leaf10888
import TUK.Leaf10889
import TUK.Leaf10890
import TUK.Leaf10891
import TUK.Leaf10892
import TUK.Leaf10893
import TUK.Leaf10894
import TUK.Leaf10895
import TUK.Leaf10896
import TUK.Leaf10897
import TUK.Leaf10898
import TUK.Leaf10899

/-! Leaves 10800 .. 10899 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_108 : ∀ j < 100, 100 * 108 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 108 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_10800
  | 1, _, _ => exact leaf_10801
  | 2, _, _ => exact leaf_10802
  | 3, _, _ => exact leaf_10803
  | 4, _, _ => exact leaf_10804
  | 5, _, _ => exact leaf_10805
  | 6, _, _ => exact leaf_10806
  | 7, _, _ => exact leaf_10807
  | 8, _, _ => exact leaf_10808
  | 9, _, _ => exact leaf_10809
  | 10, _, _ => exact leaf_10810
  | 11, _, _ => exact leaf_10811
  | 12, _, _ => exact leaf_10812
  | 13, _, _ => exact leaf_10813
  | 14, _, _ => exact leaf_10814
  | 15, _, _ => exact leaf_10815
  | 16, _, _ => exact leaf_10816
  | 17, _, _ => exact leaf_10817
  | 18, _, _ => exact leaf_10818
  | 19, _, _ => exact leaf_10819
  | 20, _, _ => exact leaf_10820
  | 21, _, _ => exact leaf_10821
  | 22, _, _ => exact leaf_10822
  | 23, _, _ => exact leaf_10823
  | 24, _, _ => exact leaf_10824
  | 25, _, _ => exact leaf_10825
  | 26, _, _ => exact leaf_10826
  | 27, _, _ => exact leaf_10827
  | 28, _, _ => exact leaf_10828
  | 29, _, _ => exact leaf_10829
  | 30, _, _ => exact leaf_10830
  | 31, _, _ => exact leaf_10831
  | 32, _, _ => exact leaf_10832
  | 33, _, _ => exact leaf_10833
  | 34, _, _ => exact leaf_10834
  | 35, _, _ => exact leaf_10835
  | 36, _, _ => exact leaf_10836
  | 37, _, _ => exact leaf_10837
  | 38, _, _ => exact leaf_10838
  | 39, _, _ => exact leaf_10839
  | 40, _, _ => exact leaf_10840
  | 41, _, _ => exact leaf_10841
  | 42, _, _ => exact leaf_10842
  | 43, _, _ => exact leaf_10843
  | 44, _, _ => exact leaf_10844
  | 45, _, _ => exact leaf_10845
  | 46, _, _ => exact leaf_10846
  | 47, _, _ => exact leaf_10847
  | 48, _, _ => exact leaf_10848
  | 49, _, _ => exact leaf_10849
  | 50, _, _ => exact leaf_10850
  | 51, _, _ => exact leaf_10851
  | 52, _, _ => exact leaf_10852
  | 53, _, _ => exact leaf_10853
  | 54, _, _ => exact leaf_10854
  | 55, _, _ => exact leaf_10855
  | 56, _, _ => exact leaf_10856
  | 57, _, _ => exact leaf_10857
  | 58, _, _ => exact leaf_10858
  | 59, _, _ => exact leaf_10859
  | 60, _, _ => exact leaf_10860
  | 61, _, _ => exact leaf_10861
  | 62, _, _ => exact leaf_10862
  | 63, _, _ => exact leaf_10863
  | 64, _, _ => exact leaf_10864
  | 65, _, _ => exact leaf_10865
  | 66, _, _ => exact leaf_10866
  | 67, _, _ => exact leaf_10867
  | 68, _, _ => exact leaf_10868
  | 69, _, _ => exact leaf_10869
  | 70, _, _ => exact leaf_10870
  | 71, _, _ => exact leaf_10871
  | 72, _, _ => exact leaf_10872
  | 73, _, _ => exact leaf_10873
  | 74, _, _ => exact leaf_10874
  | 75, _, _ => exact leaf_10875
  | 76, _, _ => exact leaf_10876
  | 77, _, _ => exact leaf_10877
  | 78, _, _ => exact leaf_10878
  | 79, _, _ => exact leaf_10879
  | 80, _, _ => exact leaf_10880
  | 81, _, _ => exact leaf_10881
  | 82, _, _ => exact leaf_10882
  | 83, _, _ => exact leaf_10883
  | 84, _, _ => exact leaf_10884
  | 85, _, _ => exact leaf_10885
  | 86, _, _ => exact leaf_10886
  | 87, _, _ => exact leaf_10887
  | 88, _, _ => exact leaf_10888
  | 89, _, _ => exact leaf_10889
  | 90, _, _ => exact leaf_10890
  | 91, _, _ => exact leaf_10891
  | 92, _, _ => exact leaf_10892
  | 93, _, _ => exact leaf_10893
  | 94, _, _ => exact leaf_10894
  | 95, _, _ => exact leaf_10895
  | 96, _, _ => exact leaf_10896
  | 97, _, _ => exact leaf_10897
  | 98, _, _ => exact leaf_10898
  | 99, _, _ => exact leaf_10899
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
