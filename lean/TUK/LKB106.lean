import TUK.Leaf10600
import TUK.Leaf10601
import TUK.Leaf10602
import TUK.Leaf10603
import TUK.Leaf10604
import TUK.Leaf10605
import TUK.Leaf10606
import TUK.Leaf10607
import TUK.Leaf10608
import TUK.Leaf10609
import TUK.Leaf10610
import TUK.Leaf10611
import TUK.Leaf10612
import TUK.Leaf10613
import TUK.Leaf10614
import TUK.Leaf10615
import TUK.Leaf10616
import TUK.Leaf10617
import TUK.Leaf10618
import TUK.Leaf10619
import TUK.Leaf10620
import TUK.Leaf10621
import TUK.Leaf10622
import TUK.Leaf10623
import TUK.Leaf10624
import TUK.Leaf10625
import TUK.Leaf10626
import TUK.Leaf10627
import TUK.Leaf10628
import TUK.Leaf10629
import TUK.Leaf10630
import TUK.Leaf10631
import TUK.Leaf10632
import TUK.Leaf10633
import TUK.Leaf10634
import TUK.Leaf10635
import TUK.Leaf10636
import TUK.Leaf10637
import TUK.Leaf10638
import TUK.Leaf10639
import TUK.Leaf10640
import TUK.Leaf10641
import TUK.Leaf10642
import TUK.Leaf10643
import TUK.Leaf10644
import TUK.Leaf10645
import TUK.Leaf10646
import TUK.Leaf10647
import TUK.Leaf10648
import TUK.Leaf10649
import TUK.Leaf10650
import TUK.Leaf10651
import TUK.Leaf10652
import TUK.Leaf10653
import TUK.Leaf10654
import TUK.Leaf10655
import TUK.Leaf10656
import TUK.Leaf10657
import TUK.Leaf10658
import TUK.Leaf10659
import TUK.Leaf10660
import TUK.Leaf10661
import TUK.Leaf10662
import TUK.Leaf10663
import TUK.Leaf10664
import TUK.Leaf10665
import TUK.Leaf10666
import TUK.Leaf10667
import TUK.Leaf10668
import TUK.Leaf10669
import TUK.Leaf10670
import TUK.Leaf10671
import TUK.Leaf10672
import TUK.Leaf10673
import TUK.Leaf10674
import TUK.Leaf10675
import TUK.Leaf10676
import TUK.Leaf10677
import TUK.Leaf10678
import TUK.Leaf10679
import TUK.Leaf10680
import TUK.Leaf10681
import TUK.Leaf10682
import TUK.Leaf10683
import TUK.Leaf10684
import TUK.Leaf10685
import TUK.Leaf10686
import TUK.Leaf10687
import TUK.Leaf10688
import TUK.Leaf10689
import TUK.Leaf10690
import TUK.Leaf10691
import TUK.Leaf10692
import TUK.Leaf10693
import TUK.Leaf10694
import TUK.Leaf10695
import TUK.Leaf10696
import TUK.Leaf10697
import TUK.Leaf10698
import TUK.Leaf10699

/-! Leaves 10600 .. 10699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_106 : ∀ j < 100, 100 * 106 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 106 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_10600
  | 1, _, _ => exact leaf_10601
  | 2, _, _ => exact leaf_10602
  | 3, _, _ => exact leaf_10603
  | 4, _, _ => exact leaf_10604
  | 5, _, _ => exact leaf_10605
  | 6, _, _ => exact leaf_10606
  | 7, _, _ => exact leaf_10607
  | 8, _, _ => exact leaf_10608
  | 9, _, _ => exact leaf_10609
  | 10, _, _ => exact leaf_10610
  | 11, _, _ => exact leaf_10611
  | 12, _, _ => exact leaf_10612
  | 13, _, _ => exact leaf_10613
  | 14, _, _ => exact leaf_10614
  | 15, _, _ => exact leaf_10615
  | 16, _, _ => exact leaf_10616
  | 17, _, _ => exact leaf_10617
  | 18, _, _ => exact leaf_10618
  | 19, _, _ => exact leaf_10619
  | 20, _, _ => exact leaf_10620
  | 21, _, _ => exact leaf_10621
  | 22, _, _ => exact leaf_10622
  | 23, _, _ => exact leaf_10623
  | 24, _, _ => exact leaf_10624
  | 25, _, _ => exact leaf_10625
  | 26, _, _ => exact leaf_10626
  | 27, _, _ => exact leaf_10627
  | 28, _, _ => exact leaf_10628
  | 29, _, _ => exact leaf_10629
  | 30, _, _ => exact leaf_10630
  | 31, _, _ => exact leaf_10631
  | 32, _, _ => exact leaf_10632
  | 33, _, _ => exact leaf_10633
  | 34, _, _ => exact leaf_10634
  | 35, _, _ => exact leaf_10635
  | 36, _, _ => exact leaf_10636
  | 37, _, _ => exact leaf_10637
  | 38, _, _ => exact leaf_10638
  | 39, _, _ => exact leaf_10639
  | 40, _, _ => exact leaf_10640
  | 41, _, _ => exact leaf_10641
  | 42, _, _ => exact leaf_10642
  | 43, _, _ => exact leaf_10643
  | 44, _, _ => exact leaf_10644
  | 45, _, _ => exact leaf_10645
  | 46, _, _ => exact leaf_10646
  | 47, _, _ => exact leaf_10647
  | 48, _, _ => exact leaf_10648
  | 49, _, _ => exact leaf_10649
  | 50, _, _ => exact leaf_10650
  | 51, _, _ => exact leaf_10651
  | 52, _, _ => exact leaf_10652
  | 53, _, _ => exact leaf_10653
  | 54, _, _ => exact leaf_10654
  | 55, _, _ => exact leaf_10655
  | 56, _, _ => exact leaf_10656
  | 57, _, _ => exact leaf_10657
  | 58, _, _ => exact leaf_10658
  | 59, _, _ => exact leaf_10659
  | 60, _, _ => exact leaf_10660
  | 61, _, _ => exact leaf_10661
  | 62, _, _ => exact leaf_10662
  | 63, _, _ => exact leaf_10663
  | 64, _, _ => exact leaf_10664
  | 65, _, _ => exact leaf_10665
  | 66, _, _ => exact leaf_10666
  | 67, _, _ => exact leaf_10667
  | 68, _, _ => exact leaf_10668
  | 69, _, _ => exact leaf_10669
  | 70, _, _ => exact leaf_10670
  | 71, _, _ => exact leaf_10671
  | 72, _, _ => exact leaf_10672
  | 73, _, _ => exact leaf_10673
  | 74, _, _ => exact leaf_10674
  | 75, _, _ => exact leaf_10675
  | 76, _, _ => exact leaf_10676
  | 77, _, _ => exact leaf_10677
  | 78, _, _ => exact leaf_10678
  | 79, _, _ => exact leaf_10679
  | 80, _, _ => exact leaf_10680
  | 81, _, _ => exact leaf_10681
  | 82, _, _ => exact leaf_10682
  | 83, _, _ => exact leaf_10683
  | 84, _, _ => exact leaf_10684
  | 85, _, _ => exact leaf_10685
  | 86, _, _ => exact leaf_10686
  | 87, _, _ => exact leaf_10687
  | 88, _, _ => exact leaf_10688
  | 89, _, _ => exact leaf_10689
  | 90, _, _ => exact leaf_10690
  | 91, _, _ => exact leaf_10691
  | 92, _, _ => exact leaf_10692
  | 93, _, _ => exact leaf_10693
  | 94, _, _ => exact leaf_10694
  | 95, _, _ => exact leaf_10695
  | 96, _, _ => exact leaf_10696
  | 97, _, _ => exact leaf_10697
  | 98, _, _ => exact leaf_10698
  | 99, _, _ => exact leaf_10699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
