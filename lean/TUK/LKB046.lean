import TUK.Leaf04600
import TUK.Leaf04601
import TUK.Leaf04602
import TUK.Leaf04603
import TUK.Leaf04604
import TUK.Leaf04605
import TUK.Leaf04606
import TUK.Leaf04607
import TUK.Leaf04608
import TUK.Leaf04609
import TUK.Leaf04610
import TUK.Leaf04611
import TUK.Leaf04612
import TUK.Leaf04613
import TUK.Leaf04614
import TUK.Leaf04615
import TUK.Leaf04616
import TUK.Leaf04617
import TUK.Leaf04618
import TUK.Leaf04619
import TUK.Leaf04620
import TUK.Leaf04621
import TUK.Leaf04622
import TUK.Leaf04623
import TUK.Leaf04624
import TUK.Leaf04625
import TUK.Leaf04626
import TUK.Leaf04627
import TUK.Leaf04628
import TUK.Leaf04629
import TUK.Leaf04630
import TUK.Leaf04631
import TUK.Leaf04632
import TUK.Leaf04633
import TUK.Leaf04634
import TUK.Leaf04635
import TUK.Leaf04636
import TUK.Leaf04637
import TUK.Leaf04638
import TUK.Leaf04639
import TUK.Leaf04640
import TUK.Leaf04641
import TUK.Leaf04642
import TUK.Leaf04643
import TUK.Leaf04644
import TUK.Leaf04645
import TUK.Leaf04646
import TUK.Leaf04647
import TUK.Leaf04648
import TUK.Leaf04649
import TUK.Leaf04650
import TUK.Leaf04651
import TUK.Leaf04652
import TUK.Leaf04653
import TUK.Leaf04654
import TUK.Leaf04655
import TUK.Leaf04656
import TUK.Leaf04657
import TUK.Leaf04658
import TUK.Leaf04659
import TUK.Leaf04660
import TUK.Leaf04661
import TUK.Leaf04662
import TUK.Leaf04663
import TUK.Leaf04664
import TUK.Leaf04665
import TUK.Leaf04666
import TUK.Leaf04667
import TUK.Leaf04668
import TUK.Leaf04669
import TUK.Leaf04670
import TUK.Leaf04671
import TUK.Leaf04672
import TUK.Leaf04673
import TUK.Leaf04674
import TUK.Leaf04675
import TUK.Leaf04676
import TUK.Leaf04677
import TUK.Leaf04678
import TUK.Leaf04679
import TUK.Leaf04680
import TUK.Leaf04681
import TUK.Leaf04682
import TUK.Leaf04683
import TUK.Leaf04684
import TUK.Leaf04685
import TUK.Leaf04686
import TUK.Leaf04687
import TUK.Leaf04688
import TUK.Leaf04689
import TUK.Leaf04690
import TUK.Leaf04691
import TUK.Leaf04692
import TUK.Leaf04693
import TUK.Leaf04694
import TUK.Leaf04695
import TUK.Leaf04696
import TUK.Leaf04697
import TUK.Leaf04698
import TUK.Leaf04699

/-! Leaves 4600 .. 4699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_46 : ∀ j < 100, 100 * 46 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 46 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_04600
  | 1, _, _ => exact leaf_04601
  | 2, _, _ => exact leaf_04602
  | 3, _, _ => exact leaf_04603
  | 4, _, _ => exact leaf_04604
  | 5, _, _ => exact leaf_04605
  | 6, _, _ => exact leaf_04606
  | 7, _, _ => exact leaf_04607
  | 8, _, _ => exact leaf_04608
  | 9, _, _ => exact leaf_04609
  | 10, _, _ => exact leaf_04610
  | 11, _, _ => exact leaf_04611
  | 12, _, _ => exact leaf_04612
  | 13, _, _ => exact leaf_04613
  | 14, _, _ => exact leaf_04614
  | 15, _, _ => exact leaf_04615
  | 16, _, _ => exact leaf_04616
  | 17, _, _ => exact leaf_04617
  | 18, _, _ => exact leaf_04618
  | 19, _, _ => exact leaf_04619
  | 20, _, _ => exact leaf_04620
  | 21, _, _ => exact leaf_04621
  | 22, _, _ => exact leaf_04622
  | 23, _, _ => exact leaf_04623
  | 24, _, _ => exact leaf_04624
  | 25, _, _ => exact leaf_04625
  | 26, _, _ => exact leaf_04626
  | 27, _, _ => exact leaf_04627
  | 28, _, _ => exact leaf_04628
  | 29, _, _ => exact leaf_04629
  | 30, _, _ => exact leaf_04630
  | 31, _, _ => exact leaf_04631
  | 32, _, _ => exact leaf_04632
  | 33, _, _ => exact leaf_04633
  | 34, _, _ => exact leaf_04634
  | 35, _, _ => exact leaf_04635
  | 36, _, _ => exact leaf_04636
  | 37, _, _ => exact leaf_04637
  | 38, _, _ => exact leaf_04638
  | 39, _, _ => exact leaf_04639
  | 40, _, _ => exact leaf_04640
  | 41, _, _ => exact leaf_04641
  | 42, _, _ => exact leaf_04642
  | 43, _, _ => exact leaf_04643
  | 44, _, _ => exact leaf_04644
  | 45, _, _ => exact leaf_04645
  | 46, _, _ => exact leaf_04646
  | 47, _, _ => exact leaf_04647
  | 48, _, _ => exact leaf_04648
  | 49, _, _ => exact leaf_04649
  | 50, _, _ => exact leaf_04650
  | 51, _, _ => exact leaf_04651
  | 52, _, _ => exact leaf_04652
  | 53, _, _ => exact leaf_04653
  | 54, _, _ => exact leaf_04654
  | 55, _, _ => exact leaf_04655
  | 56, _, _ => exact leaf_04656
  | 57, _, _ => exact leaf_04657
  | 58, _, _ => exact leaf_04658
  | 59, _, _ => exact leaf_04659
  | 60, _, _ => exact leaf_04660
  | 61, _, _ => exact leaf_04661
  | 62, _, _ => exact leaf_04662
  | 63, _, _ => exact leaf_04663
  | 64, _, _ => exact leaf_04664
  | 65, _, _ => exact leaf_04665
  | 66, _, _ => exact leaf_04666
  | 67, _, _ => exact leaf_04667
  | 68, _, _ => exact leaf_04668
  | 69, _, _ => exact leaf_04669
  | 70, _, _ => exact leaf_04670
  | 71, _, _ => exact leaf_04671
  | 72, _, _ => exact leaf_04672
  | 73, _, _ => exact leaf_04673
  | 74, _, _ => exact leaf_04674
  | 75, _, _ => exact leaf_04675
  | 76, _, _ => exact leaf_04676
  | 77, _, _ => exact leaf_04677
  | 78, _, _ => exact leaf_04678
  | 79, _, _ => exact leaf_04679
  | 80, _, _ => exact leaf_04680
  | 81, _, _ => exact leaf_04681
  | 82, _, _ => exact leaf_04682
  | 83, _, _ => exact leaf_04683
  | 84, _, _ => exact leaf_04684
  | 85, _, _ => exact leaf_04685
  | 86, _, _ => exact leaf_04686
  | 87, _, _ => exact leaf_04687
  | 88, _, _ => exact leaf_04688
  | 89, _, _ => exact leaf_04689
  | 90, _, _ => exact leaf_04690
  | 91, _, _ => exact leaf_04691
  | 92, _, _ => exact leaf_04692
  | 93, _, _ => exact leaf_04693
  | 94, _, _ => exact leaf_04694
  | 95, _, _ => exact leaf_04695
  | 96, _, _ => exact leaf_04696
  | 97, _, _ => exact leaf_04697
  | 98, _, _ => exact leaf_04698
  | 99, _, _ => exact leaf_04699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
