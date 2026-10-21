import TUK.Leaf09500
import TUK.Leaf09501
import TUK.Leaf09502
import TUK.Leaf09503
import TUK.Leaf09504
import TUK.Leaf09505
import TUK.Leaf09506
import TUK.Leaf09507
import TUK.Leaf09508
import TUK.Leaf09509
import TUK.Leaf09510
import TUK.Leaf09511
import TUK.Leaf09512
import TUK.Leaf09513
import TUK.Leaf09514
import TUK.Leaf09515
import TUK.Leaf09516
import TUK.Leaf09517
import TUK.Leaf09518
import TUK.Leaf09519
import TUK.Leaf09520
import TUK.Leaf09521
import TUK.Leaf09522
import TUK.Leaf09523
import TUK.Leaf09524
import TUK.Leaf09525
import TUK.Leaf09526
import TUK.Leaf09527
import TUK.Leaf09528
import TUK.Leaf09529
import TUK.Leaf09530
import TUK.Leaf09531
import TUK.Leaf09532
import TUK.Leaf09533
import TUK.Leaf09534
import TUK.Leaf09535
import TUK.Leaf09536
import TUK.Leaf09537
import TUK.Leaf09538
import TUK.Leaf09539
import TUK.Leaf09540
import TUK.Leaf09541
import TUK.Leaf09542
import TUK.Leaf09543
import TUK.Leaf09544
import TUK.Leaf09545
import TUK.Leaf09546
import TUK.Leaf09547
import TUK.Leaf09548
import TUK.Leaf09549
import TUK.Leaf09550
import TUK.Leaf09551
import TUK.Leaf09552
import TUK.Leaf09553
import TUK.Leaf09554
import TUK.Leaf09555
import TUK.Leaf09556
import TUK.Leaf09557
import TUK.Leaf09558
import TUK.Leaf09559
import TUK.Leaf09560
import TUK.Leaf09561
import TUK.Leaf09562
import TUK.Leaf09563
import TUK.Leaf09564
import TUK.Leaf09565
import TUK.Leaf09566
import TUK.Leaf09567
import TUK.Leaf09568
import TUK.Leaf09569
import TUK.Leaf09570
import TUK.Leaf09571
import TUK.Leaf09572
import TUK.Leaf09573
import TUK.Leaf09574
import TUK.Leaf09575
import TUK.Leaf09576
import TUK.Leaf09577
import TUK.Leaf09578
import TUK.Leaf09579
import TUK.Leaf09580
import TUK.Leaf09581
import TUK.Leaf09582
import TUK.Leaf09583
import TUK.Leaf09584
import TUK.Leaf09585
import TUK.Leaf09586
import TUK.Leaf09587
import TUK.Leaf09588
import TUK.Leaf09589
import TUK.Leaf09590
import TUK.Leaf09591
import TUK.Leaf09592
import TUK.Leaf09593
import TUK.Leaf09594
import TUK.Leaf09595
import TUK.Leaf09596
import TUK.Leaf09597
import TUK.Leaf09598
import TUK.Leaf09599

/-! Leaves 9500 .. 9599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_95 : ∀ j < 100, 100 * 95 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 95 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_09500
  | 1, _, _ => exact leaf_09501
  | 2, _, _ => exact leaf_09502
  | 3, _, _ => exact leaf_09503
  | 4, _, _ => exact leaf_09504
  | 5, _, _ => exact leaf_09505
  | 6, _, _ => exact leaf_09506
  | 7, _, _ => exact leaf_09507
  | 8, _, _ => exact leaf_09508
  | 9, _, _ => exact leaf_09509
  | 10, _, _ => exact leaf_09510
  | 11, _, _ => exact leaf_09511
  | 12, _, _ => exact leaf_09512
  | 13, _, _ => exact leaf_09513
  | 14, _, _ => exact leaf_09514
  | 15, _, _ => exact leaf_09515
  | 16, _, _ => exact leaf_09516
  | 17, _, _ => exact leaf_09517
  | 18, _, _ => exact leaf_09518
  | 19, _, _ => exact leaf_09519
  | 20, _, _ => exact leaf_09520
  | 21, _, _ => exact leaf_09521
  | 22, _, _ => exact leaf_09522
  | 23, _, _ => exact leaf_09523
  | 24, _, _ => exact leaf_09524
  | 25, _, _ => exact leaf_09525
  | 26, _, _ => exact leaf_09526
  | 27, _, _ => exact leaf_09527
  | 28, _, _ => exact leaf_09528
  | 29, _, _ => exact leaf_09529
  | 30, _, _ => exact leaf_09530
  | 31, _, _ => exact leaf_09531
  | 32, _, _ => exact leaf_09532
  | 33, _, _ => exact leaf_09533
  | 34, _, _ => exact leaf_09534
  | 35, _, _ => exact leaf_09535
  | 36, _, _ => exact leaf_09536
  | 37, _, _ => exact leaf_09537
  | 38, _, _ => exact leaf_09538
  | 39, _, _ => exact leaf_09539
  | 40, _, _ => exact leaf_09540
  | 41, _, _ => exact leaf_09541
  | 42, _, _ => exact leaf_09542
  | 43, _, _ => exact leaf_09543
  | 44, _, _ => exact leaf_09544
  | 45, _, _ => exact leaf_09545
  | 46, _, _ => exact leaf_09546
  | 47, _, _ => exact leaf_09547
  | 48, _, _ => exact leaf_09548
  | 49, _, _ => exact leaf_09549
  | 50, _, _ => exact leaf_09550
  | 51, _, _ => exact leaf_09551
  | 52, _, _ => exact leaf_09552
  | 53, _, _ => exact leaf_09553
  | 54, _, _ => exact leaf_09554
  | 55, _, _ => exact leaf_09555
  | 56, _, _ => exact leaf_09556
  | 57, _, _ => exact leaf_09557
  | 58, _, _ => exact leaf_09558
  | 59, _, _ => exact leaf_09559
  | 60, _, _ => exact leaf_09560
  | 61, _, _ => exact leaf_09561
  | 62, _, _ => exact leaf_09562
  | 63, _, _ => exact leaf_09563
  | 64, _, _ => exact leaf_09564
  | 65, _, _ => exact leaf_09565
  | 66, _, _ => exact leaf_09566
  | 67, _, _ => exact leaf_09567
  | 68, _, _ => exact leaf_09568
  | 69, _, _ => exact leaf_09569
  | 70, _, _ => exact leaf_09570
  | 71, _, _ => exact leaf_09571
  | 72, _, _ => exact leaf_09572
  | 73, _, _ => exact leaf_09573
  | 74, _, _ => exact leaf_09574
  | 75, _, _ => exact leaf_09575
  | 76, _, _ => exact leaf_09576
  | 77, _, _ => exact leaf_09577
  | 78, _, _ => exact leaf_09578
  | 79, _, _ => exact leaf_09579
  | 80, _, _ => exact leaf_09580
  | 81, _, _ => exact leaf_09581
  | 82, _, _ => exact leaf_09582
  | 83, _, _ => exact leaf_09583
  | 84, _, _ => exact leaf_09584
  | 85, _, _ => exact leaf_09585
  | 86, _, _ => exact leaf_09586
  | 87, _, _ => exact leaf_09587
  | 88, _, _ => exact leaf_09588
  | 89, _, _ => exact leaf_09589
  | 90, _, _ => exact leaf_09590
  | 91, _, _ => exact leaf_09591
  | 92, _, _ => exact leaf_09592
  | 93, _, _ => exact leaf_09593
  | 94, _, _ => exact leaf_09594
  | 95, _, _ => exact leaf_09595
  | 96, _, _ => exact leaf_09596
  | 97, _, _ => exact leaf_09597
  | 98, _, _ => exact leaf_09598
  | 99, _, _ => exact leaf_09599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
