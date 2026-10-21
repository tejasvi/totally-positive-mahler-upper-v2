import TUK.Leaf03500
import TUK.Leaf03501
import TUK.Leaf03502
import TUK.Leaf03503
import TUK.Leaf03504
import TUK.Leaf03505
import TUK.Leaf03506
import TUK.Leaf03507
import TUK.Leaf03508
import TUK.Leaf03509
import TUK.Leaf03510
import TUK.Leaf03511
import TUK.Leaf03512
import TUK.Leaf03513
import TUK.Leaf03514
import TUK.Leaf03515
import TUK.Leaf03516
import TUK.Leaf03517
import TUK.Leaf03518
import TUK.Leaf03519
import TUK.Leaf03520
import TUK.Leaf03521
import TUK.Leaf03522
import TUK.Leaf03523
import TUK.Leaf03524
import TUK.Leaf03525
import TUK.Leaf03526
import TUK.Leaf03527
import TUK.Leaf03528
import TUK.Leaf03529
import TUK.Leaf03530
import TUK.Leaf03531
import TUK.Leaf03532
import TUK.Leaf03533
import TUK.Leaf03534
import TUK.Leaf03535
import TUK.Leaf03536
import TUK.Leaf03537
import TUK.Leaf03538
import TUK.Leaf03539
import TUK.Leaf03540
import TUK.Leaf03541
import TUK.Leaf03542
import TUK.Leaf03543
import TUK.Leaf03544
import TUK.Leaf03545
import TUK.Leaf03546
import TUK.Leaf03547
import TUK.Leaf03548
import TUK.Leaf03549
import TUK.Leaf03550
import TUK.Leaf03551
import TUK.Leaf03552
import TUK.Leaf03553
import TUK.Leaf03554
import TUK.Leaf03555
import TUK.Leaf03556
import TUK.Leaf03557
import TUK.Leaf03558
import TUK.Leaf03559
import TUK.Leaf03560
import TUK.Leaf03561
import TUK.Leaf03562
import TUK.Leaf03563
import TUK.Leaf03564
import TUK.Leaf03565
import TUK.Leaf03566
import TUK.Leaf03567
import TUK.Leaf03568
import TUK.Leaf03569
import TUK.Leaf03570
import TUK.Leaf03571
import TUK.Leaf03572
import TUK.Leaf03573
import TUK.Leaf03574
import TUK.Leaf03575
import TUK.Leaf03576
import TUK.Leaf03577
import TUK.Leaf03578
import TUK.Leaf03579
import TUK.Leaf03580
import TUK.Leaf03581
import TUK.Leaf03582
import TUK.Leaf03583
import TUK.Leaf03584
import TUK.Leaf03585
import TUK.Leaf03586
import TUK.Leaf03587
import TUK.Leaf03588
import TUK.Leaf03589
import TUK.Leaf03590
import TUK.Leaf03591
import TUK.Leaf03592
import TUK.Leaf03593
import TUK.Leaf03594
import TUK.Leaf03595
import TUK.Leaf03596
import TUK.Leaf03597
import TUK.Leaf03598
import TUK.Leaf03599

/-! Leaves 3500 .. 3599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_35 : ∀ j < 100, 100 * 35 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 35 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_03500
  | 1, _, _ => exact leaf_03501
  | 2, _, _ => exact leaf_03502
  | 3, _, _ => exact leaf_03503
  | 4, _, _ => exact leaf_03504
  | 5, _, _ => exact leaf_03505
  | 6, _, _ => exact leaf_03506
  | 7, _, _ => exact leaf_03507
  | 8, _, _ => exact leaf_03508
  | 9, _, _ => exact leaf_03509
  | 10, _, _ => exact leaf_03510
  | 11, _, _ => exact leaf_03511
  | 12, _, _ => exact leaf_03512
  | 13, _, _ => exact leaf_03513
  | 14, _, _ => exact leaf_03514
  | 15, _, _ => exact leaf_03515
  | 16, _, _ => exact leaf_03516
  | 17, _, _ => exact leaf_03517
  | 18, _, _ => exact leaf_03518
  | 19, _, _ => exact leaf_03519
  | 20, _, _ => exact leaf_03520
  | 21, _, _ => exact leaf_03521
  | 22, _, _ => exact leaf_03522
  | 23, _, _ => exact leaf_03523
  | 24, _, _ => exact leaf_03524
  | 25, _, _ => exact leaf_03525
  | 26, _, _ => exact leaf_03526
  | 27, _, _ => exact leaf_03527
  | 28, _, _ => exact leaf_03528
  | 29, _, _ => exact leaf_03529
  | 30, _, _ => exact leaf_03530
  | 31, _, _ => exact leaf_03531
  | 32, _, _ => exact leaf_03532
  | 33, _, _ => exact leaf_03533
  | 34, _, _ => exact leaf_03534
  | 35, _, _ => exact leaf_03535
  | 36, _, _ => exact leaf_03536
  | 37, _, _ => exact leaf_03537
  | 38, _, _ => exact leaf_03538
  | 39, _, _ => exact leaf_03539
  | 40, _, _ => exact leaf_03540
  | 41, _, _ => exact leaf_03541
  | 42, _, _ => exact leaf_03542
  | 43, _, _ => exact leaf_03543
  | 44, _, _ => exact leaf_03544
  | 45, _, _ => exact leaf_03545
  | 46, _, _ => exact leaf_03546
  | 47, _, _ => exact leaf_03547
  | 48, _, _ => exact leaf_03548
  | 49, _, _ => exact leaf_03549
  | 50, _, _ => exact leaf_03550
  | 51, _, _ => exact leaf_03551
  | 52, _, _ => exact leaf_03552
  | 53, _, _ => exact leaf_03553
  | 54, _, _ => exact leaf_03554
  | 55, _, _ => exact leaf_03555
  | 56, _, _ => exact leaf_03556
  | 57, _, _ => exact leaf_03557
  | 58, _, _ => exact leaf_03558
  | 59, _, _ => exact leaf_03559
  | 60, _, _ => exact leaf_03560
  | 61, _, _ => exact leaf_03561
  | 62, _, _ => exact leaf_03562
  | 63, _, _ => exact leaf_03563
  | 64, _, _ => exact leaf_03564
  | 65, _, _ => exact leaf_03565
  | 66, _, _ => exact leaf_03566
  | 67, _, _ => exact leaf_03567
  | 68, _, _ => exact leaf_03568
  | 69, _, _ => exact leaf_03569
  | 70, _, _ => exact leaf_03570
  | 71, _, _ => exact leaf_03571
  | 72, _, _ => exact leaf_03572
  | 73, _, _ => exact leaf_03573
  | 74, _, _ => exact leaf_03574
  | 75, _, _ => exact leaf_03575
  | 76, _, _ => exact leaf_03576
  | 77, _, _ => exact leaf_03577
  | 78, _, _ => exact leaf_03578
  | 79, _, _ => exact leaf_03579
  | 80, _, _ => exact leaf_03580
  | 81, _, _ => exact leaf_03581
  | 82, _, _ => exact leaf_03582
  | 83, _, _ => exact leaf_03583
  | 84, _, _ => exact leaf_03584
  | 85, _, _ => exact leaf_03585
  | 86, _, _ => exact leaf_03586
  | 87, _, _ => exact leaf_03587
  | 88, _, _ => exact leaf_03588
  | 89, _, _ => exact leaf_03589
  | 90, _, _ => exact leaf_03590
  | 91, _, _ => exact leaf_03591
  | 92, _, _ => exact leaf_03592
  | 93, _, _ => exact leaf_03593
  | 94, _, _ => exact leaf_03594
  | 95, _, _ => exact leaf_03595
  | 96, _, _ => exact leaf_03596
  | 97, _, _ => exact leaf_03597
  | 98, _, _ => exact leaf_03598
  | 99, _, _ => exact leaf_03599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
