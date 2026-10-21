import TUK.Leaf02600
import TUK.Leaf02601
import TUK.Leaf02602
import TUK.Leaf02603
import TUK.Leaf02604
import TUK.Leaf02605
import TUK.Leaf02606
import TUK.Leaf02607
import TUK.Leaf02608
import TUK.Leaf02609
import TUK.Leaf02610
import TUK.Leaf02611
import TUK.Leaf02612
import TUK.Leaf02613
import TUK.Leaf02614
import TUK.Leaf02615
import TUK.Leaf02616
import TUK.Leaf02617
import TUK.Leaf02618
import TUK.Leaf02619
import TUK.Leaf02620
import TUK.Leaf02621
import TUK.Leaf02622
import TUK.Leaf02623
import TUK.Leaf02624
import TUK.Leaf02625
import TUK.Leaf02626
import TUK.Leaf02627
import TUK.Leaf02628
import TUK.Leaf02629
import TUK.Leaf02630
import TUK.Leaf02631
import TUK.Leaf02632
import TUK.Leaf02633
import TUK.Leaf02634
import TUK.Leaf02635
import TUK.Leaf02636
import TUK.Leaf02637
import TUK.Leaf02638
import TUK.Leaf02639
import TUK.Leaf02640
import TUK.Leaf02641
import TUK.Leaf02642
import TUK.Leaf02643
import TUK.Leaf02644
import TUK.Leaf02645
import TUK.Leaf02646
import TUK.Leaf02647
import TUK.Leaf02648
import TUK.Leaf02649
import TUK.Leaf02650
import TUK.Leaf02651
import TUK.Leaf02652
import TUK.Leaf02653
import TUK.Leaf02654
import TUK.Leaf02655
import TUK.Leaf02656
import TUK.Leaf02657
import TUK.Leaf02658
import TUK.Leaf02659
import TUK.Leaf02660
import TUK.Leaf02661
import TUK.Leaf02662
import TUK.Leaf02663
import TUK.Leaf02664
import TUK.Leaf02665
import TUK.Leaf02666
import TUK.Leaf02667
import TUK.Leaf02668
import TUK.Leaf02669
import TUK.Leaf02670
import TUK.Leaf02671
import TUK.Leaf02672
import TUK.Leaf02673
import TUK.Leaf02674
import TUK.Leaf02675
import TUK.Leaf02676
import TUK.Leaf02677
import TUK.Leaf02678
import TUK.Leaf02679
import TUK.Leaf02680
import TUK.Leaf02681
import TUK.Leaf02682
import TUK.Leaf02683
import TUK.Leaf02684
import TUK.Leaf02685
import TUK.Leaf02686
import TUK.Leaf02687
import TUK.Leaf02688
import TUK.Leaf02689
import TUK.Leaf02690
import TUK.Leaf02691
import TUK.Leaf02692
import TUK.Leaf02693
import TUK.Leaf02694
import TUK.Leaf02695
import TUK.Leaf02696
import TUK.Leaf02697
import TUK.Leaf02698
import TUK.Leaf02699

/-! Leaves 2600 .. 2699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_26 : ∀ j < 100, 100 * 26 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 26 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_02600
  | 1, _, _ => exact leaf_02601
  | 2, _, _ => exact leaf_02602
  | 3, _, _ => exact leaf_02603
  | 4, _, _ => exact leaf_02604
  | 5, _, _ => exact leaf_02605
  | 6, _, _ => exact leaf_02606
  | 7, _, _ => exact leaf_02607
  | 8, _, _ => exact leaf_02608
  | 9, _, _ => exact leaf_02609
  | 10, _, _ => exact leaf_02610
  | 11, _, _ => exact leaf_02611
  | 12, _, _ => exact leaf_02612
  | 13, _, _ => exact leaf_02613
  | 14, _, _ => exact leaf_02614
  | 15, _, _ => exact leaf_02615
  | 16, _, _ => exact leaf_02616
  | 17, _, _ => exact leaf_02617
  | 18, _, _ => exact leaf_02618
  | 19, _, _ => exact leaf_02619
  | 20, _, _ => exact leaf_02620
  | 21, _, _ => exact leaf_02621
  | 22, _, _ => exact leaf_02622
  | 23, _, _ => exact leaf_02623
  | 24, _, _ => exact leaf_02624
  | 25, _, _ => exact leaf_02625
  | 26, _, _ => exact leaf_02626
  | 27, _, _ => exact leaf_02627
  | 28, _, _ => exact leaf_02628
  | 29, _, _ => exact leaf_02629
  | 30, _, _ => exact leaf_02630
  | 31, _, _ => exact leaf_02631
  | 32, _, _ => exact leaf_02632
  | 33, _, _ => exact leaf_02633
  | 34, _, _ => exact leaf_02634
  | 35, _, _ => exact leaf_02635
  | 36, _, _ => exact leaf_02636
  | 37, _, _ => exact leaf_02637
  | 38, _, _ => exact leaf_02638
  | 39, _, _ => exact leaf_02639
  | 40, _, _ => exact leaf_02640
  | 41, _, _ => exact leaf_02641
  | 42, _, _ => exact leaf_02642
  | 43, _, _ => exact leaf_02643
  | 44, _, _ => exact leaf_02644
  | 45, _, _ => exact leaf_02645
  | 46, _, _ => exact leaf_02646
  | 47, _, _ => exact leaf_02647
  | 48, _, _ => exact leaf_02648
  | 49, _, _ => exact leaf_02649
  | 50, _, _ => exact leaf_02650
  | 51, _, _ => exact leaf_02651
  | 52, _, _ => exact leaf_02652
  | 53, _, _ => exact leaf_02653
  | 54, _, _ => exact leaf_02654
  | 55, _, _ => exact leaf_02655
  | 56, _, _ => exact leaf_02656
  | 57, _, _ => exact leaf_02657
  | 58, _, _ => exact leaf_02658
  | 59, _, _ => exact leaf_02659
  | 60, _, _ => exact leaf_02660
  | 61, _, _ => exact leaf_02661
  | 62, _, _ => exact leaf_02662
  | 63, _, _ => exact leaf_02663
  | 64, _, _ => exact leaf_02664
  | 65, _, _ => exact leaf_02665
  | 66, _, _ => exact leaf_02666
  | 67, _, _ => exact leaf_02667
  | 68, _, _ => exact leaf_02668
  | 69, _, _ => exact leaf_02669
  | 70, _, _ => exact leaf_02670
  | 71, _, _ => exact leaf_02671
  | 72, _, _ => exact leaf_02672
  | 73, _, _ => exact leaf_02673
  | 74, _, _ => exact leaf_02674
  | 75, _, _ => exact leaf_02675
  | 76, _, _ => exact leaf_02676
  | 77, _, _ => exact leaf_02677
  | 78, _, _ => exact leaf_02678
  | 79, _, _ => exact leaf_02679
  | 80, _, _ => exact leaf_02680
  | 81, _, _ => exact leaf_02681
  | 82, _, _ => exact leaf_02682
  | 83, _, _ => exact leaf_02683
  | 84, _, _ => exact leaf_02684
  | 85, _, _ => exact leaf_02685
  | 86, _, _ => exact leaf_02686
  | 87, _, _ => exact leaf_02687
  | 88, _, _ => exact leaf_02688
  | 89, _, _ => exact leaf_02689
  | 90, _, _ => exact leaf_02690
  | 91, _, _ => exact leaf_02691
  | 92, _, _ => exact leaf_02692
  | 93, _, _ => exact leaf_02693
  | 94, _, _ => exact leaf_02694
  | 95, _, _ => exact leaf_02695
  | 96, _, _ => exact leaf_02696
  | 97, _, _ => exact leaf_02697
  | 98, _, _ => exact leaf_02698
  | 99, _, _ => exact leaf_02699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
