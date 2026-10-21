import TUK.Leaf05600
import TUK.Leaf05601
import TUK.Leaf05602
import TUK.Leaf05603
import TUK.Leaf05604
import TUK.Leaf05605
import TUK.Leaf05606
import TUK.Leaf05607
import TUK.Leaf05608
import TUK.Leaf05609
import TUK.Leaf05610
import TUK.Leaf05611
import TUK.Leaf05612
import TUK.Leaf05613
import TUK.Leaf05614
import TUK.Leaf05615
import TUK.Leaf05616
import TUK.Leaf05617
import TUK.Leaf05618
import TUK.Leaf05619
import TUK.Leaf05620
import TUK.Leaf05621
import TUK.Leaf05622
import TUK.Leaf05623
import TUK.Leaf05624
import TUK.Leaf05625
import TUK.Leaf05626
import TUK.Leaf05627
import TUK.Leaf05628
import TUK.Leaf05629
import TUK.Leaf05630
import TUK.Leaf05631
import TUK.Leaf05632
import TUK.Leaf05633
import TUK.Leaf05634
import TUK.Leaf05635
import TUK.Leaf05636
import TUK.Leaf05637
import TUK.Leaf05638
import TUK.Leaf05639
import TUK.Leaf05640
import TUK.Leaf05641
import TUK.Leaf05642
import TUK.Leaf05643
import TUK.Leaf05644
import TUK.Leaf05645
import TUK.Leaf05646
import TUK.Leaf05647
import TUK.Leaf05648
import TUK.Leaf05649
import TUK.Leaf05650
import TUK.Leaf05651
import TUK.Leaf05652
import TUK.Leaf05653
import TUK.Leaf05654
import TUK.Leaf05655
import TUK.Leaf05656
import TUK.Leaf05657
import TUK.Leaf05658
import TUK.Leaf05659
import TUK.Leaf05660
import TUK.Leaf05661
import TUK.Leaf05662
import TUK.Leaf05663
import TUK.Leaf05664
import TUK.Leaf05665
import TUK.Leaf05666
import TUK.Leaf05667
import TUK.Leaf05668
import TUK.Leaf05669
import TUK.Leaf05670
import TUK.Leaf05671
import TUK.Leaf05672
import TUK.Leaf05673
import TUK.Leaf05674
import TUK.Leaf05675
import TUK.Leaf05676
import TUK.Leaf05677
import TUK.Leaf05678
import TUK.Leaf05679
import TUK.Leaf05680
import TUK.Leaf05681
import TUK.Leaf05682
import TUK.Leaf05683
import TUK.Leaf05684
import TUK.Leaf05685
import TUK.Leaf05686
import TUK.Leaf05687
import TUK.Leaf05688
import TUK.Leaf05689
import TUK.Leaf05690
import TUK.Leaf05691
import TUK.Leaf05692
import TUK.Leaf05693
import TUK.Leaf05694
import TUK.Leaf05695
import TUK.Leaf05696
import TUK.Leaf05697
import TUK.Leaf05698
import TUK.Leaf05699

/-! Leaves 5600 .. 5699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_56 : ∀ j < 100, 100 * 56 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 56 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_05600
  | 1, _, _ => exact leaf_05601
  | 2, _, _ => exact leaf_05602
  | 3, _, _ => exact leaf_05603
  | 4, _, _ => exact leaf_05604
  | 5, _, _ => exact leaf_05605
  | 6, _, _ => exact leaf_05606
  | 7, _, _ => exact leaf_05607
  | 8, _, _ => exact leaf_05608
  | 9, _, _ => exact leaf_05609
  | 10, _, _ => exact leaf_05610
  | 11, _, _ => exact leaf_05611
  | 12, _, _ => exact leaf_05612
  | 13, _, _ => exact leaf_05613
  | 14, _, _ => exact leaf_05614
  | 15, _, _ => exact leaf_05615
  | 16, _, _ => exact leaf_05616
  | 17, _, _ => exact leaf_05617
  | 18, _, _ => exact leaf_05618
  | 19, _, _ => exact leaf_05619
  | 20, _, _ => exact leaf_05620
  | 21, _, _ => exact leaf_05621
  | 22, _, _ => exact leaf_05622
  | 23, _, _ => exact leaf_05623
  | 24, _, _ => exact leaf_05624
  | 25, _, _ => exact leaf_05625
  | 26, _, _ => exact leaf_05626
  | 27, _, _ => exact leaf_05627
  | 28, _, _ => exact leaf_05628
  | 29, _, _ => exact leaf_05629
  | 30, _, _ => exact leaf_05630
  | 31, _, _ => exact leaf_05631
  | 32, _, _ => exact leaf_05632
  | 33, _, _ => exact leaf_05633
  | 34, _, _ => exact leaf_05634
  | 35, _, _ => exact leaf_05635
  | 36, _, _ => exact leaf_05636
  | 37, _, _ => exact leaf_05637
  | 38, _, _ => exact leaf_05638
  | 39, _, _ => exact leaf_05639
  | 40, _, _ => exact leaf_05640
  | 41, _, _ => exact leaf_05641
  | 42, _, _ => exact leaf_05642
  | 43, _, _ => exact leaf_05643
  | 44, _, _ => exact leaf_05644
  | 45, _, _ => exact leaf_05645
  | 46, _, _ => exact leaf_05646
  | 47, _, _ => exact leaf_05647
  | 48, _, _ => exact leaf_05648
  | 49, _, _ => exact leaf_05649
  | 50, _, _ => exact leaf_05650
  | 51, _, _ => exact leaf_05651
  | 52, _, _ => exact leaf_05652
  | 53, _, _ => exact leaf_05653
  | 54, _, _ => exact leaf_05654
  | 55, _, _ => exact leaf_05655
  | 56, _, _ => exact leaf_05656
  | 57, _, _ => exact leaf_05657
  | 58, _, _ => exact leaf_05658
  | 59, _, _ => exact leaf_05659
  | 60, _, _ => exact leaf_05660
  | 61, _, _ => exact leaf_05661
  | 62, _, _ => exact leaf_05662
  | 63, _, _ => exact leaf_05663
  | 64, _, _ => exact leaf_05664
  | 65, _, _ => exact leaf_05665
  | 66, _, _ => exact leaf_05666
  | 67, _, _ => exact leaf_05667
  | 68, _, _ => exact leaf_05668
  | 69, _, _ => exact leaf_05669
  | 70, _, _ => exact leaf_05670
  | 71, _, _ => exact leaf_05671
  | 72, _, _ => exact leaf_05672
  | 73, _, _ => exact leaf_05673
  | 74, _, _ => exact leaf_05674
  | 75, _, _ => exact leaf_05675
  | 76, _, _ => exact leaf_05676
  | 77, _, _ => exact leaf_05677
  | 78, _, _ => exact leaf_05678
  | 79, _, _ => exact leaf_05679
  | 80, _, _ => exact leaf_05680
  | 81, _, _ => exact leaf_05681
  | 82, _, _ => exact leaf_05682
  | 83, _, _ => exact leaf_05683
  | 84, _, _ => exact leaf_05684
  | 85, _, _ => exact leaf_05685
  | 86, _, _ => exact leaf_05686
  | 87, _, _ => exact leaf_05687
  | 88, _, _ => exact leaf_05688
  | 89, _, _ => exact leaf_05689
  | 90, _, _ => exact leaf_05690
  | 91, _, _ => exact leaf_05691
  | 92, _, _ => exact leaf_05692
  | 93, _, _ => exact leaf_05693
  | 94, _, _ => exact leaf_05694
  | 95, _, _ => exact leaf_05695
  | 96, _, _ => exact leaf_05696
  | 97, _, _ => exact leaf_05697
  | 98, _, _ => exact leaf_05698
  | 99, _, _ => exact leaf_05699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
