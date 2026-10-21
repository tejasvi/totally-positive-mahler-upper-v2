import TUK.Leaf09700
import TUK.Leaf09701
import TUK.Leaf09702
import TUK.Leaf09703
import TUK.Leaf09704
import TUK.Leaf09705
import TUK.Leaf09706
import TUK.Leaf09707
import TUK.Leaf09708
import TUK.Leaf09709
import TUK.Leaf09710
import TUK.Leaf09711
import TUK.Leaf09712
import TUK.Leaf09713
import TUK.Leaf09714
import TUK.Leaf09715
import TUK.Leaf09716
import TUK.Leaf09717
import TUK.Leaf09718
import TUK.Leaf09719
import TUK.Leaf09720
import TUK.Leaf09721
import TUK.Leaf09722
import TUK.Leaf09723
import TUK.Leaf09724
import TUK.Leaf09725
import TUK.Leaf09726
import TUK.Leaf09727
import TUK.Leaf09728
import TUK.Leaf09729
import TUK.Leaf09730
import TUK.Leaf09731
import TUK.Leaf09732
import TUK.Leaf09733
import TUK.Leaf09734
import TUK.Leaf09735
import TUK.Leaf09736
import TUK.Leaf09737
import TUK.Leaf09738
import TUK.Leaf09739
import TUK.Leaf09740
import TUK.Leaf09741
import TUK.Leaf09742
import TUK.Leaf09743
import TUK.Leaf09744
import TUK.Leaf09745
import TUK.Leaf09746
import TUK.Leaf09747
import TUK.Leaf09748
import TUK.Leaf09749
import TUK.Leaf09750
import TUK.Leaf09751
import TUK.Leaf09752
import TUK.Leaf09753
import TUK.Leaf09754
import TUK.Leaf09755
import TUK.Leaf09756
import TUK.Leaf09757
import TUK.Leaf09758
import TUK.Leaf09759
import TUK.Leaf09760
import TUK.Leaf09761
import TUK.Leaf09762
import TUK.Leaf09763
import TUK.Leaf09764
import TUK.Leaf09765
import TUK.Leaf09766
import TUK.Leaf09767
import TUK.Leaf09768
import TUK.Leaf09769
import TUK.Leaf09770
import TUK.Leaf09771
import TUK.Leaf09772
import TUK.Leaf09773
import TUK.Leaf09774
import TUK.Leaf09775
import TUK.Leaf09776
import TUK.Leaf09777
import TUK.Leaf09778
import TUK.Leaf09779
import TUK.Leaf09780
import TUK.Leaf09781
import TUK.Leaf09782
import TUK.Leaf09783
import TUK.Leaf09784
import TUK.Leaf09785
import TUK.Leaf09786
import TUK.Leaf09787
import TUK.Leaf09788
import TUK.Leaf09789
import TUK.Leaf09790
import TUK.Leaf09791
import TUK.Leaf09792
import TUK.Leaf09793
import TUK.Leaf09794
import TUK.Leaf09795
import TUK.Leaf09796
import TUK.Leaf09797
import TUK.Leaf09798
import TUK.Leaf09799

/-! Leaves 9700 .. 9799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_97 : ∀ j < 100, 100 * 97 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 97 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_09700
  | 1, _, _ => exact leaf_09701
  | 2, _, _ => exact leaf_09702
  | 3, _, _ => exact leaf_09703
  | 4, _, _ => exact leaf_09704
  | 5, _, _ => exact leaf_09705
  | 6, _, _ => exact leaf_09706
  | 7, _, _ => exact leaf_09707
  | 8, _, _ => exact leaf_09708
  | 9, _, _ => exact leaf_09709
  | 10, _, _ => exact leaf_09710
  | 11, _, _ => exact leaf_09711
  | 12, _, _ => exact leaf_09712
  | 13, _, _ => exact leaf_09713
  | 14, _, _ => exact leaf_09714
  | 15, _, _ => exact leaf_09715
  | 16, _, _ => exact leaf_09716
  | 17, _, _ => exact leaf_09717
  | 18, _, _ => exact leaf_09718
  | 19, _, _ => exact leaf_09719
  | 20, _, _ => exact leaf_09720
  | 21, _, _ => exact leaf_09721
  | 22, _, _ => exact leaf_09722
  | 23, _, _ => exact leaf_09723
  | 24, _, _ => exact leaf_09724
  | 25, _, _ => exact leaf_09725
  | 26, _, _ => exact leaf_09726
  | 27, _, _ => exact leaf_09727
  | 28, _, _ => exact leaf_09728
  | 29, _, _ => exact leaf_09729
  | 30, _, _ => exact leaf_09730
  | 31, _, _ => exact leaf_09731
  | 32, _, _ => exact leaf_09732
  | 33, _, _ => exact leaf_09733
  | 34, _, _ => exact leaf_09734
  | 35, _, _ => exact leaf_09735
  | 36, _, _ => exact leaf_09736
  | 37, _, _ => exact leaf_09737
  | 38, _, _ => exact leaf_09738
  | 39, _, _ => exact leaf_09739
  | 40, _, _ => exact leaf_09740
  | 41, _, _ => exact leaf_09741
  | 42, _, _ => exact leaf_09742
  | 43, _, _ => exact leaf_09743
  | 44, _, _ => exact leaf_09744
  | 45, _, _ => exact leaf_09745
  | 46, _, _ => exact leaf_09746
  | 47, _, _ => exact leaf_09747
  | 48, _, _ => exact leaf_09748
  | 49, _, _ => exact leaf_09749
  | 50, _, _ => exact leaf_09750
  | 51, _, _ => exact leaf_09751
  | 52, _, _ => exact leaf_09752
  | 53, _, _ => exact leaf_09753
  | 54, _, _ => exact leaf_09754
  | 55, _, _ => exact leaf_09755
  | 56, _, _ => exact leaf_09756
  | 57, _, _ => exact leaf_09757
  | 58, _, _ => exact leaf_09758
  | 59, _, _ => exact leaf_09759
  | 60, _, _ => exact leaf_09760
  | 61, _, _ => exact leaf_09761
  | 62, _, _ => exact leaf_09762
  | 63, _, _ => exact leaf_09763
  | 64, _, _ => exact leaf_09764
  | 65, _, _ => exact leaf_09765
  | 66, _, _ => exact leaf_09766
  | 67, _, _ => exact leaf_09767
  | 68, _, _ => exact leaf_09768
  | 69, _, _ => exact leaf_09769
  | 70, _, _ => exact leaf_09770
  | 71, _, _ => exact leaf_09771
  | 72, _, _ => exact leaf_09772
  | 73, _, _ => exact leaf_09773
  | 74, _, _ => exact leaf_09774
  | 75, _, _ => exact leaf_09775
  | 76, _, _ => exact leaf_09776
  | 77, _, _ => exact leaf_09777
  | 78, _, _ => exact leaf_09778
  | 79, _, _ => exact leaf_09779
  | 80, _, _ => exact leaf_09780
  | 81, _, _ => exact leaf_09781
  | 82, _, _ => exact leaf_09782
  | 83, _, _ => exact leaf_09783
  | 84, _, _ => exact leaf_09784
  | 85, _, _ => exact leaf_09785
  | 86, _, _ => exact leaf_09786
  | 87, _, _ => exact leaf_09787
  | 88, _, _ => exact leaf_09788
  | 89, _, _ => exact leaf_09789
  | 90, _, _ => exact leaf_09790
  | 91, _, _ => exact leaf_09791
  | 92, _, _ => exact leaf_09792
  | 93, _, _ => exact leaf_09793
  | 94, _, _ => exact leaf_09794
  | 95, _, _ => exact leaf_09795
  | 96, _, _ => exact leaf_09796
  | 97, _, _ => exact leaf_09797
  | 98, _, _ => exact leaf_09798
  | 99, _, _ => exact leaf_09799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
