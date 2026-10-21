import TUK.Leaf10700
import TUK.Leaf10701
import TUK.Leaf10702
import TUK.Leaf10703
import TUK.Leaf10704
import TUK.Leaf10705
import TUK.Leaf10706
import TUK.Leaf10707
import TUK.Leaf10708
import TUK.Leaf10709
import TUK.Leaf10710
import TUK.Leaf10711
import TUK.Leaf10712
import TUK.Leaf10713
import TUK.Leaf10714
import TUK.Leaf10715
import TUK.Leaf10716
import TUK.Leaf10717
import TUK.Leaf10718
import TUK.Leaf10719
import TUK.Leaf10720
import TUK.Leaf10721
import TUK.Leaf10722
import TUK.Leaf10723
import TUK.Leaf10724
import TUK.Leaf10725
import TUK.Leaf10726
import TUK.Leaf10727
import TUK.Leaf10728
import TUK.Leaf10729
import TUK.Leaf10730
import TUK.Leaf10731
import TUK.Leaf10732
import TUK.Leaf10733
import TUK.Leaf10734
import TUK.Leaf10735
import TUK.Leaf10736
import TUK.Leaf10737
import TUK.Leaf10738
import TUK.Leaf10739
import TUK.Leaf10740
import TUK.Leaf10741
import TUK.Leaf10742
import TUK.Leaf10743
import TUK.Leaf10744
import TUK.Leaf10745
import TUK.Leaf10746
import TUK.Leaf10747
import TUK.Leaf10748
import TUK.Leaf10749
import TUK.Leaf10750
import TUK.Leaf10751
import TUK.Leaf10752
import TUK.Leaf10753
import TUK.Leaf10754
import TUK.Leaf10755
import TUK.Leaf10756
import TUK.Leaf10757
import TUK.Leaf10758
import TUK.Leaf10759
import TUK.Leaf10760
import TUK.Leaf10761
import TUK.Leaf10762
import TUK.Leaf10763
import TUK.Leaf10764
import TUK.Leaf10765
import TUK.Leaf10766
import TUK.Leaf10767
import TUK.Leaf10768
import TUK.Leaf10769
import TUK.Leaf10770
import TUK.Leaf10771
import TUK.Leaf10772
import TUK.Leaf10773
import TUK.Leaf10774
import TUK.Leaf10775
import TUK.Leaf10776
import TUK.Leaf10777
import TUK.Leaf10778
import TUK.Leaf10779
import TUK.Leaf10780
import TUK.Leaf10781
import TUK.Leaf10782
import TUK.Leaf10783
import TUK.Leaf10784
import TUK.Leaf10785
import TUK.Leaf10786
import TUK.Leaf10787
import TUK.Leaf10788
import TUK.Leaf10789
import TUK.Leaf10790
import TUK.Leaf10791
import TUK.Leaf10792
import TUK.Leaf10793
import TUK.Leaf10794
import TUK.Leaf10795
import TUK.Leaf10796
import TUK.Leaf10797
import TUK.Leaf10798
import TUK.Leaf10799

/-! Leaves 10700 .. 10799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_107 : ∀ j < 100, 100 * 107 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 107 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_10700
  | 1, _, _ => exact leaf_10701
  | 2, _, _ => exact leaf_10702
  | 3, _, _ => exact leaf_10703
  | 4, _, _ => exact leaf_10704
  | 5, _, _ => exact leaf_10705
  | 6, _, _ => exact leaf_10706
  | 7, _, _ => exact leaf_10707
  | 8, _, _ => exact leaf_10708
  | 9, _, _ => exact leaf_10709
  | 10, _, _ => exact leaf_10710
  | 11, _, _ => exact leaf_10711
  | 12, _, _ => exact leaf_10712
  | 13, _, _ => exact leaf_10713
  | 14, _, _ => exact leaf_10714
  | 15, _, _ => exact leaf_10715
  | 16, _, _ => exact leaf_10716
  | 17, _, _ => exact leaf_10717
  | 18, _, _ => exact leaf_10718
  | 19, _, _ => exact leaf_10719
  | 20, _, _ => exact leaf_10720
  | 21, _, _ => exact leaf_10721
  | 22, _, _ => exact leaf_10722
  | 23, _, _ => exact leaf_10723
  | 24, _, _ => exact leaf_10724
  | 25, _, _ => exact leaf_10725
  | 26, _, _ => exact leaf_10726
  | 27, _, _ => exact leaf_10727
  | 28, _, _ => exact leaf_10728
  | 29, _, _ => exact leaf_10729
  | 30, _, _ => exact leaf_10730
  | 31, _, _ => exact leaf_10731
  | 32, _, _ => exact leaf_10732
  | 33, _, _ => exact leaf_10733
  | 34, _, _ => exact leaf_10734
  | 35, _, _ => exact leaf_10735
  | 36, _, _ => exact leaf_10736
  | 37, _, _ => exact leaf_10737
  | 38, _, _ => exact leaf_10738
  | 39, _, _ => exact leaf_10739
  | 40, _, _ => exact leaf_10740
  | 41, _, _ => exact leaf_10741
  | 42, _, _ => exact leaf_10742
  | 43, _, _ => exact leaf_10743
  | 44, _, _ => exact leaf_10744
  | 45, _, _ => exact leaf_10745
  | 46, _, _ => exact leaf_10746
  | 47, _, _ => exact leaf_10747
  | 48, _, _ => exact leaf_10748
  | 49, _, _ => exact leaf_10749
  | 50, _, _ => exact leaf_10750
  | 51, _, _ => exact leaf_10751
  | 52, _, _ => exact leaf_10752
  | 53, _, _ => exact leaf_10753
  | 54, _, _ => exact leaf_10754
  | 55, _, _ => exact leaf_10755
  | 56, _, _ => exact leaf_10756
  | 57, _, _ => exact leaf_10757
  | 58, _, _ => exact leaf_10758
  | 59, _, _ => exact leaf_10759
  | 60, _, _ => exact leaf_10760
  | 61, _, _ => exact leaf_10761
  | 62, _, _ => exact leaf_10762
  | 63, _, _ => exact leaf_10763
  | 64, _, _ => exact leaf_10764
  | 65, _, _ => exact leaf_10765
  | 66, _, _ => exact leaf_10766
  | 67, _, _ => exact leaf_10767
  | 68, _, _ => exact leaf_10768
  | 69, _, _ => exact leaf_10769
  | 70, _, _ => exact leaf_10770
  | 71, _, _ => exact leaf_10771
  | 72, _, _ => exact leaf_10772
  | 73, _, _ => exact leaf_10773
  | 74, _, _ => exact leaf_10774
  | 75, _, _ => exact leaf_10775
  | 76, _, _ => exact leaf_10776
  | 77, _, _ => exact leaf_10777
  | 78, _, _ => exact leaf_10778
  | 79, _, _ => exact leaf_10779
  | 80, _, _ => exact leaf_10780
  | 81, _, _ => exact leaf_10781
  | 82, _, _ => exact leaf_10782
  | 83, _, _ => exact leaf_10783
  | 84, _, _ => exact leaf_10784
  | 85, _, _ => exact leaf_10785
  | 86, _, _ => exact leaf_10786
  | 87, _, _ => exact leaf_10787
  | 88, _, _ => exact leaf_10788
  | 89, _, _ => exact leaf_10789
  | 90, _, _ => exact leaf_10790
  | 91, _, _ => exact leaf_10791
  | 92, _, _ => exact leaf_10792
  | 93, _, _ => exact leaf_10793
  | 94, _, _ => exact leaf_10794
  | 95, _, _ => exact leaf_10795
  | 96, _, _ => exact leaf_10796
  | 97, _, _ => exact leaf_10797
  | 98, _, _ => exact leaf_10798
  | 99, _, _ => exact leaf_10799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
