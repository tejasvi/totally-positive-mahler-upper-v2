import TUK.Leaf08600
import TUK.Leaf08601
import TUK.Leaf08602
import TUK.Leaf08603
import TUK.Leaf08604
import TUK.Leaf08605
import TUK.Leaf08606
import TUK.Leaf08607
import TUK.Leaf08608
import TUK.Leaf08609
import TUK.Leaf08610
import TUK.Leaf08611
import TUK.Leaf08612
import TUK.Leaf08613
import TUK.Leaf08614
import TUK.Leaf08615
import TUK.Leaf08616
import TUK.Leaf08617
import TUK.Leaf08618
import TUK.Leaf08619
import TUK.Leaf08620
import TUK.Leaf08621
import TUK.Leaf08622
import TUK.Leaf08623
import TUK.Leaf08624
import TUK.Leaf08625
import TUK.Leaf08626
import TUK.Leaf08627
import TUK.Leaf08628
import TUK.Leaf08629
import TUK.Leaf08630
import TUK.Leaf08631
import TUK.Leaf08632
import TUK.Leaf08633
import TUK.Leaf08634
import TUK.Leaf08635
import TUK.Leaf08636
import TUK.Leaf08637
import TUK.Leaf08638
import TUK.Leaf08639
import TUK.Leaf08640
import TUK.Leaf08641
import TUK.Leaf08642
import TUK.Leaf08643
import TUK.Leaf08644
import TUK.Leaf08645
import TUK.Leaf08646
import TUK.Leaf08647
import TUK.Leaf08648
import TUK.Leaf08649
import TUK.Leaf08650
import TUK.Leaf08651
import TUK.Leaf08652
import TUK.Leaf08653
import TUK.Leaf08654
import TUK.Leaf08655
import TUK.Leaf08656
import TUK.Leaf08657
import TUK.Leaf08658
import TUK.Leaf08659
import TUK.Leaf08660
import TUK.Leaf08661
import TUK.Leaf08662
import TUK.Leaf08663
import TUK.Leaf08664
import TUK.Leaf08665
import TUK.Leaf08666
import TUK.Leaf08667
import TUK.Leaf08668
import TUK.Leaf08669
import TUK.Leaf08670
import TUK.Leaf08671
import TUK.Leaf08672
import TUK.Leaf08673
import TUK.Leaf08674
import TUK.Leaf08675
import TUK.Leaf08676
import TUK.Leaf08677
import TUK.Leaf08678
import TUK.Leaf08679
import TUK.Leaf08680
import TUK.Leaf08681
import TUK.Leaf08682
import TUK.Leaf08683
import TUK.Leaf08684
import TUK.Leaf08685
import TUK.Leaf08686
import TUK.Leaf08687
import TUK.Leaf08688
import TUK.Leaf08689
import TUK.Leaf08690
import TUK.Leaf08691
import TUK.Leaf08692
import TUK.Leaf08693
import TUK.Leaf08694
import TUK.Leaf08695
import TUK.Leaf08696
import TUK.Leaf08697
import TUK.Leaf08698
import TUK.Leaf08699

/-! Leaves 8600 .. 8699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_86 : ∀ j < 100, 100 * 86 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 86 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_08600
  | 1, _, _ => exact leaf_08601
  | 2, _, _ => exact leaf_08602
  | 3, _, _ => exact leaf_08603
  | 4, _, _ => exact leaf_08604
  | 5, _, _ => exact leaf_08605
  | 6, _, _ => exact leaf_08606
  | 7, _, _ => exact leaf_08607
  | 8, _, _ => exact leaf_08608
  | 9, _, _ => exact leaf_08609
  | 10, _, _ => exact leaf_08610
  | 11, _, _ => exact leaf_08611
  | 12, _, _ => exact leaf_08612
  | 13, _, _ => exact leaf_08613
  | 14, _, _ => exact leaf_08614
  | 15, _, _ => exact leaf_08615
  | 16, _, _ => exact leaf_08616
  | 17, _, _ => exact leaf_08617
  | 18, _, _ => exact leaf_08618
  | 19, _, _ => exact leaf_08619
  | 20, _, _ => exact leaf_08620
  | 21, _, _ => exact leaf_08621
  | 22, _, _ => exact leaf_08622
  | 23, _, _ => exact leaf_08623
  | 24, _, _ => exact leaf_08624
  | 25, _, _ => exact leaf_08625
  | 26, _, _ => exact leaf_08626
  | 27, _, _ => exact leaf_08627
  | 28, _, _ => exact leaf_08628
  | 29, _, _ => exact leaf_08629
  | 30, _, _ => exact leaf_08630
  | 31, _, _ => exact leaf_08631
  | 32, _, _ => exact leaf_08632
  | 33, _, _ => exact leaf_08633
  | 34, _, _ => exact leaf_08634
  | 35, _, _ => exact leaf_08635
  | 36, _, _ => exact leaf_08636
  | 37, _, _ => exact leaf_08637
  | 38, _, _ => exact leaf_08638
  | 39, _, _ => exact leaf_08639
  | 40, _, _ => exact leaf_08640
  | 41, _, _ => exact leaf_08641
  | 42, _, _ => exact leaf_08642
  | 43, _, _ => exact leaf_08643
  | 44, _, _ => exact leaf_08644
  | 45, _, _ => exact leaf_08645
  | 46, _, _ => exact leaf_08646
  | 47, _, _ => exact leaf_08647
  | 48, _, _ => exact leaf_08648
  | 49, _, _ => exact leaf_08649
  | 50, _, _ => exact leaf_08650
  | 51, _, _ => exact leaf_08651
  | 52, _, _ => exact leaf_08652
  | 53, _, _ => exact leaf_08653
  | 54, _, _ => exact leaf_08654
  | 55, _, _ => exact leaf_08655
  | 56, _, _ => exact leaf_08656
  | 57, _, _ => exact leaf_08657
  | 58, _, _ => exact leaf_08658
  | 59, _, _ => exact leaf_08659
  | 60, _, _ => exact leaf_08660
  | 61, _, _ => exact leaf_08661
  | 62, _, _ => exact leaf_08662
  | 63, _, _ => exact leaf_08663
  | 64, _, _ => exact leaf_08664
  | 65, _, _ => exact leaf_08665
  | 66, _, _ => exact leaf_08666
  | 67, _, _ => exact leaf_08667
  | 68, _, _ => exact leaf_08668
  | 69, _, _ => exact leaf_08669
  | 70, _, _ => exact leaf_08670
  | 71, _, _ => exact leaf_08671
  | 72, _, _ => exact leaf_08672
  | 73, _, _ => exact leaf_08673
  | 74, _, _ => exact leaf_08674
  | 75, _, _ => exact leaf_08675
  | 76, _, _ => exact leaf_08676
  | 77, _, _ => exact leaf_08677
  | 78, _, _ => exact leaf_08678
  | 79, _, _ => exact leaf_08679
  | 80, _, _ => exact leaf_08680
  | 81, _, _ => exact leaf_08681
  | 82, _, _ => exact leaf_08682
  | 83, _, _ => exact leaf_08683
  | 84, _, _ => exact leaf_08684
  | 85, _, _ => exact leaf_08685
  | 86, _, _ => exact leaf_08686
  | 87, _, _ => exact leaf_08687
  | 88, _, _ => exact leaf_08688
  | 89, _, _ => exact leaf_08689
  | 90, _, _ => exact leaf_08690
  | 91, _, _ => exact leaf_08691
  | 92, _, _ => exact leaf_08692
  | 93, _, _ => exact leaf_08693
  | 94, _, _ => exact leaf_08694
  | 95, _, _ => exact leaf_08695
  | 96, _, _ => exact leaf_08696
  | 97, _, _ => exact leaf_08697
  | 98, _, _ => exact leaf_08698
  | 99, _, _ => exact leaf_08699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
