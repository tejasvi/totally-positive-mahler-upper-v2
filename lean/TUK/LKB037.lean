import TUK.Leaf03700
import TUK.Leaf03701
import TUK.Leaf03702
import TUK.Leaf03703
import TUK.Leaf03704
import TUK.Leaf03705
import TUK.Leaf03706
import TUK.Leaf03707
import TUK.Leaf03708
import TUK.Leaf03709
import TUK.Leaf03710
import TUK.Leaf03711
import TUK.Leaf03712
import TUK.Leaf03713
import TUK.Leaf03714
import TUK.Leaf03715
import TUK.Leaf03716
import TUK.Leaf03717
import TUK.Leaf03718
import TUK.Leaf03719
import TUK.Leaf03720
import TUK.Leaf03721
import TUK.Leaf03722
import TUK.Leaf03723
import TUK.Leaf03724
import TUK.Leaf03725
import TUK.Leaf03726
import TUK.Leaf03727
import TUK.Leaf03728
import TUK.Leaf03729
import TUK.Leaf03730
import TUK.Leaf03731
import TUK.Leaf03732
import TUK.Leaf03733
import TUK.Leaf03734
import TUK.Leaf03735
import TUK.Leaf03736
import TUK.Leaf03737
import TUK.Leaf03738
import TUK.Leaf03739
import TUK.Leaf03740
import TUK.Leaf03741
import TUK.Leaf03742
import TUK.Leaf03743
import TUK.Leaf03744
import TUK.Leaf03745
import TUK.Leaf03746
import TUK.Leaf03747
import TUK.Leaf03748
import TUK.Leaf03749
import TUK.Leaf03750
import TUK.Leaf03751
import TUK.Leaf03752
import TUK.Leaf03753
import TUK.Leaf03754
import TUK.Leaf03755
import TUK.Leaf03756
import TUK.Leaf03757
import TUK.Leaf03758
import TUK.Leaf03759
import TUK.Leaf03760
import TUK.Leaf03761
import TUK.Leaf03762
import TUK.Leaf03763
import TUK.Leaf03764
import TUK.Leaf03765
import TUK.Leaf03766
import TUK.Leaf03767
import TUK.Leaf03768
import TUK.Leaf03769
import TUK.Leaf03770
import TUK.Leaf03771
import TUK.Leaf03772
import TUK.Leaf03773
import TUK.Leaf03774
import TUK.Leaf03775
import TUK.Leaf03776
import TUK.Leaf03777
import TUK.Leaf03778
import TUK.Leaf03779
import TUK.Leaf03780
import TUK.Leaf03781
import TUK.Leaf03782
import TUK.Leaf03783
import TUK.Leaf03784
import TUK.Leaf03785
import TUK.Leaf03786
import TUK.Leaf03787
import TUK.Leaf03788
import TUK.Leaf03789
import TUK.Leaf03790
import TUK.Leaf03791
import TUK.Leaf03792
import TUK.Leaf03793
import TUK.Leaf03794
import TUK.Leaf03795
import TUK.Leaf03796
import TUK.Leaf03797
import TUK.Leaf03798
import TUK.Leaf03799

/-! Leaves 3700 .. 3799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_37 : ∀ j < 100, 100 * 37 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 37 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_03700
  | 1, _, _ => exact leaf_03701
  | 2, _, _ => exact leaf_03702
  | 3, _, _ => exact leaf_03703
  | 4, _, _ => exact leaf_03704
  | 5, _, _ => exact leaf_03705
  | 6, _, _ => exact leaf_03706
  | 7, _, _ => exact leaf_03707
  | 8, _, _ => exact leaf_03708
  | 9, _, _ => exact leaf_03709
  | 10, _, _ => exact leaf_03710
  | 11, _, _ => exact leaf_03711
  | 12, _, _ => exact leaf_03712
  | 13, _, _ => exact leaf_03713
  | 14, _, _ => exact leaf_03714
  | 15, _, _ => exact leaf_03715
  | 16, _, _ => exact leaf_03716
  | 17, _, _ => exact leaf_03717
  | 18, _, _ => exact leaf_03718
  | 19, _, _ => exact leaf_03719
  | 20, _, _ => exact leaf_03720
  | 21, _, _ => exact leaf_03721
  | 22, _, _ => exact leaf_03722
  | 23, _, _ => exact leaf_03723
  | 24, _, _ => exact leaf_03724
  | 25, _, _ => exact leaf_03725
  | 26, _, _ => exact leaf_03726
  | 27, _, _ => exact leaf_03727
  | 28, _, _ => exact leaf_03728
  | 29, _, _ => exact leaf_03729
  | 30, _, _ => exact leaf_03730
  | 31, _, _ => exact leaf_03731
  | 32, _, _ => exact leaf_03732
  | 33, _, _ => exact leaf_03733
  | 34, _, _ => exact leaf_03734
  | 35, _, _ => exact leaf_03735
  | 36, _, _ => exact leaf_03736
  | 37, _, _ => exact leaf_03737
  | 38, _, _ => exact leaf_03738
  | 39, _, _ => exact leaf_03739
  | 40, _, _ => exact leaf_03740
  | 41, _, _ => exact leaf_03741
  | 42, _, _ => exact leaf_03742
  | 43, _, _ => exact leaf_03743
  | 44, _, _ => exact leaf_03744
  | 45, _, _ => exact leaf_03745
  | 46, _, _ => exact leaf_03746
  | 47, _, _ => exact leaf_03747
  | 48, _, _ => exact leaf_03748
  | 49, _, _ => exact leaf_03749
  | 50, _, _ => exact leaf_03750
  | 51, _, _ => exact leaf_03751
  | 52, _, _ => exact leaf_03752
  | 53, _, _ => exact leaf_03753
  | 54, _, _ => exact leaf_03754
  | 55, _, _ => exact leaf_03755
  | 56, _, _ => exact leaf_03756
  | 57, _, _ => exact leaf_03757
  | 58, _, _ => exact leaf_03758
  | 59, _, _ => exact leaf_03759
  | 60, _, _ => exact leaf_03760
  | 61, _, _ => exact leaf_03761
  | 62, _, _ => exact leaf_03762
  | 63, _, _ => exact leaf_03763
  | 64, _, _ => exact leaf_03764
  | 65, _, _ => exact leaf_03765
  | 66, _, _ => exact leaf_03766
  | 67, _, _ => exact leaf_03767
  | 68, _, _ => exact leaf_03768
  | 69, _, _ => exact leaf_03769
  | 70, _, _ => exact leaf_03770
  | 71, _, _ => exact leaf_03771
  | 72, _, _ => exact leaf_03772
  | 73, _, _ => exact leaf_03773
  | 74, _, _ => exact leaf_03774
  | 75, _, _ => exact leaf_03775
  | 76, _, _ => exact leaf_03776
  | 77, _, _ => exact leaf_03777
  | 78, _, _ => exact leaf_03778
  | 79, _, _ => exact leaf_03779
  | 80, _, _ => exact leaf_03780
  | 81, _, _ => exact leaf_03781
  | 82, _, _ => exact leaf_03782
  | 83, _, _ => exact leaf_03783
  | 84, _, _ => exact leaf_03784
  | 85, _, _ => exact leaf_03785
  | 86, _, _ => exact leaf_03786
  | 87, _, _ => exact leaf_03787
  | 88, _, _ => exact leaf_03788
  | 89, _, _ => exact leaf_03789
  | 90, _, _ => exact leaf_03790
  | 91, _, _ => exact leaf_03791
  | 92, _, _ => exact leaf_03792
  | 93, _, _ => exact leaf_03793
  | 94, _, _ => exact leaf_03794
  | 95, _, _ => exact leaf_03795
  | 96, _, _ => exact leaf_03796
  | 97, _, _ => exact leaf_03797
  | 98, _, _ => exact leaf_03798
  | 99, _, _ => exact leaf_03799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
