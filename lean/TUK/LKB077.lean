import TUK.Leaf07700
import TUK.Leaf07701
import TUK.Leaf07702
import TUK.Leaf07703
import TUK.Leaf07704
import TUK.Leaf07705
import TUK.Leaf07706
import TUK.Leaf07707
import TUK.Leaf07708
import TUK.Leaf07709
import TUK.Leaf07710
import TUK.Leaf07711
import TUK.Leaf07712
import TUK.Leaf07713
import TUK.Leaf07714
import TUK.Leaf07715
import TUK.Leaf07716
import TUK.Leaf07717
import TUK.Leaf07718
import TUK.Leaf07719
import TUK.Leaf07720
import TUK.Leaf07721
import TUK.Leaf07722
import TUK.Leaf07723
import TUK.Leaf07724
import TUK.Leaf07725
import TUK.Leaf07726
import TUK.Leaf07727
import TUK.Leaf07728
import TUK.Leaf07729
import TUK.Leaf07730
import TUK.Leaf07731
import TUK.Leaf07732
import TUK.Leaf07733
import TUK.Leaf07734
import TUK.Leaf07735
import TUK.Leaf07736
import TUK.Leaf07737
import TUK.Leaf07738
import TUK.Leaf07739
import TUK.Leaf07740
import TUK.Leaf07741
import TUK.Leaf07742
import TUK.Leaf07743
import TUK.Leaf07744
import TUK.Leaf07745
import TUK.Leaf07746
import TUK.Leaf07747
import TUK.Leaf07748
import TUK.Leaf07749
import TUK.Leaf07750
import TUK.Leaf07751
import TUK.Leaf07752
import TUK.Leaf07753
import TUK.Leaf07754
import TUK.Leaf07755
import TUK.Leaf07756
import TUK.Leaf07757
import TUK.Leaf07758
import TUK.Leaf07759
import TUK.Leaf07760
import TUK.Leaf07761
import TUK.Leaf07762
import TUK.Leaf07763
import TUK.Leaf07764
import TUK.Leaf07765
import TUK.Leaf07766
import TUK.Leaf07767
import TUK.Leaf07768
import TUK.Leaf07769
import TUK.Leaf07770
import TUK.Leaf07771
import TUK.Leaf07772
import TUK.Leaf07773
import TUK.Leaf07774
import TUK.Leaf07775
import TUK.Leaf07776
import TUK.Leaf07777
import TUK.Leaf07778
import TUK.Leaf07779
import TUK.Leaf07780
import TUK.Leaf07781
import TUK.Leaf07782
import TUK.Leaf07783
import TUK.Leaf07784
import TUK.Leaf07785
import TUK.Leaf07786
import TUK.Leaf07787
import TUK.Leaf07788
import TUK.Leaf07789
import TUK.Leaf07790
import TUK.Leaf07791
import TUK.Leaf07792
import TUK.Leaf07793
import TUK.Leaf07794
import TUK.Leaf07795
import TUK.Leaf07796
import TUK.Leaf07797
import TUK.Leaf07798
import TUK.Leaf07799

/-! Leaves 7700 .. 7799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_77 : ∀ j < 100, 100 * 77 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 77 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_07700
  | 1, _, _ => exact leaf_07701
  | 2, _, _ => exact leaf_07702
  | 3, _, _ => exact leaf_07703
  | 4, _, _ => exact leaf_07704
  | 5, _, _ => exact leaf_07705
  | 6, _, _ => exact leaf_07706
  | 7, _, _ => exact leaf_07707
  | 8, _, _ => exact leaf_07708
  | 9, _, _ => exact leaf_07709
  | 10, _, _ => exact leaf_07710
  | 11, _, _ => exact leaf_07711
  | 12, _, _ => exact leaf_07712
  | 13, _, _ => exact leaf_07713
  | 14, _, _ => exact leaf_07714
  | 15, _, _ => exact leaf_07715
  | 16, _, _ => exact leaf_07716
  | 17, _, _ => exact leaf_07717
  | 18, _, _ => exact leaf_07718
  | 19, _, _ => exact leaf_07719
  | 20, _, _ => exact leaf_07720
  | 21, _, _ => exact leaf_07721
  | 22, _, _ => exact leaf_07722
  | 23, _, _ => exact leaf_07723
  | 24, _, _ => exact leaf_07724
  | 25, _, _ => exact leaf_07725
  | 26, _, _ => exact leaf_07726
  | 27, _, _ => exact leaf_07727
  | 28, _, _ => exact leaf_07728
  | 29, _, _ => exact leaf_07729
  | 30, _, _ => exact leaf_07730
  | 31, _, _ => exact leaf_07731
  | 32, _, _ => exact leaf_07732
  | 33, _, _ => exact leaf_07733
  | 34, _, _ => exact leaf_07734
  | 35, _, _ => exact leaf_07735
  | 36, _, _ => exact leaf_07736
  | 37, _, _ => exact leaf_07737
  | 38, _, _ => exact leaf_07738
  | 39, _, _ => exact leaf_07739
  | 40, _, _ => exact leaf_07740
  | 41, _, _ => exact leaf_07741
  | 42, _, _ => exact leaf_07742
  | 43, _, _ => exact leaf_07743
  | 44, _, _ => exact leaf_07744
  | 45, _, _ => exact leaf_07745
  | 46, _, _ => exact leaf_07746
  | 47, _, _ => exact leaf_07747
  | 48, _, _ => exact leaf_07748
  | 49, _, _ => exact leaf_07749
  | 50, _, _ => exact leaf_07750
  | 51, _, _ => exact leaf_07751
  | 52, _, _ => exact leaf_07752
  | 53, _, _ => exact leaf_07753
  | 54, _, _ => exact leaf_07754
  | 55, _, _ => exact leaf_07755
  | 56, _, _ => exact leaf_07756
  | 57, _, _ => exact leaf_07757
  | 58, _, _ => exact leaf_07758
  | 59, _, _ => exact leaf_07759
  | 60, _, _ => exact leaf_07760
  | 61, _, _ => exact leaf_07761
  | 62, _, _ => exact leaf_07762
  | 63, _, _ => exact leaf_07763
  | 64, _, _ => exact leaf_07764
  | 65, _, _ => exact leaf_07765
  | 66, _, _ => exact leaf_07766
  | 67, _, _ => exact leaf_07767
  | 68, _, _ => exact leaf_07768
  | 69, _, _ => exact leaf_07769
  | 70, _, _ => exact leaf_07770
  | 71, _, _ => exact leaf_07771
  | 72, _, _ => exact leaf_07772
  | 73, _, _ => exact leaf_07773
  | 74, _, _ => exact leaf_07774
  | 75, _, _ => exact leaf_07775
  | 76, _, _ => exact leaf_07776
  | 77, _, _ => exact leaf_07777
  | 78, _, _ => exact leaf_07778
  | 79, _, _ => exact leaf_07779
  | 80, _, _ => exact leaf_07780
  | 81, _, _ => exact leaf_07781
  | 82, _, _ => exact leaf_07782
  | 83, _, _ => exact leaf_07783
  | 84, _, _ => exact leaf_07784
  | 85, _, _ => exact leaf_07785
  | 86, _, _ => exact leaf_07786
  | 87, _, _ => exact leaf_07787
  | 88, _, _ => exact leaf_07788
  | 89, _, _ => exact leaf_07789
  | 90, _, _ => exact leaf_07790
  | 91, _, _ => exact leaf_07791
  | 92, _, _ => exact leaf_07792
  | 93, _, _ => exact leaf_07793
  | 94, _, _ => exact leaf_07794
  | 95, _, _ => exact leaf_07795
  | 96, _, _ => exact leaf_07796
  | 97, _, _ => exact leaf_07797
  | 98, _, _ => exact leaf_07798
  | 99, _, _ => exact leaf_07799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
