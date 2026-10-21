import TUK.Leaf00500
import TUK.Leaf00501
import TUK.Leaf00502
import TUK.Leaf00503
import TUK.Leaf00504
import TUK.Leaf00505
import TUK.Leaf00506
import TUK.Leaf00507
import TUK.Leaf00508
import TUK.Leaf00509
import TUK.Leaf00510
import TUK.Leaf00511
import TUK.Leaf00512
import TUK.Leaf00513
import TUK.Leaf00514
import TUK.Leaf00515
import TUK.Leaf00516
import TUK.Leaf00517
import TUK.Leaf00518
import TUK.Leaf00519
import TUK.Leaf00520
import TUK.Leaf00521
import TUK.Leaf00522
import TUK.Leaf00523
import TUK.Leaf00524
import TUK.Leaf00525
import TUK.Leaf00526
import TUK.Leaf00527
import TUK.Leaf00528
import TUK.Leaf00529
import TUK.Leaf00530
import TUK.Leaf00531
import TUK.Leaf00532
import TUK.Leaf00533
import TUK.Leaf00534
import TUK.Leaf00535
import TUK.Leaf00536
import TUK.Leaf00537
import TUK.Leaf00538
import TUK.Leaf00539
import TUK.Leaf00540
import TUK.Leaf00541
import TUK.Leaf00542
import TUK.Leaf00543
import TUK.Leaf00544
import TUK.Leaf00545
import TUK.Leaf00546
import TUK.Leaf00547
import TUK.Leaf00548
import TUK.Leaf00549
import TUK.Leaf00550
import TUK.Leaf00551
import TUK.Leaf00552
import TUK.Leaf00553
import TUK.Leaf00554
import TUK.Leaf00555
import TUK.Leaf00556
import TUK.Leaf00557
import TUK.Leaf00558
import TUK.Leaf00559
import TUK.Leaf00560
import TUK.Leaf00561
import TUK.Leaf00562
import TUK.Leaf00563
import TUK.Leaf00564
import TUK.Leaf00565
import TUK.Leaf00566
import TUK.Leaf00567
import TUK.Leaf00568
import TUK.Leaf00569
import TUK.Leaf00570
import TUK.Leaf00571
import TUK.Leaf00572
import TUK.Leaf00573
import TUK.Leaf00574
import TUK.Leaf00575
import TUK.Leaf00576
import TUK.Leaf00577
import TUK.Leaf00578
import TUK.Leaf00579
import TUK.Leaf00580
import TUK.Leaf00581
import TUK.Leaf00582
import TUK.Leaf00583
import TUK.Leaf00584
import TUK.Leaf00585
import TUK.Leaf00586
import TUK.Leaf00587
import TUK.Leaf00588
import TUK.Leaf00589
import TUK.Leaf00590
import TUK.Leaf00591
import TUK.Leaf00592
import TUK.Leaf00593
import TUK.Leaf00594
import TUK.Leaf00595
import TUK.Leaf00596
import TUK.Leaf00597
import TUK.Leaf00598
import TUK.Leaf00599

/-! Leaves 500 .. 599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_5 : ∀ j < 100, 100 * 5 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 5 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_00500
  | 1, _, _ => exact leaf_00501
  | 2, _, _ => exact leaf_00502
  | 3, _, _ => exact leaf_00503
  | 4, _, _ => exact leaf_00504
  | 5, _, _ => exact leaf_00505
  | 6, _, _ => exact leaf_00506
  | 7, _, _ => exact leaf_00507
  | 8, _, _ => exact leaf_00508
  | 9, _, _ => exact leaf_00509
  | 10, _, _ => exact leaf_00510
  | 11, _, _ => exact leaf_00511
  | 12, _, _ => exact leaf_00512
  | 13, _, _ => exact leaf_00513
  | 14, _, _ => exact leaf_00514
  | 15, _, _ => exact leaf_00515
  | 16, _, _ => exact leaf_00516
  | 17, _, _ => exact leaf_00517
  | 18, _, _ => exact leaf_00518
  | 19, _, _ => exact leaf_00519
  | 20, _, _ => exact leaf_00520
  | 21, _, _ => exact leaf_00521
  | 22, _, _ => exact leaf_00522
  | 23, _, _ => exact leaf_00523
  | 24, _, _ => exact leaf_00524
  | 25, _, _ => exact leaf_00525
  | 26, _, _ => exact leaf_00526
  | 27, _, _ => exact leaf_00527
  | 28, _, _ => exact leaf_00528
  | 29, _, _ => exact leaf_00529
  | 30, _, _ => exact leaf_00530
  | 31, _, _ => exact leaf_00531
  | 32, _, _ => exact leaf_00532
  | 33, _, _ => exact leaf_00533
  | 34, _, _ => exact leaf_00534
  | 35, _, _ => exact leaf_00535
  | 36, _, _ => exact leaf_00536
  | 37, _, _ => exact leaf_00537
  | 38, _, _ => exact leaf_00538
  | 39, _, _ => exact leaf_00539
  | 40, _, _ => exact leaf_00540
  | 41, _, _ => exact leaf_00541
  | 42, _, _ => exact leaf_00542
  | 43, _, _ => exact leaf_00543
  | 44, _, _ => exact leaf_00544
  | 45, _, _ => exact leaf_00545
  | 46, _, _ => exact leaf_00546
  | 47, _, _ => exact leaf_00547
  | 48, _, _ => exact leaf_00548
  | 49, _, _ => exact leaf_00549
  | 50, _, _ => exact leaf_00550
  | 51, _, _ => exact leaf_00551
  | 52, _, _ => exact leaf_00552
  | 53, _, _ => exact leaf_00553
  | 54, _, _ => exact leaf_00554
  | 55, _, _ => exact leaf_00555
  | 56, _, _ => exact leaf_00556
  | 57, _, _ => exact leaf_00557
  | 58, _, _ => exact leaf_00558
  | 59, _, _ => exact leaf_00559
  | 60, _, _ => exact leaf_00560
  | 61, _, _ => exact leaf_00561
  | 62, _, _ => exact leaf_00562
  | 63, _, _ => exact leaf_00563
  | 64, _, _ => exact leaf_00564
  | 65, _, _ => exact leaf_00565
  | 66, _, _ => exact leaf_00566
  | 67, _, _ => exact leaf_00567
  | 68, _, _ => exact leaf_00568
  | 69, _, _ => exact leaf_00569
  | 70, _, _ => exact leaf_00570
  | 71, _, _ => exact leaf_00571
  | 72, _, _ => exact leaf_00572
  | 73, _, _ => exact leaf_00573
  | 74, _, _ => exact leaf_00574
  | 75, _, _ => exact leaf_00575
  | 76, _, _ => exact leaf_00576
  | 77, _, _ => exact leaf_00577
  | 78, _, _ => exact leaf_00578
  | 79, _, _ => exact leaf_00579
  | 80, _, _ => exact leaf_00580
  | 81, _, _ => exact leaf_00581
  | 82, _, _ => exact leaf_00582
  | 83, _, _ => exact leaf_00583
  | 84, _, _ => exact leaf_00584
  | 85, _, _ => exact leaf_00585
  | 86, _, _ => exact leaf_00586
  | 87, _, _ => exact leaf_00587
  | 88, _, _ => exact leaf_00588
  | 89, _, _ => exact leaf_00589
  | 90, _, _ => exact leaf_00590
  | 91, _, _ => exact leaf_00591
  | 92, _, _ => exact leaf_00592
  | 93, _, _ => exact leaf_00593
  | 94, _, _ => exact leaf_00594
  | 95, _, _ => exact leaf_00595
  | 96, _, _ => exact leaf_00596
  | 97, _, _ => exact leaf_00597
  | 98, _, _ => exact leaf_00598
  | 99, _, _ => exact leaf_00599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
