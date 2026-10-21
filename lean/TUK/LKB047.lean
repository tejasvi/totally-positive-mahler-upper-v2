import TUK.Leaf04700
import TUK.Leaf04701
import TUK.Leaf04702
import TUK.Leaf04703
import TUK.Leaf04704
import TUK.Leaf04705
import TUK.Leaf04706
import TUK.Leaf04707
import TUK.Leaf04708
import TUK.Leaf04709
import TUK.Leaf04710
import TUK.Leaf04711
import TUK.Leaf04712
import TUK.Leaf04713
import TUK.Leaf04714
import TUK.Leaf04715
import TUK.Leaf04716
import TUK.Leaf04717
import TUK.Leaf04718
import TUK.Leaf04719
import TUK.Leaf04720
import TUK.Leaf04721
import TUK.Leaf04722
import TUK.Leaf04723
import TUK.Leaf04724
import TUK.Leaf04725
import TUK.Leaf04726
import TUK.Leaf04727
import TUK.Leaf04728
import TUK.Leaf04729
import TUK.Leaf04730
import TUK.Leaf04731
import TUK.Leaf04732
import TUK.Leaf04733
import TUK.Leaf04734
import TUK.Leaf04735
import TUK.Leaf04736
import TUK.Leaf04737
import TUK.Leaf04738
import TUK.Leaf04739
import TUK.Leaf04740
import TUK.Leaf04741
import TUK.Leaf04742
import TUK.Leaf04743
import TUK.Leaf04744
import TUK.Leaf04745
import TUK.Leaf04746
import TUK.Leaf04747
import TUK.Leaf04748
import TUK.Leaf04749
import TUK.Leaf04750
import TUK.Leaf04751
import TUK.Leaf04752
import TUK.Leaf04753
import TUK.Leaf04754
import TUK.Leaf04755
import TUK.Leaf04756
import TUK.Leaf04757
import TUK.Leaf04758
import TUK.Leaf04759
import TUK.Leaf04760
import TUK.Leaf04761
import TUK.Leaf04762
import TUK.Leaf04763
import TUK.Leaf04764
import TUK.Leaf04765
import TUK.Leaf04766
import TUK.Leaf04767
import TUK.Leaf04768
import TUK.Leaf04769
import TUK.Leaf04770
import TUK.Leaf04771
import TUK.Leaf04772
import TUK.Leaf04773
import TUK.Leaf04774
import TUK.Leaf04775
import TUK.Leaf04776
import TUK.Leaf04777
import TUK.Leaf04778
import TUK.Leaf04779
import TUK.Leaf04780
import TUK.Leaf04781
import TUK.Leaf04782
import TUK.Leaf04783
import TUK.Leaf04784
import TUK.Leaf04785
import TUK.Leaf04786
import TUK.Leaf04787
import TUK.Leaf04788
import TUK.Leaf04789
import TUK.Leaf04790
import TUK.Leaf04791
import TUK.Leaf04792
import TUK.Leaf04793
import TUK.Leaf04794
import TUK.Leaf04795
import TUK.Leaf04796
import TUK.Leaf04797
import TUK.Leaf04798
import TUK.Leaf04799

/-! Leaves 4700 .. 4799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_47 : ∀ j < 100, 100 * 47 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 47 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_04700
  | 1, _, _ => exact leaf_04701
  | 2, _, _ => exact leaf_04702
  | 3, _, _ => exact leaf_04703
  | 4, _, _ => exact leaf_04704
  | 5, _, _ => exact leaf_04705
  | 6, _, _ => exact leaf_04706
  | 7, _, _ => exact leaf_04707
  | 8, _, _ => exact leaf_04708
  | 9, _, _ => exact leaf_04709
  | 10, _, _ => exact leaf_04710
  | 11, _, _ => exact leaf_04711
  | 12, _, _ => exact leaf_04712
  | 13, _, _ => exact leaf_04713
  | 14, _, _ => exact leaf_04714
  | 15, _, _ => exact leaf_04715
  | 16, _, _ => exact leaf_04716
  | 17, _, _ => exact leaf_04717
  | 18, _, _ => exact leaf_04718
  | 19, _, _ => exact leaf_04719
  | 20, _, _ => exact leaf_04720
  | 21, _, _ => exact leaf_04721
  | 22, _, _ => exact leaf_04722
  | 23, _, _ => exact leaf_04723
  | 24, _, _ => exact leaf_04724
  | 25, _, _ => exact leaf_04725
  | 26, _, _ => exact leaf_04726
  | 27, _, _ => exact leaf_04727
  | 28, _, _ => exact leaf_04728
  | 29, _, _ => exact leaf_04729
  | 30, _, _ => exact leaf_04730
  | 31, _, _ => exact leaf_04731
  | 32, _, _ => exact leaf_04732
  | 33, _, _ => exact leaf_04733
  | 34, _, _ => exact leaf_04734
  | 35, _, _ => exact leaf_04735
  | 36, _, _ => exact leaf_04736
  | 37, _, _ => exact leaf_04737
  | 38, _, _ => exact leaf_04738
  | 39, _, _ => exact leaf_04739
  | 40, _, _ => exact leaf_04740
  | 41, _, _ => exact leaf_04741
  | 42, _, _ => exact leaf_04742
  | 43, _, _ => exact leaf_04743
  | 44, _, _ => exact leaf_04744
  | 45, _, _ => exact leaf_04745
  | 46, _, _ => exact leaf_04746
  | 47, _, _ => exact leaf_04747
  | 48, _, _ => exact leaf_04748
  | 49, _, _ => exact leaf_04749
  | 50, _, _ => exact leaf_04750
  | 51, _, _ => exact leaf_04751
  | 52, _, _ => exact leaf_04752
  | 53, _, _ => exact leaf_04753
  | 54, _, _ => exact leaf_04754
  | 55, _, _ => exact leaf_04755
  | 56, _, _ => exact leaf_04756
  | 57, _, _ => exact leaf_04757
  | 58, _, _ => exact leaf_04758
  | 59, _, _ => exact leaf_04759
  | 60, _, _ => exact leaf_04760
  | 61, _, _ => exact leaf_04761
  | 62, _, _ => exact leaf_04762
  | 63, _, _ => exact leaf_04763
  | 64, _, _ => exact leaf_04764
  | 65, _, _ => exact leaf_04765
  | 66, _, _ => exact leaf_04766
  | 67, _, _ => exact leaf_04767
  | 68, _, _ => exact leaf_04768
  | 69, _, _ => exact leaf_04769
  | 70, _, _ => exact leaf_04770
  | 71, _, _ => exact leaf_04771
  | 72, _, _ => exact leaf_04772
  | 73, _, _ => exact leaf_04773
  | 74, _, _ => exact leaf_04774
  | 75, _, _ => exact leaf_04775
  | 76, _, _ => exact leaf_04776
  | 77, _, _ => exact leaf_04777
  | 78, _, _ => exact leaf_04778
  | 79, _, _ => exact leaf_04779
  | 80, _, _ => exact leaf_04780
  | 81, _, _ => exact leaf_04781
  | 82, _, _ => exact leaf_04782
  | 83, _, _ => exact leaf_04783
  | 84, _, _ => exact leaf_04784
  | 85, _, _ => exact leaf_04785
  | 86, _, _ => exact leaf_04786
  | 87, _, _ => exact leaf_04787
  | 88, _, _ => exact leaf_04788
  | 89, _, _ => exact leaf_04789
  | 90, _, _ => exact leaf_04790
  | 91, _, _ => exact leaf_04791
  | 92, _, _ => exact leaf_04792
  | 93, _, _ => exact leaf_04793
  | 94, _, _ => exact leaf_04794
  | 95, _, _ => exact leaf_04795
  | 96, _, _ => exact leaf_04796
  | 97, _, _ => exact leaf_04797
  | 98, _, _ => exact leaf_04798
  | 99, _, _ => exact leaf_04799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
