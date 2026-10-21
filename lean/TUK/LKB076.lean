import TUK.Leaf07600
import TUK.Leaf07601
import TUK.Leaf07602
import TUK.Leaf07603
import TUK.Leaf07604
import TUK.Leaf07605
import TUK.Leaf07606
import TUK.Leaf07607
import TUK.Leaf07608
import TUK.Leaf07609
import TUK.Leaf07610
import TUK.Leaf07611
import TUK.Leaf07612
import TUK.Leaf07613
import TUK.Leaf07614
import TUK.Leaf07615
import TUK.Leaf07616
import TUK.Leaf07617
import TUK.Leaf07618
import TUK.Leaf07619
import TUK.Leaf07620
import TUK.Leaf07621
import TUK.Leaf07622
import TUK.Leaf07623
import TUK.Leaf07624
import TUK.Leaf07625
import TUK.Leaf07626
import TUK.Leaf07627
import TUK.Leaf07628
import TUK.Leaf07629
import TUK.Leaf07630
import TUK.Leaf07631
import TUK.Leaf07632
import TUK.Leaf07633
import TUK.Leaf07634
import TUK.Leaf07635
import TUK.Leaf07636
import TUK.Leaf07637
import TUK.Leaf07638
import TUK.Leaf07639
import TUK.Leaf07640
import TUK.Leaf07641
import TUK.Leaf07642
import TUK.Leaf07643
import TUK.Leaf07644
import TUK.Leaf07645
import TUK.Leaf07646
import TUK.Leaf07647
import TUK.Leaf07648
import TUK.Leaf07649
import TUK.Leaf07650
import TUK.Leaf07651
import TUK.Leaf07652
import TUK.Leaf07653
import TUK.Leaf07654
import TUK.Leaf07655
import TUK.Leaf07656
import TUK.Leaf07657
import TUK.Leaf07658
import TUK.Leaf07659
import TUK.Leaf07660
import TUK.Leaf07661
import TUK.Leaf07662
import TUK.Leaf07663
import TUK.Leaf07664
import TUK.Leaf07665
import TUK.Leaf07666
import TUK.Leaf07667
import TUK.Leaf07668
import TUK.Leaf07669
import TUK.Leaf07670
import TUK.Leaf07671
import TUK.Leaf07672
import TUK.Leaf07673
import TUK.Leaf07674
import TUK.Leaf07675
import TUK.Leaf07676
import TUK.Leaf07677
import TUK.Leaf07678
import TUK.Leaf07679
import TUK.Leaf07680
import TUK.Leaf07681
import TUK.Leaf07682
import TUK.Leaf07683
import TUK.Leaf07684
import TUK.Leaf07685
import TUK.Leaf07686
import TUK.Leaf07687
import TUK.Leaf07688
import TUK.Leaf07689
import TUK.Leaf07690
import TUK.Leaf07691
import TUK.Leaf07692
import TUK.Leaf07693
import TUK.Leaf07694
import TUK.Leaf07695
import TUK.Leaf07696
import TUK.Leaf07697
import TUK.Leaf07698
import TUK.Leaf07699

/-! Leaves 7600 .. 7699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_76 : ∀ j < 100, 100 * 76 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 76 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_07600
  | 1, _, _ => exact leaf_07601
  | 2, _, _ => exact leaf_07602
  | 3, _, _ => exact leaf_07603
  | 4, _, _ => exact leaf_07604
  | 5, _, _ => exact leaf_07605
  | 6, _, _ => exact leaf_07606
  | 7, _, _ => exact leaf_07607
  | 8, _, _ => exact leaf_07608
  | 9, _, _ => exact leaf_07609
  | 10, _, _ => exact leaf_07610
  | 11, _, _ => exact leaf_07611
  | 12, _, _ => exact leaf_07612
  | 13, _, _ => exact leaf_07613
  | 14, _, _ => exact leaf_07614
  | 15, _, _ => exact leaf_07615
  | 16, _, _ => exact leaf_07616
  | 17, _, _ => exact leaf_07617
  | 18, _, _ => exact leaf_07618
  | 19, _, _ => exact leaf_07619
  | 20, _, _ => exact leaf_07620
  | 21, _, _ => exact leaf_07621
  | 22, _, _ => exact leaf_07622
  | 23, _, _ => exact leaf_07623
  | 24, _, _ => exact leaf_07624
  | 25, _, _ => exact leaf_07625
  | 26, _, _ => exact leaf_07626
  | 27, _, _ => exact leaf_07627
  | 28, _, _ => exact leaf_07628
  | 29, _, _ => exact leaf_07629
  | 30, _, _ => exact leaf_07630
  | 31, _, _ => exact leaf_07631
  | 32, _, _ => exact leaf_07632
  | 33, _, _ => exact leaf_07633
  | 34, _, _ => exact leaf_07634
  | 35, _, _ => exact leaf_07635
  | 36, _, _ => exact leaf_07636
  | 37, _, _ => exact leaf_07637
  | 38, _, _ => exact leaf_07638
  | 39, _, _ => exact leaf_07639
  | 40, _, _ => exact leaf_07640
  | 41, _, _ => exact leaf_07641
  | 42, _, _ => exact leaf_07642
  | 43, _, _ => exact leaf_07643
  | 44, _, _ => exact leaf_07644
  | 45, _, _ => exact leaf_07645
  | 46, _, _ => exact leaf_07646
  | 47, _, _ => exact leaf_07647
  | 48, _, _ => exact leaf_07648
  | 49, _, _ => exact leaf_07649
  | 50, _, _ => exact leaf_07650
  | 51, _, _ => exact leaf_07651
  | 52, _, _ => exact leaf_07652
  | 53, _, _ => exact leaf_07653
  | 54, _, _ => exact leaf_07654
  | 55, _, _ => exact leaf_07655
  | 56, _, _ => exact leaf_07656
  | 57, _, _ => exact leaf_07657
  | 58, _, _ => exact leaf_07658
  | 59, _, _ => exact leaf_07659
  | 60, _, _ => exact leaf_07660
  | 61, _, _ => exact leaf_07661
  | 62, _, _ => exact leaf_07662
  | 63, _, _ => exact leaf_07663
  | 64, _, _ => exact leaf_07664
  | 65, _, _ => exact leaf_07665
  | 66, _, _ => exact leaf_07666
  | 67, _, _ => exact leaf_07667
  | 68, _, _ => exact leaf_07668
  | 69, _, _ => exact leaf_07669
  | 70, _, _ => exact leaf_07670
  | 71, _, _ => exact leaf_07671
  | 72, _, _ => exact leaf_07672
  | 73, _, _ => exact leaf_07673
  | 74, _, _ => exact leaf_07674
  | 75, _, _ => exact leaf_07675
  | 76, _, _ => exact leaf_07676
  | 77, _, _ => exact leaf_07677
  | 78, _, _ => exact leaf_07678
  | 79, _, _ => exact leaf_07679
  | 80, _, _ => exact leaf_07680
  | 81, _, _ => exact leaf_07681
  | 82, _, _ => exact leaf_07682
  | 83, _, _ => exact leaf_07683
  | 84, _, _ => exact leaf_07684
  | 85, _, _ => exact leaf_07685
  | 86, _, _ => exact leaf_07686
  | 87, _, _ => exact leaf_07687
  | 88, _, _ => exact leaf_07688
  | 89, _, _ => exact leaf_07689
  | 90, _, _ => exact leaf_07690
  | 91, _, _ => exact leaf_07691
  | 92, _, _ => exact leaf_07692
  | 93, _, _ => exact leaf_07693
  | 94, _, _ => exact leaf_07694
  | 95, _, _ => exact leaf_07695
  | 96, _, _ => exact leaf_07696
  | 97, _, _ => exact leaf_07697
  | 98, _, _ => exact leaf_07698
  | 99, _, _ => exact leaf_07699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
