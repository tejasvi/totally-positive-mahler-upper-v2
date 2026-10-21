import TUK.Leaf10500
import TUK.Leaf10501
import TUK.Leaf10502
import TUK.Leaf10503
import TUK.Leaf10504
import TUK.Leaf10505
import TUK.Leaf10506
import TUK.Leaf10507
import TUK.Leaf10508
import TUK.Leaf10509
import TUK.Leaf10510
import TUK.Leaf10511
import TUK.Leaf10512
import TUK.Leaf10513
import TUK.Leaf10514
import TUK.Leaf10515
import TUK.Leaf10516
import TUK.Leaf10517
import TUK.Leaf10518
import TUK.Leaf10519
import TUK.Leaf10520
import TUK.Leaf10521
import TUK.Leaf10522
import TUK.Leaf10523
import TUK.Leaf10524
import TUK.Leaf10525
import TUK.Leaf10526
import TUK.Leaf10527
import TUK.Leaf10528
import TUK.Leaf10529
import TUK.Leaf10530
import TUK.Leaf10531
import TUK.Leaf10532
import TUK.Leaf10533
import TUK.Leaf10534
import TUK.Leaf10535
import TUK.Leaf10536
import TUK.Leaf10537
import TUK.Leaf10538
import TUK.Leaf10539
import TUK.Leaf10540
import TUK.Leaf10541
import TUK.Leaf10542
import TUK.Leaf10543
import TUK.Leaf10544
import TUK.Leaf10545
import TUK.Leaf10546
import TUK.Leaf10547
import TUK.Leaf10548
import TUK.Leaf10549
import TUK.Leaf10550
import TUK.Leaf10551
import TUK.Leaf10552
import TUK.Leaf10553
import TUK.Leaf10554
import TUK.Leaf10555
import TUK.Leaf10556
import TUK.Leaf10557
import TUK.Leaf10558
import TUK.Leaf10559
import TUK.Leaf10560
import TUK.Leaf10561
import TUK.Leaf10562
import TUK.Leaf10563
import TUK.Leaf10564
import TUK.Leaf10565
import TUK.Leaf10566
import TUK.Leaf10567
import TUK.Leaf10568
import TUK.Leaf10569
import TUK.Leaf10570
import TUK.Leaf10571
import TUK.Leaf10572
import TUK.Leaf10573
import TUK.Leaf10574
import TUK.Leaf10575
import TUK.Leaf10576
import TUK.Leaf10577
import TUK.Leaf10578
import TUK.Leaf10579
import TUK.Leaf10580
import TUK.Leaf10581
import TUK.Leaf10582
import TUK.Leaf10583
import TUK.Leaf10584
import TUK.Leaf10585
import TUK.Leaf10586
import TUK.Leaf10587
import TUK.Leaf10588
import TUK.Leaf10589
import TUK.Leaf10590
import TUK.Leaf10591
import TUK.Leaf10592
import TUK.Leaf10593
import TUK.Leaf10594
import TUK.Leaf10595
import TUK.Leaf10596
import TUK.Leaf10597
import TUK.Leaf10598
import TUK.Leaf10599

/-! Leaves 10500 .. 10599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_105 : ∀ j < 100, 100 * 105 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 105 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_10500
  | 1, _, _ => exact leaf_10501
  | 2, _, _ => exact leaf_10502
  | 3, _, _ => exact leaf_10503
  | 4, _, _ => exact leaf_10504
  | 5, _, _ => exact leaf_10505
  | 6, _, _ => exact leaf_10506
  | 7, _, _ => exact leaf_10507
  | 8, _, _ => exact leaf_10508
  | 9, _, _ => exact leaf_10509
  | 10, _, _ => exact leaf_10510
  | 11, _, _ => exact leaf_10511
  | 12, _, _ => exact leaf_10512
  | 13, _, _ => exact leaf_10513
  | 14, _, _ => exact leaf_10514
  | 15, _, _ => exact leaf_10515
  | 16, _, _ => exact leaf_10516
  | 17, _, _ => exact leaf_10517
  | 18, _, _ => exact leaf_10518
  | 19, _, _ => exact leaf_10519
  | 20, _, _ => exact leaf_10520
  | 21, _, _ => exact leaf_10521
  | 22, _, _ => exact leaf_10522
  | 23, _, _ => exact leaf_10523
  | 24, _, _ => exact leaf_10524
  | 25, _, _ => exact leaf_10525
  | 26, _, _ => exact leaf_10526
  | 27, _, _ => exact leaf_10527
  | 28, _, _ => exact leaf_10528
  | 29, _, _ => exact leaf_10529
  | 30, _, _ => exact leaf_10530
  | 31, _, _ => exact leaf_10531
  | 32, _, _ => exact leaf_10532
  | 33, _, _ => exact leaf_10533
  | 34, _, _ => exact leaf_10534
  | 35, _, _ => exact leaf_10535
  | 36, _, _ => exact leaf_10536
  | 37, _, _ => exact leaf_10537
  | 38, _, _ => exact leaf_10538
  | 39, _, _ => exact leaf_10539
  | 40, _, _ => exact leaf_10540
  | 41, _, _ => exact leaf_10541
  | 42, _, _ => exact leaf_10542
  | 43, _, _ => exact leaf_10543
  | 44, _, _ => exact leaf_10544
  | 45, _, _ => exact leaf_10545
  | 46, _, _ => exact leaf_10546
  | 47, _, _ => exact leaf_10547
  | 48, _, _ => exact leaf_10548
  | 49, _, _ => exact leaf_10549
  | 50, _, _ => exact leaf_10550
  | 51, _, _ => exact leaf_10551
  | 52, _, _ => exact leaf_10552
  | 53, _, _ => exact leaf_10553
  | 54, _, _ => exact leaf_10554
  | 55, _, _ => exact leaf_10555
  | 56, _, _ => exact leaf_10556
  | 57, _, _ => exact leaf_10557
  | 58, _, _ => exact leaf_10558
  | 59, _, _ => exact leaf_10559
  | 60, _, _ => exact leaf_10560
  | 61, _, _ => exact leaf_10561
  | 62, _, _ => exact leaf_10562
  | 63, _, _ => exact leaf_10563
  | 64, _, _ => exact leaf_10564
  | 65, _, _ => exact leaf_10565
  | 66, _, _ => exact leaf_10566
  | 67, _, _ => exact leaf_10567
  | 68, _, _ => exact leaf_10568
  | 69, _, _ => exact leaf_10569
  | 70, _, _ => exact leaf_10570
  | 71, _, _ => exact leaf_10571
  | 72, _, _ => exact leaf_10572
  | 73, _, _ => exact leaf_10573
  | 74, _, _ => exact leaf_10574
  | 75, _, _ => exact leaf_10575
  | 76, _, _ => exact leaf_10576
  | 77, _, _ => exact leaf_10577
  | 78, _, _ => exact leaf_10578
  | 79, _, _ => exact leaf_10579
  | 80, _, _ => exact leaf_10580
  | 81, _, _ => exact leaf_10581
  | 82, _, _ => exact leaf_10582
  | 83, _, _ => exact leaf_10583
  | 84, _, _ => exact leaf_10584
  | 85, _, _ => exact leaf_10585
  | 86, _, _ => exact leaf_10586
  | 87, _, _ => exact leaf_10587
  | 88, _, _ => exact leaf_10588
  | 89, _, _ => exact leaf_10589
  | 90, _, _ => exact leaf_10590
  | 91, _, _ => exact leaf_10591
  | 92, _, _ => exact leaf_10592
  | 93, _, _ => exact leaf_10593
  | 94, _, _ => exact leaf_10594
  | 95, _, _ => exact leaf_10595
  | 96, _, _ => exact leaf_10596
  | 97, _, _ => exact leaf_10597
  | 98, _, _ => exact leaf_10598
  | 99, _, _ => exact leaf_10599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
