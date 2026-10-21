import TUK.Leaf06700
import TUK.Leaf06701
import TUK.Leaf06702
import TUK.Leaf06703
import TUK.Leaf06704
import TUK.Leaf06705
import TUK.Leaf06706
import TUK.Leaf06707
import TUK.Leaf06708
import TUK.Leaf06709
import TUK.Leaf06710
import TUK.Leaf06711
import TUK.Leaf06712
import TUK.Leaf06713
import TUK.Leaf06714
import TUK.Leaf06715
import TUK.Leaf06716
import TUK.Leaf06717
import TUK.Leaf06718
import TUK.Leaf06719
import TUK.Leaf06720
import TUK.Leaf06721
import TUK.Leaf06722
import TUK.Leaf06723
import TUK.Leaf06724
import TUK.Leaf06725
import TUK.Leaf06726
import TUK.Leaf06727
import TUK.Leaf06728
import TUK.Leaf06729
import TUK.Leaf06730
import TUK.Leaf06731
import TUK.Leaf06732
import TUK.Leaf06733
import TUK.Leaf06734
import TUK.Leaf06735
import TUK.Leaf06736
import TUK.Leaf06737
import TUK.Leaf06738
import TUK.Leaf06739
import TUK.Leaf06740
import TUK.Leaf06741
import TUK.Leaf06742
import TUK.Leaf06743
import TUK.Leaf06744
import TUK.Leaf06745
import TUK.Leaf06746
import TUK.Leaf06747
import TUK.Leaf06748
import TUK.Leaf06749
import TUK.Leaf06750
import TUK.Leaf06751
import TUK.Leaf06752
import TUK.Leaf06753
import TUK.Leaf06754
import TUK.Leaf06755
import TUK.Leaf06756
import TUK.Leaf06757
import TUK.Leaf06758
import TUK.Leaf06759
import TUK.Leaf06760
import TUK.Leaf06761
import TUK.Leaf06762
import TUK.Leaf06763
import TUK.Leaf06764
import TUK.Leaf06765
import TUK.Leaf06766
import TUK.Leaf06767
import TUK.Leaf06768
import TUK.Leaf06769
import TUK.Leaf06770
import TUK.Leaf06771
import TUK.Leaf06772
import TUK.Leaf06773
import TUK.Leaf06774
import TUK.Leaf06775
import TUK.Leaf06776
import TUK.Leaf06777
import TUK.Leaf06778
import TUK.Leaf06779
import TUK.Leaf06780
import TUK.Leaf06781
import TUK.Leaf06782
import TUK.Leaf06783
import TUK.Leaf06784
import TUK.Leaf06785
import TUK.Leaf06786
import TUK.Leaf06787
import TUK.Leaf06788
import TUK.Leaf06789
import TUK.Leaf06790
import TUK.Leaf06791
import TUK.Leaf06792
import TUK.Leaf06793
import TUK.Leaf06794
import TUK.Leaf06795
import TUK.Leaf06796
import TUK.Leaf06797
import TUK.Leaf06798
import TUK.Leaf06799

/-! Leaves 6700 .. 6799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_67 : ∀ j < 100, 100 * 67 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 67 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_06700
  | 1, _, _ => exact leaf_06701
  | 2, _, _ => exact leaf_06702
  | 3, _, _ => exact leaf_06703
  | 4, _, _ => exact leaf_06704
  | 5, _, _ => exact leaf_06705
  | 6, _, _ => exact leaf_06706
  | 7, _, _ => exact leaf_06707
  | 8, _, _ => exact leaf_06708
  | 9, _, _ => exact leaf_06709
  | 10, _, _ => exact leaf_06710
  | 11, _, _ => exact leaf_06711
  | 12, _, _ => exact leaf_06712
  | 13, _, _ => exact leaf_06713
  | 14, _, _ => exact leaf_06714
  | 15, _, _ => exact leaf_06715
  | 16, _, _ => exact leaf_06716
  | 17, _, _ => exact leaf_06717
  | 18, _, _ => exact leaf_06718
  | 19, _, _ => exact leaf_06719
  | 20, _, _ => exact leaf_06720
  | 21, _, _ => exact leaf_06721
  | 22, _, _ => exact leaf_06722
  | 23, _, _ => exact leaf_06723
  | 24, _, _ => exact leaf_06724
  | 25, _, _ => exact leaf_06725
  | 26, _, _ => exact leaf_06726
  | 27, _, _ => exact leaf_06727
  | 28, _, _ => exact leaf_06728
  | 29, _, _ => exact leaf_06729
  | 30, _, _ => exact leaf_06730
  | 31, _, _ => exact leaf_06731
  | 32, _, _ => exact leaf_06732
  | 33, _, _ => exact leaf_06733
  | 34, _, _ => exact leaf_06734
  | 35, _, _ => exact leaf_06735
  | 36, _, _ => exact leaf_06736
  | 37, _, _ => exact leaf_06737
  | 38, _, _ => exact leaf_06738
  | 39, _, _ => exact leaf_06739
  | 40, _, _ => exact leaf_06740
  | 41, _, _ => exact leaf_06741
  | 42, _, _ => exact leaf_06742
  | 43, _, _ => exact leaf_06743
  | 44, _, _ => exact leaf_06744
  | 45, _, _ => exact leaf_06745
  | 46, _, _ => exact leaf_06746
  | 47, _, _ => exact leaf_06747
  | 48, _, _ => exact leaf_06748
  | 49, _, _ => exact leaf_06749
  | 50, _, _ => exact leaf_06750
  | 51, _, _ => exact leaf_06751
  | 52, _, _ => exact leaf_06752
  | 53, _, _ => exact leaf_06753
  | 54, _, _ => exact leaf_06754
  | 55, _, _ => exact leaf_06755
  | 56, _, _ => exact leaf_06756
  | 57, _, _ => exact leaf_06757
  | 58, _, _ => exact leaf_06758
  | 59, _, _ => exact leaf_06759
  | 60, _, _ => exact leaf_06760
  | 61, _, _ => exact leaf_06761
  | 62, _, _ => exact leaf_06762
  | 63, _, _ => exact leaf_06763
  | 64, _, _ => exact leaf_06764
  | 65, _, _ => exact leaf_06765
  | 66, _, _ => exact leaf_06766
  | 67, _, _ => exact leaf_06767
  | 68, _, _ => exact leaf_06768
  | 69, _, _ => exact leaf_06769
  | 70, _, _ => exact leaf_06770
  | 71, _, _ => exact leaf_06771
  | 72, _, _ => exact leaf_06772
  | 73, _, _ => exact leaf_06773
  | 74, _, _ => exact leaf_06774
  | 75, _, _ => exact leaf_06775
  | 76, _, _ => exact leaf_06776
  | 77, _, _ => exact leaf_06777
  | 78, _, _ => exact leaf_06778
  | 79, _, _ => exact leaf_06779
  | 80, _, _ => exact leaf_06780
  | 81, _, _ => exact leaf_06781
  | 82, _, _ => exact leaf_06782
  | 83, _, _ => exact leaf_06783
  | 84, _, _ => exact leaf_06784
  | 85, _, _ => exact leaf_06785
  | 86, _, _ => exact leaf_06786
  | 87, _, _ => exact leaf_06787
  | 88, _, _ => exact leaf_06788
  | 89, _, _ => exact leaf_06789
  | 90, _, _ => exact leaf_06790
  | 91, _, _ => exact leaf_06791
  | 92, _, _ => exact leaf_06792
  | 93, _, _ => exact leaf_06793
  | 94, _, _ => exact leaf_06794
  | 95, _, _ => exact leaf_06795
  | 96, _, _ => exact leaf_06796
  | 97, _, _ => exact leaf_06797
  | 98, _, _ => exact leaf_06798
  | 99, _, _ => exact leaf_06799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
