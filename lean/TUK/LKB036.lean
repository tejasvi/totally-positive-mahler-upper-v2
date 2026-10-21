import TUK.Leaf03600
import TUK.Leaf03601
import TUK.Leaf03602
import TUK.Leaf03603
import TUK.Leaf03604
import TUK.Leaf03605
import TUK.Leaf03606
import TUK.Leaf03607
import TUK.Leaf03608
import TUK.Leaf03609
import TUK.Leaf03610
import TUK.Leaf03611
import TUK.Leaf03612
import TUK.Leaf03613
import TUK.Leaf03614
import TUK.Leaf03615
import TUK.Leaf03616
import TUK.Leaf03617
import TUK.Leaf03618
import TUK.Leaf03619
import TUK.Leaf03620
import TUK.Leaf03621
import TUK.Leaf03622
import TUK.Leaf03623
import TUK.Leaf03624
import TUK.Leaf03625
import TUK.Leaf03626
import TUK.Leaf03627
import TUK.Leaf03628
import TUK.Leaf03629
import TUK.Leaf03630
import TUK.Leaf03631
import TUK.Leaf03632
import TUK.Leaf03633
import TUK.Leaf03634
import TUK.Leaf03635
import TUK.Leaf03636
import TUK.Leaf03637
import TUK.Leaf03638
import TUK.Leaf03639
import TUK.Leaf03640
import TUK.Leaf03641
import TUK.Leaf03642
import TUK.Leaf03643
import TUK.Leaf03644
import TUK.Leaf03645
import TUK.Leaf03646
import TUK.Leaf03647
import TUK.Leaf03648
import TUK.Leaf03649
import TUK.Leaf03650
import TUK.Leaf03651
import TUK.Leaf03652
import TUK.Leaf03653
import TUK.Leaf03654
import TUK.Leaf03655
import TUK.Leaf03656
import TUK.Leaf03657
import TUK.Leaf03658
import TUK.Leaf03659
import TUK.Leaf03660
import TUK.Leaf03661
import TUK.Leaf03662
import TUK.Leaf03663
import TUK.Leaf03664
import TUK.Leaf03665
import TUK.Leaf03666
import TUK.Leaf03667
import TUK.Leaf03668
import TUK.Leaf03669
import TUK.Leaf03670
import TUK.Leaf03671
import TUK.Leaf03672
import TUK.Leaf03673
import TUK.Leaf03674
import TUK.Leaf03675
import TUK.Leaf03676
import TUK.Leaf03677
import TUK.Leaf03678
import TUK.Leaf03679
import TUK.Leaf03680
import TUK.Leaf03681
import TUK.Leaf03682
import TUK.Leaf03683
import TUK.Leaf03684
import TUK.Leaf03685
import TUK.Leaf03686
import TUK.Leaf03687
import TUK.Leaf03688
import TUK.Leaf03689
import TUK.Leaf03690
import TUK.Leaf03691
import TUK.Leaf03692
import TUK.Leaf03693
import TUK.Leaf03694
import TUK.Leaf03695
import TUK.Leaf03696
import TUK.Leaf03697
import TUK.Leaf03698
import TUK.Leaf03699

/-! Leaves 3600 .. 3699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_36 : ∀ j < 100, 100 * 36 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 36 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_03600
  | 1, _, _ => exact leaf_03601
  | 2, _, _ => exact leaf_03602
  | 3, _, _ => exact leaf_03603
  | 4, _, _ => exact leaf_03604
  | 5, _, _ => exact leaf_03605
  | 6, _, _ => exact leaf_03606
  | 7, _, _ => exact leaf_03607
  | 8, _, _ => exact leaf_03608
  | 9, _, _ => exact leaf_03609
  | 10, _, _ => exact leaf_03610
  | 11, _, _ => exact leaf_03611
  | 12, _, _ => exact leaf_03612
  | 13, _, _ => exact leaf_03613
  | 14, _, _ => exact leaf_03614
  | 15, _, _ => exact leaf_03615
  | 16, _, _ => exact leaf_03616
  | 17, _, _ => exact leaf_03617
  | 18, _, _ => exact leaf_03618
  | 19, _, _ => exact leaf_03619
  | 20, _, _ => exact leaf_03620
  | 21, _, _ => exact leaf_03621
  | 22, _, _ => exact leaf_03622
  | 23, _, _ => exact leaf_03623
  | 24, _, _ => exact leaf_03624
  | 25, _, _ => exact leaf_03625
  | 26, _, _ => exact leaf_03626
  | 27, _, _ => exact leaf_03627
  | 28, _, _ => exact leaf_03628
  | 29, _, _ => exact leaf_03629
  | 30, _, _ => exact leaf_03630
  | 31, _, _ => exact leaf_03631
  | 32, _, _ => exact leaf_03632
  | 33, _, _ => exact leaf_03633
  | 34, _, _ => exact leaf_03634
  | 35, _, _ => exact leaf_03635
  | 36, _, _ => exact leaf_03636
  | 37, _, _ => exact leaf_03637
  | 38, _, _ => exact leaf_03638
  | 39, _, _ => exact leaf_03639
  | 40, _, _ => exact leaf_03640
  | 41, _, _ => exact leaf_03641
  | 42, _, _ => exact leaf_03642
  | 43, _, _ => exact leaf_03643
  | 44, _, _ => exact leaf_03644
  | 45, _, _ => exact leaf_03645
  | 46, _, _ => exact leaf_03646
  | 47, _, _ => exact leaf_03647
  | 48, _, _ => exact leaf_03648
  | 49, _, _ => exact leaf_03649
  | 50, _, _ => exact leaf_03650
  | 51, _, _ => exact leaf_03651
  | 52, _, _ => exact leaf_03652
  | 53, _, _ => exact leaf_03653
  | 54, _, _ => exact leaf_03654
  | 55, _, _ => exact leaf_03655
  | 56, _, _ => exact leaf_03656
  | 57, _, _ => exact leaf_03657
  | 58, _, _ => exact leaf_03658
  | 59, _, _ => exact leaf_03659
  | 60, _, _ => exact leaf_03660
  | 61, _, _ => exact leaf_03661
  | 62, _, _ => exact leaf_03662
  | 63, _, _ => exact leaf_03663
  | 64, _, _ => exact leaf_03664
  | 65, _, _ => exact leaf_03665
  | 66, _, _ => exact leaf_03666
  | 67, _, _ => exact leaf_03667
  | 68, _, _ => exact leaf_03668
  | 69, _, _ => exact leaf_03669
  | 70, _, _ => exact leaf_03670
  | 71, _, _ => exact leaf_03671
  | 72, _, _ => exact leaf_03672
  | 73, _, _ => exact leaf_03673
  | 74, _, _ => exact leaf_03674
  | 75, _, _ => exact leaf_03675
  | 76, _, _ => exact leaf_03676
  | 77, _, _ => exact leaf_03677
  | 78, _, _ => exact leaf_03678
  | 79, _, _ => exact leaf_03679
  | 80, _, _ => exact leaf_03680
  | 81, _, _ => exact leaf_03681
  | 82, _, _ => exact leaf_03682
  | 83, _, _ => exact leaf_03683
  | 84, _, _ => exact leaf_03684
  | 85, _, _ => exact leaf_03685
  | 86, _, _ => exact leaf_03686
  | 87, _, _ => exact leaf_03687
  | 88, _, _ => exact leaf_03688
  | 89, _, _ => exact leaf_03689
  | 90, _, _ => exact leaf_03690
  | 91, _, _ => exact leaf_03691
  | 92, _, _ => exact leaf_03692
  | 93, _, _ => exact leaf_03693
  | 94, _, _ => exact leaf_03694
  | 95, _, _ => exact leaf_03695
  | 96, _, _ => exact leaf_03696
  | 97, _, _ => exact leaf_03697
  | 98, _, _ => exact leaf_03698
  | 99, _, _ => exact leaf_03699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
