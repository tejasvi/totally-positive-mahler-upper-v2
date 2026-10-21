import TUK.Leaf01700
import TUK.Leaf01701
import TUK.Leaf01702
import TUK.Leaf01703
import TUK.Leaf01704
import TUK.Leaf01705
import TUK.Leaf01706
import TUK.Leaf01707
import TUK.Leaf01708
import TUK.Leaf01709
import TUK.Leaf01710
import TUK.Leaf01711
import TUK.Leaf01712
import TUK.Leaf01713
import TUK.Leaf01714
import TUK.Leaf01715
import TUK.Leaf01716
import TUK.Leaf01717
import TUK.Leaf01718
import TUK.Leaf01719
import TUK.Leaf01720
import TUK.Leaf01721
import TUK.Leaf01722
import TUK.Leaf01723
import TUK.Leaf01724
import TUK.Leaf01725
import TUK.Leaf01726
import TUK.Leaf01727
import TUK.Leaf01728
import TUK.Leaf01729
import TUK.Leaf01730
import TUK.Leaf01731
import TUK.Leaf01732
import TUK.Leaf01733
import TUK.Leaf01734
import TUK.Leaf01735
import TUK.Leaf01736
import TUK.Leaf01737
import TUK.Leaf01738
import TUK.Leaf01739
import TUK.Leaf01740
import TUK.Leaf01741
import TUK.Leaf01742
import TUK.Leaf01743
import TUK.Leaf01744
import TUK.Leaf01745
import TUK.Leaf01746
import TUK.Leaf01747
import TUK.Leaf01748
import TUK.Leaf01749
import TUK.Leaf01750
import TUK.Leaf01751
import TUK.Leaf01752
import TUK.Leaf01753
import TUK.Leaf01754
import TUK.Leaf01755
import TUK.Leaf01756
import TUK.Leaf01757
import TUK.Leaf01758
import TUK.Leaf01759
import TUK.Leaf01760
import TUK.Leaf01761
import TUK.Leaf01762
import TUK.Leaf01763
import TUK.Leaf01764
import TUK.Leaf01765
import TUK.Leaf01766
import TUK.Leaf01767
import TUK.Leaf01768
import TUK.Leaf01769
import TUK.Leaf01770
import TUK.Leaf01771
import TUK.Leaf01772
import TUK.Leaf01773
import TUK.Leaf01774
import TUK.Leaf01775
import TUK.Leaf01776
import TUK.Leaf01777
import TUK.Leaf01778
import TUK.Leaf01779
import TUK.Leaf01780
import TUK.Leaf01781
import TUK.Leaf01782
import TUK.Leaf01783
import TUK.Leaf01784
import TUK.Leaf01785
import TUK.Leaf01786
import TUK.Leaf01787
import TUK.Leaf01788
import TUK.Leaf01789
import TUK.Leaf01790
import TUK.Leaf01791
import TUK.Leaf01792
import TUK.Leaf01793
import TUK.Leaf01794
import TUK.Leaf01795
import TUK.Leaf01796
import TUK.Leaf01797
import TUK.Leaf01798
import TUK.Leaf01799

/-! Leaves 1700 .. 1799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_17 : ∀ j < 100, 100 * 17 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 17 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_01700
  | 1, _, _ => exact leaf_01701
  | 2, _, _ => exact leaf_01702
  | 3, _, _ => exact leaf_01703
  | 4, _, _ => exact leaf_01704
  | 5, _, _ => exact leaf_01705
  | 6, _, _ => exact leaf_01706
  | 7, _, _ => exact leaf_01707
  | 8, _, _ => exact leaf_01708
  | 9, _, _ => exact leaf_01709
  | 10, _, _ => exact leaf_01710
  | 11, _, _ => exact leaf_01711
  | 12, _, _ => exact leaf_01712
  | 13, _, _ => exact leaf_01713
  | 14, _, _ => exact leaf_01714
  | 15, _, _ => exact leaf_01715
  | 16, _, _ => exact leaf_01716
  | 17, _, _ => exact leaf_01717
  | 18, _, _ => exact leaf_01718
  | 19, _, _ => exact leaf_01719
  | 20, _, _ => exact leaf_01720
  | 21, _, _ => exact leaf_01721
  | 22, _, _ => exact leaf_01722
  | 23, _, _ => exact leaf_01723
  | 24, _, _ => exact leaf_01724
  | 25, _, _ => exact leaf_01725
  | 26, _, _ => exact leaf_01726
  | 27, _, _ => exact leaf_01727
  | 28, _, _ => exact leaf_01728
  | 29, _, _ => exact leaf_01729
  | 30, _, _ => exact leaf_01730
  | 31, _, _ => exact leaf_01731
  | 32, _, _ => exact leaf_01732
  | 33, _, _ => exact leaf_01733
  | 34, _, _ => exact leaf_01734
  | 35, _, _ => exact leaf_01735
  | 36, _, _ => exact leaf_01736
  | 37, _, _ => exact leaf_01737
  | 38, _, _ => exact leaf_01738
  | 39, _, _ => exact leaf_01739
  | 40, _, _ => exact leaf_01740
  | 41, _, _ => exact leaf_01741
  | 42, _, _ => exact leaf_01742
  | 43, _, _ => exact leaf_01743
  | 44, _, _ => exact leaf_01744
  | 45, _, _ => exact leaf_01745
  | 46, _, _ => exact leaf_01746
  | 47, _, _ => exact leaf_01747
  | 48, _, _ => exact leaf_01748
  | 49, _, _ => exact leaf_01749
  | 50, _, _ => exact leaf_01750
  | 51, _, _ => exact leaf_01751
  | 52, _, _ => exact leaf_01752
  | 53, _, _ => exact leaf_01753
  | 54, _, _ => exact leaf_01754
  | 55, _, _ => exact leaf_01755
  | 56, _, _ => exact leaf_01756
  | 57, _, _ => exact leaf_01757
  | 58, _, _ => exact leaf_01758
  | 59, _, _ => exact leaf_01759
  | 60, _, _ => exact leaf_01760
  | 61, _, _ => exact leaf_01761
  | 62, _, _ => exact leaf_01762
  | 63, _, _ => exact leaf_01763
  | 64, _, _ => exact leaf_01764
  | 65, _, _ => exact leaf_01765
  | 66, _, _ => exact leaf_01766
  | 67, _, _ => exact leaf_01767
  | 68, _, _ => exact leaf_01768
  | 69, _, _ => exact leaf_01769
  | 70, _, _ => exact leaf_01770
  | 71, _, _ => exact leaf_01771
  | 72, _, _ => exact leaf_01772
  | 73, _, _ => exact leaf_01773
  | 74, _, _ => exact leaf_01774
  | 75, _, _ => exact leaf_01775
  | 76, _, _ => exact leaf_01776
  | 77, _, _ => exact leaf_01777
  | 78, _, _ => exact leaf_01778
  | 79, _, _ => exact leaf_01779
  | 80, _, _ => exact leaf_01780
  | 81, _, _ => exact leaf_01781
  | 82, _, _ => exact leaf_01782
  | 83, _, _ => exact leaf_01783
  | 84, _, _ => exact leaf_01784
  | 85, _, _ => exact leaf_01785
  | 86, _, _ => exact leaf_01786
  | 87, _, _ => exact leaf_01787
  | 88, _, _ => exact leaf_01788
  | 89, _, _ => exact leaf_01789
  | 90, _, _ => exact leaf_01790
  | 91, _, _ => exact leaf_01791
  | 92, _, _ => exact leaf_01792
  | 93, _, _ => exact leaf_01793
  | 94, _, _ => exact leaf_01794
  | 95, _, _ => exact leaf_01795
  | 96, _, _ => exact leaf_01796
  | 97, _, _ => exact leaf_01797
  | 98, _, _ => exact leaf_01798
  | 99, _, _ => exact leaf_01799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
