import TUK.Leaf06600
import TUK.Leaf06601
import TUK.Leaf06602
import TUK.Leaf06603
import TUK.Leaf06604
import TUK.Leaf06605
import TUK.Leaf06606
import TUK.Leaf06607
import TUK.Leaf06608
import TUK.Leaf06609
import TUK.Leaf06610
import TUK.Leaf06611
import TUK.Leaf06612
import TUK.Leaf06613
import TUK.Leaf06614
import TUK.Leaf06615
import TUK.Leaf06616
import TUK.Leaf06617
import TUK.Leaf06618
import TUK.Leaf06619
import TUK.Leaf06620
import TUK.Leaf06621
import TUK.Leaf06622
import TUK.Leaf06623
import TUK.Leaf06624
import TUK.Leaf06625
import TUK.Leaf06626
import TUK.Leaf06627
import TUK.Leaf06628
import TUK.Leaf06629
import TUK.Leaf06630
import TUK.Leaf06631
import TUK.Leaf06632
import TUK.Leaf06633
import TUK.Leaf06634
import TUK.Leaf06635
import TUK.Leaf06636
import TUK.Leaf06637
import TUK.Leaf06638
import TUK.Leaf06639
import TUK.Leaf06640
import TUK.Leaf06641
import TUK.Leaf06642
import TUK.Leaf06643
import TUK.Leaf06644
import TUK.Leaf06645
import TUK.Leaf06646
import TUK.Leaf06647
import TUK.Leaf06648
import TUK.Leaf06649
import TUK.Leaf06650
import TUK.Leaf06651
import TUK.Leaf06652
import TUK.Leaf06653
import TUK.Leaf06654
import TUK.Leaf06655
import TUK.Leaf06656
import TUK.Leaf06657
import TUK.Leaf06658
import TUK.Leaf06659
import TUK.Leaf06660
import TUK.Leaf06661
import TUK.Leaf06662
import TUK.Leaf06663
import TUK.Leaf06664
import TUK.Leaf06665
import TUK.Leaf06666
import TUK.Leaf06667
import TUK.Leaf06668
import TUK.Leaf06669
import TUK.Leaf06670
import TUK.Leaf06671
import TUK.Leaf06672
import TUK.Leaf06673
import TUK.Leaf06674
import TUK.Leaf06675
import TUK.Leaf06676
import TUK.Leaf06677
import TUK.Leaf06678
import TUK.Leaf06679
import TUK.Leaf06680
import TUK.Leaf06681
import TUK.Leaf06682
import TUK.Leaf06683
import TUK.Leaf06684
import TUK.Leaf06685
import TUK.Leaf06686
import TUK.Leaf06687
import TUK.Leaf06688
import TUK.Leaf06689
import TUK.Leaf06690
import TUK.Leaf06691
import TUK.Leaf06692
import TUK.Leaf06693
import TUK.Leaf06694
import TUK.Leaf06695
import TUK.Leaf06696
import TUK.Leaf06697
import TUK.Leaf06698
import TUK.Leaf06699

/-! Leaves 6600 .. 6699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_66 : ∀ j < 100, 100 * 66 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 66 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_06600
  | 1, _, _ => exact leaf_06601
  | 2, _, _ => exact leaf_06602
  | 3, _, _ => exact leaf_06603
  | 4, _, _ => exact leaf_06604
  | 5, _, _ => exact leaf_06605
  | 6, _, _ => exact leaf_06606
  | 7, _, _ => exact leaf_06607
  | 8, _, _ => exact leaf_06608
  | 9, _, _ => exact leaf_06609
  | 10, _, _ => exact leaf_06610
  | 11, _, _ => exact leaf_06611
  | 12, _, _ => exact leaf_06612
  | 13, _, _ => exact leaf_06613
  | 14, _, _ => exact leaf_06614
  | 15, _, _ => exact leaf_06615
  | 16, _, _ => exact leaf_06616
  | 17, _, _ => exact leaf_06617
  | 18, _, _ => exact leaf_06618
  | 19, _, _ => exact leaf_06619
  | 20, _, _ => exact leaf_06620
  | 21, _, _ => exact leaf_06621
  | 22, _, _ => exact leaf_06622
  | 23, _, _ => exact leaf_06623
  | 24, _, _ => exact leaf_06624
  | 25, _, _ => exact leaf_06625
  | 26, _, _ => exact leaf_06626
  | 27, _, _ => exact leaf_06627
  | 28, _, _ => exact leaf_06628
  | 29, _, _ => exact leaf_06629
  | 30, _, _ => exact leaf_06630
  | 31, _, _ => exact leaf_06631
  | 32, _, _ => exact leaf_06632
  | 33, _, _ => exact leaf_06633
  | 34, _, _ => exact leaf_06634
  | 35, _, _ => exact leaf_06635
  | 36, _, _ => exact leaf_06636
  | 37, _, _ => exact leaf_06637
  | 38, _, _ => exact leaf_06638
  | 39, _, _ => exact leaf_06639
  | 40, _, _ => exact leaf_06640
  | 41, _, _ => exact leaf_06641
  | 42, _, _ => exact leaf_06642
  | 43, _, _ => exact leaf_06643
  | 44, _, _ => exact leaf_06644
  | 45, _, _ => exact leaf_06645
  | 46, _, _ => exact leaf_06646
  | 47, _, _ => exact leaf_06647
  | 48, _, _ => exact leaf_06648
  | 49, _, _ => exact leaf_06649
  | 50, _, _ => exact leaf_06650
  | 51, _, _ => exact leaf_06651
  | 52, _, _ => exact leaf_06652
  | 53, _, _ => exact leaf_06653
  | 54, _, _ => exact leaf_06654
  | 55, _, _ => exact leaf_06655
  | 56, _, _ => exact leaf_06656
  | 57, _, _ => exact leaf_06657
  | 58, _, _ => exact leaf_06658
  | 59, _, _ => exact leaf_06659
  | 60, _, _ => exact leaf_06660
  | 61, _, _ => exact leaf_06661
  | 62, _, _ => exact leaf_06662
  | 63, _, _ => exact leaf_06663
  | 64, _, _ => exact leaf_06664
  | 65, _, _ => exact leaf_06665
  | 66, _, _ => exact leaf_06666
  | 67, _, _ => exact leaf_06667
  | 68, _, _ => exact leaf_06668
  | 69, _, _ => exact leaf_06669
  | 70, _, _ => exact leaf_06670
  | 71, _, _ => exact leaf_06671
  | 72, _, _ => exact leaf_06672
  | 73, _, _ => exact leaf_06673
  | 74, _, _ => exact leaf_06674
  | 75, _, _ => exact leaf_06675
  | 76, _, _ => exact leaf_06676
  | 77, _, _ => exact leaf_06677
  | 78, _, _ => exact leaf_06678
  | 79, _, _ => exact leaf_06679
  | 80, _, _ => exact leaf_06680
  | 81, _, _ => exact leaf_06681
  | 82, _, _ => exact leaf_06682
  | 83, _, _ => exact leaf_06683
  | 84, _, _ => exact leaf_06684
  | 85, _, _ => exact leaf_06685
  | 86, _, _ => exact leaf_06686
  | 87, _, _ => exact leaf_06687
  | 88, _, _ => exact leaf_06688
  | 89, _, _ => exact leaf_06689
  | 90, _, _ => exact leaf_06690
  | 91, _, _ => exact leaf_06691
  | 92, _, _ => exact leaf_06692
  | 93, _, _ => exact leaf_06693
  | 94, _, _ => exact leaf_06694
  | 95, _, _ => exact leaf_06695
  | 96, _, _ => exact leaf_06696
  | 97, _, _ => exact leaf_06697
  | 98, _, _ => exact leaf_06698
  | 99, _, _ => exact leaf_06699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
