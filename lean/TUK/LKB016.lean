import TUK.Leaf01600
import TUK.Leaf01601
import TUK.Leaf01602
import TUK.Leaf01603
import TUK.Leaf01604
import TUK.Leaf01605
import TUK.Leaf01606
import TUK.Leaf01607
import TUK.Leaf01608
import TUK.Leaf01609
import TUK.Leaf01610
import TUK.Leaf01611
import TUK.Leaf01612
import TUK.Leaf01613
import TUK.Leaf01614
import TUK.Leaf01615
import TUK.Leaf01616
import TUK.Leaf01617
import TUK.Leaf01618
import TUK.Leaf01619
import TUK.Leaf01620
import TUK.Leaf01621
import TUK.Leaf01622
import TUK.Leaf01623
import TUK.Leaf01624
import TUK.Leaf01625
import TUK.Leaf01626
import TUK.Leaf01627
import TUK.Leaf01628
import TUK.Leaf01629
import TUK.Leaf01630
import TUK.Leaf01631
import TUK.Leaf01632
import TUK.Leaf01633
import TUK.Leaf01634
import TUK.Leaf01635
import TUK.Leaf01636
import TUK.Leaf01637
import TUK.Leaf01638
import TUK.Leaf01639
import TUK.Leaf01640
import TUK.Leaf01641
import TUK.Leaf01642
import TUK.Leaf01643
import TUK.Leaf01644
import TUK.Leaf01645
import TUK.Leaf01646
import TUK.Leaf01647
import TUK.Leaf01648
import TUK.Leaf01649
import TUK.Leaf01650
import TUK.Leaf01651
import TUK.Leaf01652
import TUK.Leaf01653
import TUK.Leaf01654
import TUK.Leaf01655
import TUK.Leaf01656
import TUK.Leaf01657
import TUK.Leaf01658
import TUK.Leaf01659
import TUK.Leaf01660
import TUK.Leaf01661
import TUK.Leaf01662
import TUK.Leaf01663
import TUK.Leaf01664
import TUK.Leaf01665
import TUK.Leaf01666
import TUK.Leaf01667
import TUK.Leaf01668
import TUK.Leaf01669
import TUK.Leaf01670
import TUK.Leaf01671
import TUK.Leaf01672
import TUK.Leaf01673
import TUK.Leaf01674
import TUK.Leaf01675
import TUK.Leaf01676
import TUK.Leaf01677
import TUK.Leaf01678
import TUK.Leaf01679
import TUK.Leaf01680
import TUK.Leaf01681
import TUK.Leaf01682
import TUK.Leaf01683
import TUK.Leaf01684
import TUK.Leaf01685
import TUK.Leaf01686
import TUK.Leaf01687
import TUK.Leaf01688
import TUK.Leaf01689
import TUK.Leaf01690
import TUK.Leaf01691
import TUK.Leaf01692
import TUK.Leaf01693
import TUK.Leaf01694
import TUK.Leaf01695
import TUK.Leaf01696
import TUK.Leaf01697
import TUK.Leaf01698
import TUK.Leaf01699

/-! Leaves 1600 .. 1699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_16 : ∀ j < 100, 100 * 16 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 16 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_01600
  | 1, _, _ => exact leaf_01601
  | 2, _, _ => exact leaf_01602
  | 3, _, _ => exact leaf_01603
  | 4, _, _ => exact leaf_01604
  | 5, _, _ => exact leaf_01605
  | 6, _, _ => exact leaf_01606
  | 7, _, _ => exact leaf_01607
  | 8, _, _ => exact leaf_01608
  | 9, _, _ => exact leaf_01609
  | 10, _, _ => exact leaf_01610
  | 11, _, _ => exact leaf_01611
  | 12, _, _ => exact leaf_01612
  | 13, _, _ => exact leaf_01613
  | 14, _, _ => exact leaf_01614
  | 15, _, _ => exact leaf_01615
  | 16, _, _ => exact leaf_01616
  | 17, _, _ => exact leaf_01617
  | 18, _, _ => exact leaf_01618
  | 19, _, _ => exact leaf_01619
  | 20, _, _ => exact leaf_01620
  | 21, _, _ => exact leaf_01621
  | 22, _, _ => exact leaf_01622
  | 23, _, _ => exact leaf_01623
  | 24, _, _ => exact leaf_01624
  | 25, _, _ => exact leaf_01625
  | 26, _, _ => exact leaf_01626
  | 27, _, _ => exact leaf_01627
  | 28, _, _ => exact leaf_01628
  | 29, _, _ => exact leaf_01629
  | 30, _, _ => exact leaf_01630
  | 31, _, _ => exact leaf_01631
  | 32, _, _ => exact leaf_01632
  | 33, _, _ => exact leaf_01633
  | 34, _, _ => exact leaf_01634
  | 35, _, _ => exact leaf_01635
  | 36, _, _ => exact leaf_01636
  | 37, _, _ => exact leaf_01637
  | 38, _, _ => exact leaf_01638
  | 39, _, _ => exact leaf_01639
  | 40, _, _ => exact leaf_01640
  | 41, _, _ => exact leaf_01641
  | 42, _, _ => exact leaf_01642
  | 43, _, _ => exact leaf_01643
  | 44, _, _ => exact leaf_01644
  | 45, _, _ => exact leaf_01645
  | 46, _, _ => exact leaf_01646
  | 47, _, _ => exact leaf_01647
  | 48, _, _ => exact leaf_01648
  | 49, _, _ => exact leaf_01649
  | 50, _, _ => exact leaf_01650
  | 51, _, _ => exact leaf_01651
  | 52, _, _ => exact leaf_01652
  | 53, _, _ => exact leaf_01653
  | 54, _, _ => exact leaf_01654
  | 55, _, _ => exact leaf_01655
  | 56, _, _ => exact leaf_01656
  | 57, _, _ => exact leaf_01657
  | 58, _, _ => exact leaf_01658
  | 59, _, _ => exact leaf_01659
  | 60, _, _ => exact leaf_01660
  | 61, _, _ => exact leaf_01661
  | 62, _, _ => exact leaf_01662
  | 63, _, _ => exact leaf_01663
  | 64, _, _ => exact leaf_01664
  | 65, _, _ => exact leaf_01665
  | 66, _, _ => exact leaf_01666
  | 67, _, _ => exact leaf_01667
  | 68, _, _ => exact leaf_01668
  | 69, _, _ => exact leaf_01669
  | 70, _, _ => exact leaf_01670
  | 71, _, _ => exact leaf_01671
  | 72, _, _ => exact leaf_01672
  | 73, _, _ => exact leaf_01673
  | 74, _, _ => exact leaf_01674
  | 75, _, _ => exact leaf_01675
  | 76, _, _ => exact leaf_01676
  | 77, _, _ => exact leaf_01677
  | 78, _, _ => exact leaf_01678
  | 79, _, _ => exact leaf_01679
  | 80, _, _ => exact leaf_01680
  | 81, _, _ => exact leaf_01681
  | 82, _, _ => exact leaf_01682
  | 83, _, _ => exact leaf_01683
  | 84, _, _ => exact leaf_01684
  | 85, _, _ => exact leaf_01685
  | 86, _, _ => exact leaf_01686
  | 87, _, _ => exact leaf_01687
  | 88, _, _ => exact leaf_01688
  | 89, _, _ => exact leaf_01689
  | 90, _, _ => exact leaf_01690
  | 91, _, _ => exact leaf_01691
  | 92, _, _ => exact leaf_01692
  | 93, _, _ => exact leaf_01693
  | 94, _, _ => exact leaf_01694
  | 95, _, _ => exact leaf_01695
  | 96, _, _ => exact leaf_01696
  | 97, _, _ => exact leaf_01697
  | 98, _, _ => exact leaf_01698
  | 99, _, _ => exact leaf_01699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
