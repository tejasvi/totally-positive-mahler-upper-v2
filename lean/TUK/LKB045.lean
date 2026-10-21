import TUK.Leaf04500
import TUK.Leaf04501
import TUK.Leaf04502
import TUK.Leaf04503
import TUK.Leaf04504
import TUK.Leaf04505
import TUK.Leaf04506
import TUK.Leaf04507
import TUK.Leaf04508
import TUK.Leaf04509
import TUK.Leaf04510
import TUK.Leaf04511
import TUK.Leaf04512
import TUK.Leaf04513
import TUK.Leaf04514
import TUK.Leaf04515
import TUK.Leaf04516
import TUK.Leaf04517
import TUK.Leaf04518
import TUK.Leaf04519
import TUK.Leaf04520
import TUK.Leaf04521
import TUK.Leaf04522
import TUK.Leaf04523
import TUK.Leaf04524
import TUK.Leaf04525
import TUK.Leaf04526
import TUK.Leaf04527
import TUK.Leaf04528
import TUK.Leaf04529
import TUK.Leaf04530
import TUK.Leaf04531
import TUK.Leaf04532
import TUK.Leaf04533
import TUK.Leaf04534
import TUK.Leaf04535
import TUK.Leaf04536
import TUK.Leaf04537
import TUK.Leaf04538
import TUK.Leaf04539
import TUK.Leaf04540
import TUK.Leaf04541
import TUK.Leaf04542
import TUK.Leaf04543
import TUK.Leaf04544
import TUK.Leaf04545
import TUK.Leaf04546
import TUK.Leaf04547
import TUK.Leaf04548
import TUK.Leaf04549
import TUK.Leaf04550
import TUK.Leaf04551
import TUK.Leaf04552
import TUK.Leaf04553
import TUK.Leaf04554
import TUK.Leaf04555
import TUK.Leaf04556
import TUK.Leaf04557
import TUK.Leaf04558
import TUK.Leaf04559
import TUK.Leaf04560
import TUK.Leaf04561
import TUK.Leaf04562
import TUK.Leaf04563
import TUK.Leaf04564
import TUK.Leaf04565
import TUK.Leaf04566
import TUK.Leaf04567
import TUK.Leaf04568
import TUK.Leaf04569
import TUK.Leaf04570
import TUK.Leaf04571
import TUK.Leaf04572
import TUK.Leaf04573
import TUK.Leaf04574
import TUK.Leaf04575
import TUK.Leaf04576
import TUK.Leaf04577
import TUK.Leaf04578
import TUK.Leaf04579
import TUK.Leaf04580
import TUK.Leaf04581
import TUK.Leaf04582
import TUK.Leaf04583
import TUK.Leaf04584
import TUK.Leaf04585
import TUK.Leaf04586
import TUK.Leaf04587
import TUK.Leaf04588
import TUK.Leaf04589
import TUK.Leaf04590
import TUK.Leaf04591
import TUK.Leaf04592
import TUK.Leaf04593
import TUK.Leaf04594
import TUK.Leaf04595
import TUK.Leaf04596
import TUK.Leaf04597
import TUK.Leaf04598
import TUK.Leaf04599

/-! Leaves 4500 .. 4599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_45 : ∀ j < 100, 100 * 45 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 45 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_04500
  | 1, _, _ => exact leaf_04501
  | 2, _, _ => exact leaf_04502
  | 3, _, _ => exact leaf_04503
  | 4, _, _ => exact leaf_04504
  | 5, _, _ => exact leaf_04505
  | 6, _, _ => exact leaf_04506
  | 7, _, _ => exact leaf_04507
  | 8, _, _ => exact leaf_04508
  | 9, _, _ => exact leaf_04509
  | 10, _, _ => exact leaf_04510
  | 11, _, _ => exact leaf_04511
  | 12, _, _ => exact leaf_04512
  | 13, _, _ => exact leaf_04513
  | 14, _, _ => exact leaf_04514
  | 15, _, _ => exact leaf_04515
  | 16, _, _ => exact leaf_04516
  | 17, _, _ => exact leaf_04517
  | 18, _, _ => exact leaf_04518
  | 19, _, _ => exact leaf_04519
  | 20, _, _ => exact leaf_04520
  | 21, _, _ => exact leaf_04521
  | 22, _, _ => exact leaf_04522
  | 23, _, _ => exact leaf_04523
  | 24, _, _ => exact leaf_04524
  | 25, _, _ => exact leaf_04525
  | 26, _, _ => exact leaf_04526
  | 27, _, _ => exact leaf_04527
  | 28, _, _ => exact leaf_04528
  | 29, _, _ => exact leaf_04529
  | 30, _, _ => exact leaf_04530
  | 31, _, _ => exact leaf_04531
  | 32, _, _ => exact leaf_04532
  | 33, _, _ => exact leaf_04533
  | 34, _, _ => exact leaf_04534
  | 35, _, _ => exact leaf_04535
  | 36, _, _ => exact leaf_04536
  | 37, _, _ => exact leaf_04537
  | 38, _, _ => exact leaf_04538
  | 39, _, _ => exact leaf_04539
  | 40, _, _ => exact leaf_04540
  | 41, _, _ => exact leaf_04541
  | 42, _, _ => exact leaf_04542
  | 43, _, _ => exact leaf_04543
  | 44, _, _ => exact leaf_04544
  | 45, _, _ => exact leaf_04545
  | 46, _, _ => exact leaf_04546
  | 47, _, _ => exact leaf_04547
  | 48, _, _ => exact leaf_04548
  | 49, _, _ => exact leaf_04549
  | 50, _, _ => exact leaf_04550
  | 51, _, _ => exact leaf_04551
  | 52, _, _ => exact leaf_04552
  | 53, _, _ => exact leaf_04553
  | 54, _, _ => exact leaf_04554
  | 55, _, _ => exact leaf_04555
  | 56, _, _ => exact leaf_04556
  | 57, _, _ => exact leaf_04557
  | 58, _, _ => exact leaf_04558
  | 59, _, _ => exact leaf_04559
  | 60, _, _ => exact leaf_04560
  | 61, _, _ => exact leaf_04561
  | 62, _, _ => exact leaf_04562
  | 63, _, _ => exact leaf_04563
  | 64, _, _ => exact leaf_04564
  | 65, _, _ => exact leaf_04565
  | 66, _, _ => exact leaf_04566
  | 67, _, _ => exact leaf_04567
  | 68, _, _ => exact leaf_04568
  | 69, _, _ => exact leaf_04569
  | 70, _, _ => exact leaf_04570
  | 71, _, _ => exact leaf_04571
  | 72, _, _ => exact leaf_04572
  | 73, _, _ => exact leaf_04573
  | 74, _, _ => exact leaf_04574
  | 75, _, _ => exact leaf_04575
  | 76, _, _ => exact leaf_04576
  | 77, _, _ => exact leaf_04577
  | 78, _, _ => exact leaf_04578
  | 79, _, _ => exact leaf_04579
  | 80, _, _ => exact leaf_04580
  | 81, _, _ => exact leaf_04581
  | 82, _, _ => exact leaf_04582
  | 83, _, _ => exact leaf_04583
  | 84, _, _ => exact leaf_04584
  | 85, _, _ => exact leaf_04585
  | 86, _, _ => exact leaf_04586
  | 87, _, _ => exact leaf_04587
  | 88, _, _ => exact leaf_04588
  | 89, _, _ => exact leaf_04589
  | 90, _, _ => exact leaf_04590
  | 91, _, _ => exact leaf_04591
  | 92, _, _ => exact leaf_04592
  | 93, _, _ => exact leaf_04593
  | 94, _, _ => exact leaf_04594
  | 95, _, _ => exact leaf_04595
  | 96, _, _ => exact leaf_04596
  | 97, _, _ => exact leaf_04597
  | 98, _, _ => exact leaf_04598
  | 99, _, _ => exact leaf_04599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
