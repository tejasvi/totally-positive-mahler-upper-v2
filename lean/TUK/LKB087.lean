import TUK.Leaf08700
import TUK.Leaf08701
import TUK.Leaf08702
import TUK.Leaf08703
import TUK.Leaf08704
import TUK.Leaf08705
import TUK.Leaf08706
import TUK.Leaf08707
import TUK.Leaf08708
import TUK.Leaf08709
import TUK.Leaf08710
import TUK.Leaf08711
import TUK.Leaf08712
import TUK.Leaf08713
import TUK.Leaf08714
import TUK.Leaf08715
import TUK.Leaf08716
import TUK.Leaf08717
import TUK.Leaf08718
import TUK.Leaf08719
import TUK.Leaf08720
import TUK.Leaf08721
import TUK.Leaf08722
import TUK.Leaf08723
import TUK.Leaf08724
import TUK.Leaf08725
import TUK.Leaf08726
import TUK.Leaf08727
import TUK.Leaf08728
import TUK.Leaf08729
import TUK.Leaf08730
import TUK.Leaf08731
import TUK.Leaf08732
import TUK.Leaf08733
import TUK.Leaf08734
import TUK.Leaf08735
import TUK.Leaf08736
import TUK.Leaf08737
import TUK.Leaf08738
import TUK.Leaf08739
import TUK.Leaf08740
import TUK.Leaf08741
import TUK.Leaf08742
import TUK.Leaf08743
import TUK.Leaf08744
import TUK.Leaf08745
import TUK.Leaf08746
import TUK.Leaf08747
import TUK.Leaf08748
import TUK.Leaf08749
import TUK.Leaf08750
import TUK.Leaf08751
import TUK.Leaf08752
import TUK.Leaf08753
import TUK.Leaf08754
import TUK.Leaf08755
import TUK.Leaf08756
import TUK.Leaf08757
import TUK.Leaf08758
import TUK.Leaf08759
import TUK.Leaf08760
import TUK.Leaf08761
import TUK.Leaf08762
import TUK.Leaf08763
import TUK.Leaf08764
import TUK.Leaf08765
import TUK.Leaf08766
import TUK.Leaf08767
import TUK.Leaf08768
import TUK.Leaf08769
import TUK.Leaf08770
import TUK.Leaf08771
import TUK.Leaf08772
import TUK.Leaf08773
import TUK.Leaf08774
import TUK.Leaf08775
import TUK.Leaf08776
import TUK.Leaf08777
import TUK.Leaf08778
import TUK.Leaf08779
import TUK.Leaf08780
import TUK.Leaf08781
import TUK.Leaf08782
import TUK.Leaf08783
import TUK.Leaf08784
import TUK.Leaf08785
import TUK.Leaf08786
import TUK.Leaf08787
import TUK.Leaf08788
import TUK.Leaf08789
import TUK.Leaf08790
import TUK.Leaf08791
import TUK.Leaf08792
import TUK.Leaf08793
import TUK.Leaf08794
import TUK.Leaf08795
import TUK.Leaf08796
import TUK.Leaf08797
import TUK.Leaf08798
import TUK.Leaf08799

/-! Leaves 8700 .. 8799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_87 : ∀ j < 100, 100 * 87 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 87 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_08700
  | 1, _, _ => exact leaf_08701
  | 2, _, _ => exact leaf_08702
  | 3, _, _ => exact leaf_08703
  | 4, _, _ => exact leaf_08704
  | 5, _, _ => exact leaf_08705
  | 6, _, _ => exact leaf_08706
  | 7, _, _ => exact leaf_08707
  | 8, _, _ => exact leaf_08708
  | 9, _, _ => exact leaf_08709
  | 10, _, _ => exact leaf_08710
  | 11, _, _ => exact leaf_08711
  | 12, _, _ => exact leaf_08712
  | 13, _, _ => exact leaf_08713
  | 14, _, _ => exact leaf_08714
  | 15, _, _ => exact leaf_08715
  | 16, _, _ => exact leaf_08716
  | 17, _, _ => exact leaf_08717
  | 18, _, _ => exact leaf_08718
  | 19, _, _ => exact leaf_08719
  | 20, _, _ => exact leaf_08720
  | 21, _, _ => exact leaf_08721
  | 22, _, _ => exact leaf_08722
  | 23, _, _ => exact leaf_08723
  | 24, _, _ => exact leaf_08724
  | 25, _, _ => exact leaf_08725
  | 26, _, _ => exact leaf_08726
  | 27, _, _ => exact leaf_08727
  | 28, _, _ => exact leaf_08728
  | 29, _, _ => exact leaf_08729
  | 30, _, _ => exact leaf_08730
  | 31, _, _ => exact leaf_08731
  | 32, _, _ => exact leaf_08732
  | 33, _, _ => exact leaf_08733
  | 34, _, _ => exact leaf_08734
  | 35, _, _ => exact leaf_08735
  | 36, _, _ => exact leaf_08736
  | 37, _, _ => exact leaf_08737
  | 38, _, _ => exact leaf_08738
  | 39, _, _ => exact leaf_08739
  | 40, _, _ => exact leaf_08740
  | 41, _, _ => exact leaf_08741
  | 42, _, _ => exact leaf_08742
  | 43, _, _ => exact leaf_08743
  | 44, _, _ => exact leaf_08744
  | 45, _, _ => exact leaf_08745
  | 46, _, _ => exact leaf_08746
  | 47, _, _ => exact leaf_08747
  | 48, _, _ => exact leaf_08748
  | 49, _, _ => exact leaf_08749
  | 50, _, _ => exact leaf_08750
  | 51, _, _ => exact leaf_08751
  | 52, _, _ => exact leaf_08752
  | 53, _, _ => exact leaf_08753
  | 54, _, _ => exact leaf_08754
  | 55, _, _ => exact leaf_08755
  | 56, _, _ => exact leaf_08756
  | 57, _, _ => exact leaf_08757
  | 58, _, _ => exact leaf_08758
  | 59, _, _ => exact leaf_08759
  | 60, _, _ => exact leaf_08760
  | 61, _, _ => exact leaf_08761
  | 62, _, _ => exact leaf_08762
  | 63, _, _ => exact leaf_08763
  | 64, _, _ => exact leaf_08764
  | 65, _, _ => exact leaf_08765
  | 66, _, _ => exact leaf_08766
  | 67, _, _ => exact leaf_08767
  | 68, _, _ => exact leaf_08768
  | 69, _, _ => exact leaf_08769
  | 70, _, _ => exact leaf_08770
  | 71, _, _ => exact leaf_08771
  | 72, _, _ => exact leaf_08772
  | 73, _, _ => exact leaf_08773
  | 74, _, _ => exact leaf_08774
  | 75, _, _ => exact leaf_08775
  | 76, _, _ => exact leaf_08776
  | 77, _, _ => exact leaf_08777
  | 78, _, _ => exact leaf_08778
  | 79, _, _ => exact leaf_08779
  | 80, _, _ => exact leaf_08780
  | 81, _, _ => exact leaf_08781
  | 82, _, _ => exact leaf_08782
  | 83, _, _ => exact leaf_08783
  | 84, _, _ => exact leaf_08784
  | 85, _, _ => exact leaf_08785
  | 86, _, _ => exact leaf_08786
  | 87, _, _ => exact leaf_08787
  | 88, _, _ => exact leaf_08788
  | 89, _, _ => exact leaf_08789
  | 90, _, _ => exact leaf_08790
  | 91, _, _ => exact leaf_08791
  | 92, _, _ => exact leaf_08792
  | 93, _, _ => exact leaf_08793
  | 94, _, _ => exact leaf_08794
  | 95, _, _ => exact leaf_08795
  | 96, _, _ => exact leaf_08796
  | 97, _, _ => exact leaf_08797
  | 98, _, _ => exact leaf_08798
  | 99, _, _ => exact leaf_08799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
