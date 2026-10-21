import TUK.Leaf00600
import TUK.Leaf00601
import TUK.Leaf00602
import TUK.Leaf00603
import TUK.Leaf00604
import TUK.Leaf00605
import TUK.Leaf00606
import TUK.Leaf00607
import TUK.Leaf00608
import TUK.Leaf00609
import TUK.Leaf00610
import TUK.Leaf00611
import TUK.Leaf00612
import TUK.Leaf00613
import TUK.Leaf00614
import TUK.Leaf00615
import TUK.Leaf00616
import TUK.Leaf00617
import TUK.Leaf00618
import TUK.Leaf00619
import TUK.Leaf00620
import TUK.Leaf00621
import TUK.Leaf00622
import TUK.Leaf00623
import TUK.Leaf00624
import TUK.Leaf00625
import TUK.Leaf00626
import TUK.Leaf00627
import TUK.Leaf00628
import TUK.Leaf00629
import TUK.Leaf00630
import TUK.Leaf00631
import TUK.Leaf00632
import TUK.Leaf00633
import TUK.Leaf00634
import TUK.Leaf00635
import TUK.Leaf00636
import TUK.Leaf00637
import TUK.Leaf00638
import TUK.Leaf00639
import TUK.Leaf00640
import TUK.Leaf00641
import TUK.Leaf00642
import TUK.Leaf00643
import TUK.Leaf00644
import TUK.Leaf00645
import TUK.Leaf00646
import TUK.Leaf00647
import TUK.Leaf00648
import TUK.Leaf00649
import TUK.Leaf00650
import TUK.Leaf00651
import TUK.Leaf00652
import TUK.Leaf00653
import TUK.Leaf00654
import TUK.Leaf00655
import TUK.Leaf00656
import TUK.Leaf00657
import TUK.Leaf00658
import TUK.Leaf00659
import TUK.Leaf00660
import TUK.Leaf00661
import TUK.Leaf00662
import TUK.Leaf00663
import TUK.Leaf00664
import TUK.Leaf00665
import TUK.Leaf00666
import TUK.Leaf00667
import TUK.Leaf00668
import TUK.Leaf00669
import TUK.Leaf00670
import TUK.Leaf00671
import TUK.Leaf00672
import TUK.Leaf00673
import TUK.Leaf00674
import TUK.Leaf00675
import TUK.Leaf00676
import TUK.Leaf00677
import TUK.Leaf00678
import TUK.Leaf00679
import TUK.Leaf00680
import TUK.Leaf00681
import TUK.Leaf00682
import TUK.Leaf00683
import TUK.Leaf00684
import TUK.Leaf00685
import TUK.Leaf00686
import TUK.Leaf00687
import TUK.Leaf00688
import TUK.Leaf00689
import TUK.Leaf00690
import TUK.Leaf00691
import TUK.Leaf00692
import TUK.Leaf00693
import TUK.Leaf00694
import TUK.Leaf00695
import TUK.Leaf00696
import TUK.Leaf00697
import TUK.Leaf00698
import TUK.Leaf00699

/-! Leaves 600 .. 699 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_6 : ∀ j < 100, 100 * 6 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 6 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_00600
  | 1, _, _ => exact leaf_00601
  | 2, _, _ => exact leaf_00602
  | 3, _, _ => exact leaf_00603
  | 4, _, _ => exact leaf_00604
  | 5, _, _ => exact leaf_00605
  | 6, _, _ => exact leaf_00606
  | 7, _, _ => exact leaf_00607
  | 8, _, _ => exact leaf_00608
  | 9, _, _ => exact leaf_00609
  | 10, _, _ => exact leaf_00610
  | 11, _, _ => exact leaf_00611
  | 12, _, _ => exact leaf_00612
  | 13, _, _ => exact leaf_00613
  | 14, _, _ => exact leaf_00614
  | 15, _, _ => exact leaf_00615
  | 16, _, _ => exact leaf_00616
  | 17, _, _ => exact leaf_00617
  | 18, _, _ => exact leaf_00618
  | 19, _, _ => exact leaf_00619
  | 20, _, _ => exact leaf_00620
  | 21, _, _ => exact leaf_00621
  | 22, _, _ => exact leaf_00622
  | 23, _, _ => exact leaf_00623
  | 24, _, _ => exact leaf_00624
  | 25, _, _ => exact leaf_00625
  | 26, _, _ => exact leaf_00626
  | 27, _, _ => exact leaf_00627
  | 28, _, _ => exact leaf_00628
  | 29, _, _ => exact leaf_00629
  | 30, _, _ => exact leaf_00630
  | 31, _, _ => exact leaf_00631
  | 32, _, _ => exact leaf_00632
  | 33, _, _ => exact leaf_00633
  | 34, _, _ => exact leaf_00634
  | 35, _, _ => exact leaf_00635
  | 36, _, _ => exact leaf_00636
  | 37, _, _ => exact leaf_00637
  | 38, _, _ => exact leaf_00638
  | 39, _, _ => exact leaf_00639
  | 40, _, _ => exact leaf_00640
  | 41, _, _ => exact leaf_00641
  | 42, _, _ => exact leaf_00642
  | 43, _, _ => exact leaf_00643
  | 44, _, _ => exact leaf_00644
  | 45, _, _ => exact leaf_00645
  | 46, _, _ => exact leaf_00646
  | 47, _, _ => exact leaf_00647
  | 48, _, _ => exact leaf_00648
  | 49, _, _ => exact leaf_00649
  | 50, _, _ => exact leaf_00650
  | 51, _, _ => exact leaf_00651
  | 52, _, _ => exact leaf_00652
  | 53, _, _ => exact leaf_00653
  | 54, _, _ => exact leaf_00654
  | 55, _, _ => exact leaf_00655
  | 56, _, _ => exact leaf_00656
  | 57, _, _ => exact leaf_00657
  | 58, _, _ => exact leaf_00658
  | 59, _, _ => exact leaf_00659
  | 60, _, _ => exact leaf_00660
  | 61, _, _ => exact leaf_00661
  | 62, _, _ => exact leaf_00662
  | 63, _, _ => exact leaf_00663
  | 64, _, _ => exact leaf_00664
  | 65, _, _ => exact leaf_00665
  | 66, _, _ => exact leaf_00666
  | 67, _, _ => exact leaf_00667
  | 68, _, _ => exact leaf_00668
  | 69, _, _ => exact leaf_00669
  | 70, _, _ => exact leaf_00670
  | 71, _, _ => exact leaf_00671
  | 72, _, _ => exact leaf_00672
  | 73, _, _ => exact leaf_00673
  | 74, _, _ => exact leaf_00674
  | 75, _, _ => exact leaf_00675
  | 76, _, _ => exact leaf_00676
  | 77, _, _ => exact leaf_00677
  | 78, _, _ => exact leaf_00678
  | 79, _, _ => exact leaf_00679
  | 80, _, _ => exact leaf_00680
  | 81, _, _ => exact leaf_00681
  | 82, _, _ => exact leaf_00682
  | 83, _, _ => exact leaf_00683
  | 84, _, _ => exact leaf_00684
  | 85, _, _ => exact leaf_00685
  | 86, _, _ => exact leaf_00686
  | 87, _, _ => exact leaf_00687
  | 88, _, _ => exact leaf_00688
  | 89, _, _ => exact leaf_00689
  | 90, _, _ => exact leaf_00690
  | 91, _, _ => exact leaf_00691
  | 92, _, _ => exact leaf_00692
  | 93, _, _ => exact leaf_00693
  | 94, _, _ => exact leaf_00694
  | 95, _, _ => exact leaf_00695
  | 96, _, _ => exact leaf_00696
  | 97, _, _ => exact leaf_00697
  | 98, _, _ => exact leaf_00698
  | 99, _, _ => exact leaf_00699
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
