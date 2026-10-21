import TUK.Leaf00700
import TUK.Leaf00701
import TUK.Leaf00702
import TUK.Leaf00703
import TUK.Leaf00704
import TUK.Leaf00705
import TUK.Leaf00706
import TUK.Leaf00707
import TUK.Leaf00708
import TUK.Leaf00709
import TUK.Leaf00710
import TUK.Leaf00711
import TUK.Leaf00712
import TUK.Leaf00713
import TUK.Leaf00714
import TUK.Leaf00715
import TUK.Leaf00716
import TUK.Leaf00717
import TUK.Leaf00718
import TUK.Leaf00719
import TUK.Leaf00720
import TUK.Leaf00721
import TUK.Leaf00722
import TUK.Leaf00723
import TUK.Leaf00724
import TUK.Leaf00725
import TUK.Leaf00726
import TUK.Leaf00727
import TUK.Leaf00728
import TUK.Leaf00729
import TUK.Leaf00730
import TUK.Leaf00731
import TUK.Leaf00732
import TUK.Leaf00733
import TUK.Leaf00734
import TUK.Leaf00735
import TUK.Leaf00736
import TUK.Leaf00737
import TUK.Leaf00738
import TUK.Leaf00739
import TUK.Leaf00740
import TUK.Leaf00741
import TUK.Leaf00742
import TUK.Leaf00743
import TUK.Leaf00744
import TUK.Leaf00745
import TUK.Leaf00746
import TUK.Leaf00747
import TUK.Leaf00748
import TUK.Leaf00749
import TUK.Leaf00750
import TUK.Leaf00751
import TUK.Leaf00752
import TUK.Leaf00753
import TUK.Leaf00754
import TUK.Leaf00755
import TUK.Leaf00756
import TUK.Leaf00757
import TUK.Leaf00758
import TUK.Leaf00759
import TUK.Leaf00760
import TUK.Leaf00761
import TUK.Leaf00762
import TUK.Leaf00763
import TUK.Leaf00764
import TUK.Leaf00765
import TUK.Leaf00766
import TUK.Leaf00767
import TUK.Leaf00768
import TUK.Leaf00769
import TUK.Leaf00770
import TUK.Leaf00771
import TUK.Leaf00772
import TUK.Leaf00773
import TUK.Leaf00774
import TUK.Leaf00775
import TUK.Leaf00776
import TUK.Leaf00777
import TUK.Leaf00778
import TUK.Leaf00779
import TUK.Leaf00780
import TUK.Leaf00781
import TUK.Leaf00782
import TUK.Leaf00783
import TUK.Leaf00784
import TUK.Leaf00785
import TUK.Leaf00786
import TUK.Leaf00787
import TUK.Leaf00788
import TUK.Leaf00789
import TUK.Leaf00790
import TUK.Leaf00791
import TUK.Leaf00792
import TUK.Leaf00793
import TUK.Leaf00794
import TUK.Leaf00795
import TUK.Leaf00796
import TUK.Leaf00797
import TUK.Leaf00798
import TUK.Leaf00799

/-! Leaves 700 .. 799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_7 : ∀ j < 100, 100 * 7 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 7 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_00700
  | 1, _, _ => exact leaf_00701
  | 2, _, _ => exact leaf_00702
  | 3, _, _ => exact leaf_00703
  | 4, _, _ => exact leaf_00704
  | 5, _, _ => exact leaf_00705
  | 6, _, _ => exact leaf_00706
  | 7, _, _ => exact leaf_00707
  | 8, _, _ => exact leaf_00708
  | 9, _, _ => exact leaf_00709
  | 10, _, _ => exact leaf_00710
  | 11, _, _ => exact leaf_00711
  | 12, _, _ => exact leaf_00712
  | 13, _, _ => exact leaf_00713
  | 14, _, _ => exact leaf_00714
  | 15, _, _ => exact leaf_00715
  | 16, _, _ => exact leaf_00716
  | 17, _, _ => exact leaf_00717
  | 18, _, _ => exact leaf_00718
  | 19, _, _ => exact leaf_00719
  | 20, _, _ => exact leaf_00720
  | 21, _, _ => exact leaf_00721
  | 22, _, _ => exact leaf_00722
  | 23, _, _ => exact leaf_00723
  | 24, _, _ => exact leaf_00724
  | 25, _, _ => exact leaf_00725
  | 26, _, _ => exact leaf_00726
  | 27, _, _ => exact leaf_00727
  | 28, _, _ => exact leaf_00728
  | 29, _, _ => exact leaf_00729
  | 30, _, _ => exact leaf_00730
  | 31, _, _ => exact leaf_00731
  | 32, _, _ => exact leaf_00732
  | 33, _, _ => exact leaf_00733
  | 34, _, _ => exact leaf_00734
  | 35, _, _ => exact leaf_00735
  | 36, _, _ => exact leaf_00736
  | 37, _, _ => exact leaf_00737
  | 38, _, _ => exact leaf_00738
  | 39, _, _ => exact leaf_00739
  | 40, _, _ => exact leaf_00740
  | 41, _, _ => exact leaf_00741
  | 42, _, _ => exact leaf_00742
  | 43, _, _ => exact leaf_00743
  | 44, _, _ => exact leaf_00744
  | 45, _, _ => exact leaf_00745
  | 46, _, _ => exact leaf_00746
  | 47, _, _ => exact leaf_00747
  | 48, _, _ => exact leaf_00748
  | 49, _, _ => exact leaf_00749
  | 50, _, _ => exact leaf_00750
  | 51, _, _ => exact leaf_00751
  | 52, _, _ => exact leaf_00752
  | 53, _, _ => exact leaf_00753
  | 54, _, _ => exact leaf_00754
  | 55, _, _ => exact leaf_00755
  | 56, _, _ => exact leaf_00756
  | 57, _, _ => exact leaf_00757
  | 58, _, _ => exact leaf_00758
  | 59, _, _ => exact leaf_00759
  | 60, _, _ => exact leaf_00760
  | 61, _, _ => exact leaf_00761
  | 62, _, _ => exact leaf_00762
  | 63, _, _ => exact leaf_00763
  | 64, _, _ => exact leaf_00764
  | 65, _, _ => exact leaf_00765
  | 66, _, _ => exact leaf_00766
  | 67, _, _ => exact leaf_00767
  | 68, _, _ => exact leaf_00768
  | 69, _, _ => exact leaf_00769
  | 70, _, _ => exact leaf_00770
  | 71, _, _ => exact leaf_00771
  | 72, _, _ => exact leaf_00772
  | 73, _, _ => exact leaf_00773
  | 74, _, _ => exact leaf_00774
  | 75, _, _ => exact leaf_00775
  | 76, _, _ => exact leaf_00776
  | 77, _, _ => exact leaf_00777
  | 78, _, _ => exact leaf_00778
  | 79, _, _ => exact leaf_00779
  | 80, _, _ => exact leaf_00780
  | 81, _, _ => exact leaf_00781
  | 82, _, _ => exact leaf_00782
  | 83, _, _ => exact leaf_00783
  | 84, _, _ => exact leaf_00784
  | 85, _, _ => exact leaf_00785
  | 86, _, _ => exact leaf_00786
  | 87, _, _ => exact leaf_00787
  | 88, _, _ => exact leaf_00788
  | 89, _, _ => exact leaf_00789
  | 90, _, _ => exact leaf_00790
  | 91, _, _ => exact leaf_00791
  | 92, _, _ => exact leaf_00792
  | 93, _, _ => exact leaf_00793
  | 94, _, _ => exact leaf_00794
  | 95, _, _ => exact leaf_00795
  | 96, _, _ => exact leaf_00796
  | 97, _, _ => exact leaf_00797
  | 98, _, _ => exact leaf_00798
  | 99, _, _ => exact leaf_00799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
