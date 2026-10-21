import TUK.Leaf09600
import TUK.Leaf09601
import TUK.Leaf09602
import TUK.Leaf09603
import TUK.Leaf09604
import TUK.Leaf09605
import TUK.Leaf09606
import TUK.Leaf09607
import TUK.Leaf09608
import TUK.Leaf09609
import TUK.Leaf09610
import TUK.Leaf09611
import TUK.Leaf09612
import TUK.Leaf09613
import TUK.Leaf09614
import TUK.Leaf09615
import TUK.Leaf09616
import TUK.Leaf09617
import TUK.Leaf09618
import TUK.Leaf09619
import TUK.Leaf09620
import TUK.Leaf09621
import TUK.Leaf09622
import TUK.Leaf09623
import TUK.Leaf09624
import TUK.Leaf09625
import TUK.Leaf09626
import TUK.Leaf09627
import TUK.Leaf09628
import TUK.Leaf09629
import TUK.Leaf09630
import TUK.Leaf09631
import TUK.Leaf09632
import TUK.Leaf09633
import TUK.Leaf09634
import TUK.Leaf09635
import TUK.Leaf09636
import TUK.Leaf09637
import TUK.Leaf09638
import TUK.Leaf09639
import TUK.Leaf09640
import TUK.Leaf09641
import TUK.Leaf09642
import TUK.Leaf09643
import TUK.Leaf09644
import TUK.Leaf09645
import TUK.Leaf09646
import TUK.Leaf09647
import TUK.Leaf09648
import TUK.Leaf09649
import TUK.Leaf09650
import TUK.Leaf09651
import TUK.Leaf09652
import TUK.Leaf09653
import TUK.Leaf09654
import TUK.Leaf09655
import TUK.Leaf09656
import TUK.Leaf09657
import TUK.Leaf09658
import TUK.Leaf09659
import TUK.Leaf09660
import TUK.Leaf09661
import TUK.Leaf09662
import TUK.Leaf09663
import TUK.Leaf09664
import TUK.Leaf09665
import TUK.Leaf09666
import TUK.Leaf09667
import TUK.Leaf09668
import TUK.Leaf09669
import TUK.Leaf09670
import TUK.Leaf09671
import TUK.Leaf09672
import TUK.Leaf09673
import TUK.Leaf09674
import TUK.Leaf09675
import TUK.Leaf09676
import TUK.Leaf09677
import TUK.Leaf09678
import TUK.Leaf09679
import TUK.Leaf09680
import TUK.Leaf09681
import TUK.Leaf09682
import TUK.Leaf09683
import TUK.Leaf09684
import TUK.Leaf09685
import TUK.Leaf09686
import TUK.Leaf09687
import TUK.Leaf09688
import TUK.Leaf09689
import TUK.Leaf09690
import TUK.Leaf09691
import TUK.Leaf09692
import TUK.Leaf09693
import TUK.Leaf09694
import TUK.Leaf09695
import TUK.Leaf09696
import TUK.Leaf09697
import TUK.Leaf09698
import TUK.Leaf09699

/-! Leaves 9600 .. 9699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_96 : ∀ j < 100, 100 * 96 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 96 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_09600
  | 1, _, _ => exact leaf_09601
  | 2, _, _ => exact leaf_09602
  | 3, _, _ => exact leaf_09603
  | 4, _, _ => exact leaf_09604
  | 5, _, _ => exact leaf_09605
  | 6, _, _ => exact leaf_09606
  | 7, _, _ => exact leaf_09607
  | 8, _, _ => exact leaf_09608
  | 9, _, _ => exact leaf_09609
  | 10, _, _ => exact leaf_09610
  | 11, _, _ => exact leaf_09611
  | 12, _, _ => exact leaf_09612
  | 13, _, _ => exact leaf_09613
  | 14, _, _ => exact leaf_09614
  | 15, _, _ => exact leaf_09615
  | 16, _, _ => exact leaf_09616
  | 17, _, _ => exact leaf_09617
  | 18, _, _ => exact leaf_09618
  | 19, _, _ => exact leaf_09619
  | 20, _, _ => exact leaf_09620
  | 21, _, _ => exact leaf_09621
  | 22, _, _ => exact leaf_09622
  | 23, _, _ => exact leaf_09623
  | 24, _, _ => exact leaf_09624
  | 25, _, _ => exact leaf_09625
  | 26, _, _ => exact leaf_09626
  | 27, _, _ => exact leaf_09627
  | 28, _, _ => exact leaf_09628
  | 29, _, _ => exact leaf_09629
  | 30, _, _ => exact leaf_09630
  | 31, _, _ => exact leaf_09631
  | 32, _, _ => exact leaf_09632
  | 33, _, _ => exact leaf_09633
  | 34, _, _ => exact leaf_09634
  | 35, _, _ => exact leaf_09635
  | 36, _, _ => exact leaf_09636
  | 37, _, _ => exact leaf_09637
  | 38, _, _ => exact leaf_09638
  | 39, _, _ => exact leaf_09639
  | 40, _, _ => exact leaf_09640
  | 41, _, _ => exact leaf_09641
  | 42, _, _ => exact leaf_09642
  | 43, _, _ => exact leaf_09643
  | 44, _, _ => exact leaf_09644
  | 45, _, _ => exact leaf_09645
  | 46, _, _ => exact leaf_09646
  | 47, _, _ => exact leaf_09647
  | 48, _, _ => exact leaf_09648
  | 49, _, _ => exact leaf_09649
  | 50, _, _ => exact leaf_09650
  | 51, _, _ => exact leaf_09651
  | 52, _, _ => exact leaf_09652
  | 53, _, _ => exact leaf_09653
  | 54, _, _ => exact leaf_09654
  | 55, _, _ => exact leaf_09655
  | 56, _, _ => exact leaf_09656
  | 57, _, _ => exact leaf_09657
  | 58, _, _ => exact leaf_09658
  | 59, _, _ => exact leaf_09659
  | 60, _, _ => exact leaf_09660
  | 61, _, _ => exact leaf_09661
  | 62, _, _ => exact leaf_09662
  | 63, _, _ => exact leaf_09663
  | 64, _, _ => exact leaf_09664
  | 65, _, _ => exact leaf_09665
  | 66, _, _ => exact leaf_09666
  | 67, _, _ => exact leaf_09667
  | 68, _, _ => exact leaf_09668
  | 69, _, _ => exact leaf_09669
  | 70, _, _ => exact leaf_09670
  | 71, _, _ => exact leaf_09671
  | 72, _, _ => exact leaf_09672
  | 73, _, _ => exact leaf_09673
  | 74, _, _ => exact leaf_09674
  | 75, _, _ => exact leaf_09675
  | 76, _, _ => exact leaf_09676
  | 77, _, _ => exact leaf_09677
  | 78, _, _ => exact leaf_09678
  | 79, _, _ => exact leaf_09679
  | 80, _, _ => exact leaf_09680
  | 81, _, _ => exact leaf_09681
  | 82, _, _ => exact leaf_09682
  | 83, _, _ => exact leaf_09683
  | 84, _, _ => exact leaf_09684
  | 85, _, _ => exact leaf_09685
  | 86, _, _ => exact leaf_09686
  | 87, _, _ => exact leaf_09687
  | 88, _, _ => exact leaf_09688
  | 89, _, _ => exact leaf_09689
  | 90, _, _ => exact leaf_09690
  | 91, _, _ => exact leaf_09691
  | 92, _, _ => exact leaf_09692
  | 93, _, _ => exact leaf_09693
  | 94, _, _ => exact leaf_09694
  | 95, _, _ => exact leaf_09695
  | 96, _, _ => exact leaf_09696
  | 97, _, _ => exact leaf_09697
  | 98, _, _ => exact leaf_09698
  | 99, _, _ => exact leaf_09699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
