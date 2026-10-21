import TUK.Leaf05700
import TUK.Leaf05701
import TUK.Leaf05702
import TUK.Leaf05703
import TUK.Leaf05704
import TUK.Leaf05705
import TUK.Leaf05706
import TUK.Leaf05707
import TUK.Leaf05708
import TUK.Leaf05709
import TUK.Leaf05710
import TUK.Leaf05711
import TUK.Leaf05712
import TUK.Leaf05713
import TUK.Leaf05714
import TUK.Leaf05715
import TUK.Leaf05716
import TUK.Leaf05717
import TUK.Leaf05718
import TUK.Leaf05719
import TUK.Leaf05720
import TUK.Leaf05721
import TUK.Leaf05722
import TUK.Leaf05723
import TUK.Leaf05724
import TUK.Leaf05725
import TUK.Leaf05726
import TUK.Leaf05727
import TUK.Leaf05728
import TUK.Leaf05729
import TUK.Leaf05730
import TUK.Leaf05731
import TUK.Leaf05732
import TUK.Leaf05733
import TUK.Leaf05734
import TUK.Leaf05735
import TUK.Leaf05736
import TUK.Leaf05737
import TUK.Leaf05738
import TUK.Leaf05739
import TUK.Leaf05740
import TUK.Leaf05741
import TUK.Leaf05742
import TUK.Leaf05743
import TUK.Leaf05744
import TUK.Leaf05745
import TUK.Leaf05746
import TUK.Leaf05747
import TUK.Leaf05748
import TUK.Leaf05749
import TUK.Leaf05750
import TUK.Leaf05751
import TUK.Leaf05752
import TUK.Leaf05753
import TUK.Leaf05754
import TUK.Leaf05755
import TUK.Leaf05756
import TUK.Leaf05757
import TUK.Leaf05758
import TUK.Leaf05759
import TUK.Leaf05760
import TUK.Leaf05761
import TUK.Leaf05762
import TUK.Leaf05763
import TUK.Leaf05764
import TUK.Leaf05765
import TUK.Leaf05766
import TUK.Leaf05767
import TUK.Leaf05768
import TUK.Leaf05769
import TUK.Leaf05770
import TUK.Leaf05771
import TUK.Leaf05772
import TUK.Leaf05773
import TUK.Leaf05774
import TUK.Leaf05775
import TUK.Leaf05776
import TUK.Leaf05777
import TUK.Leaf05778
import TUK.Leaf05779
import TUK.Leaf05780
import TUK.Leaf05781
import TUK.Leaf05782
import TUK.Leaf05783
import TUK.Leaf05784
import TUK.Leaf05785
import TUK.Leaf05786
import TUK.Leaf05787
import TUK.Leaf05788
import TUK.Leaf05789
import TUK.Leaf05790
import TUK.Leaf05791
import TUK.Leaf05792
import TUK.Leaf05793
import TUK.Leaf05794
import TUK.Leaf05795
import TUK.Leaf05796
import TUK.Leaf05797
import TUK.Leaf05798
import TUK.Leaf05799

/-! Leaves 5700 .. 5799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_57 : ∀ j < 100, 100 * 57 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 57 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_05700
  | 1, _, _ => exact leaf_05701
  | 2, _, _ => exact leaf_05702
  | 3, _, _ => exact leaf_05703
  | 4, _, _ => exact leaf_05704
  | 5, _, _ => exact leaf_05705
  | 6, _, _ => exact leaf_05706
  | 7, _, _ => exact leaf_05707
  | 8, _, _ => exact leaf_05708
  | 9, _, _ => exact leaf_05709
  | 10, _, _ => exact leaf_05710
  | 11, _, _ => exact leaf_05711
  | 12, _, _ => exact leaf_05712
  | 13, _, _ => exact leaf_05713
  | 14, _, _ => exact leaf_05714
  | 15, _, _ => exact leaf_05715
  | 16, _, _ => exact leaf_05716
  | 17, _, _ => exact leaf_05717
  | 18, _, _ => exact leaf_05718
  | 19, _, _ => exact leaf_05719
  | 20, _, _ => exact leaf_05720
  | 21, _, _ => exact leaf_05721
  | 22, _, _ => exact leaf_05722
  | 23, _, _ => exact leaf_05723
  | 24, _, _ => exact leaf_05724
  | 25, _, _ => exact leaf_05725
  | 26, _, _ => exact leaf_05726
  | 27, _, _ => exact leaf_05727
  | 28, _, _ => exact leaf_05728
  | 29, _, _ => exact leaf_05729
  | 30, _, _ => exact leaf_05730
  | 31, _, _ => exact leaf_05731
  | 32, _, _ => exact leaf_05732
  | 33, _, _ => exact leaf_05733
  | 34, _, _ => exact leaf_05734
  | 35, _, _ => exact leaf_05735
  | 36, _, _ => exact leaf_05736
  | 37, _, _ => exact leaf_05737
  | 38, _, _ => exact leaf_05738
  | 39, _, _ => exact leaf_05739
  | 40, _, _ => exact leaf_05740
  | 41, _, _ => exact leaf_05741
  | 42, _, _ => exact leaf_05742
  | 43, _, _ => exact leaf_05743
  | 44, _, _ => exact leaf_05744
  | 45, _, _ => exact leaf_05745
  | 46, _, _ => exact leaf_05746
  | 47, _, _ => exact leaf_05747
  | 48, _, _ => exact leaf_05748
  | 49, _, _ => exact leaf_05749
  | 50, _, _ => exact leaf_05750
  | 51, _, _ => exact leaf_05751
  | 52, _, _ => exact leaf_05752
  | 53, _, _ => exact leaf_05753
  | 54, _, _ => exact leaf_05754
  | 55, _, _ => exact leaf_05755
  | 56, _, _ => exact leaf_05756
  | 57, _, _ => exact leaf_05757
  | 58, _, _ => exact leaf_05758
  | 59, _, _ => exact leaf_05759
  | 60, _, _ => exact leaf_05760
  | 61, _, _ => exact leaf_05761
  | 62, _, _ => exact leaf_05762
  | 63, _, _ => exact leaf_05763
  | 64, _, _ => exact leaf_05764
  | 65, _, _ => exact leaf_05765
  | 66, _, _ => exact leaf_05766
  | 67, _, _ => exact leaf_05767
  | 68, _, _ => exact leaf_05768
  | 69, _, _ => exact leaf_05769
  | 70, _, _ => exact leaf_05770
  | 71, _, _ => exact leaf_05771
  | 72, _, _ => exact leaf_05772
  | 73, _, _ => exact leaf_05773
  | 74, _, _ => exact leaf_05774
  | 75, _, _ => exact leaf_05775
  | 76, _, _ => exact leaf_05776
  | 77, _, _ => exact leaf_05777
  | 78, _, _ => exact leaf_05778
  | 79, _, _ => exact leaf_05779
  | 80, _, _ => exact leaf_05780
  | 81, _, _ => exact leaf_05781
  | 82, _, _ => exact leaf_05782
  | 83, _, _ => exact leaf_05783
  | 84, _, _ => exact leaf_05784
  | 85, _, _ => exact leaf_05785
  | 86, _, _ => exact leaf_05786
  | 87, _, _ => exact leaf_05787
  | 88, _, _ => exact leaf_05788
  | 89, _, _ => exact leaf_05789
  | 90, _, _ => exact leaf_05790
  | 91, _, _ => exact leaf_05791
  | 92, _, _ => exact leaf_05792
  | 93, _, _ => exact leaf_05793
  | 94, _, _ => exact leaf_05794
  | 95, _, _ => exact leaf_05795
  | 96, _, _ => exact leaf_05796
  | 97, _, _ => exact leaf_05797
  | 98, _, _ => exact leaf_05798
  | 99, _, _ => exact leaf_05799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
