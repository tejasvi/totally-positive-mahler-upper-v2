import TUK.Leaf06500
import TUK.Leaf06501
import TUK.Leaf06502
import TUK.Leaf06503
import TUK.Leaf06504
import TUK.Leaf06505
import TUK.Leaf06506
import TUK.Leaf06507
import TUK.Leaf06508
import TUK.Leaf06509
import TUK.Leaf06510
import TUK.Leaf06511
import TUK.Leaf06512
import TUK.Leaf06513
import TUK.Leaf06514
import TUK.Leaf06515
import TUK.Leaf06516
import TUK.Leaf06517
import TUK.Leaf06518
import TUK.Leaf06519
import TUK.Leaf06520
import TUK.Leaf06521
import TUK.Leaf06522
import TUK.Leaf06523
import TUK.Leaf06524
import TUK.Leaf06525
import TUK.Leaf06526
import TUK.Leaf06527
import TUK.Leaf06528
import TUK.Leaf06529
import TUK.Leaf06530
import TUK.Leaf06531
import TUK.Leaf06532
import TUK.Leaf06533
import TUK.Leaf06534
import TUK.Leaf06535
import TUK.Leaf06536
import TUK.Leaf06537
import TUK.Leaf06538
import TUK.Leaf06539
import TUK.Leaf06540
import TUK.Leaf06541
import TUK.Leaf06542
import TUK.Leaf06543
import TUK.Leaf06544
import TUK.Leaf06545
import TUK.Leaf06546
import TUK.Leaf06547
import TUK.Leaf06548
import TUK.Leaf06549
import TUK.Leaf06550
import TUK.Leaf06551
import TUK.Leaf06552
import TUK.Leaf06553
import TUK.Leaf06554
import TUK.Leaf06555
import TUK.Leaf06556
import TUK.Leaf06557
import TUK.Leaf06558
import TUK.Leaf06559
import TUK.Leaf06560
import TUK.Leaf06561
import TUK.Leaf06562
import TUK.Leaf06563
import TUK.Leaf06564
import TUK.Leaf06565
import TUK.Leaf06566
import TUK.Leaf06567
import TUK.Leaf06568
import TUK.Leaf06569
import TUK.Leaf06570
import TUK.Leaf06571
import TUK.Leaf06572
import TUK.Leaf06573
import TUK.Leaf06574
import TUK.Leaf06575
import TUK.Leaf06576
import TUK.Leaf06577
import TUK.Leaf06578
import TUK.Leaf06579
import TUK.Leaf06580
import TUK.Leaf06581
import TUK.Leaf06582
import TUK.Leaf06583
import TUK.Leaf06584
import TUK.Leaf06585
import TUK.Leaf06586
import TUK.Leaf06587
import TUK.Leaf06588
import TUK.Leaf06589
import TUK.Leaf06590
import TUK.Leaf06591
import TUK.Leaf06592
import TUK.Leaf06593
import TUK.Leaf06594
import TUK.Leaf06595
import TUK.Leaf06596
import TUK.Leaf06597
import TUK.Leaf06598
import TUK.Leaf06599

/-! Leaves 6500 .. 6599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_65 : ∀ j < 100, 100 * 65 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 65 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_06500
  | 1, _, _ => exact leaf_06501
  | 2, _, _ => exact leaf_06502
  | 3, _, _ => exact leaf_06503
  | 4, _, _ => exact leaf_06504
  | 5, _, _ => exact leaf_06505
  | 6, _, _ => exact leaf_06506
  | 7, _, _ => exact leaf_06507
  | 8, _, _ => exact leaf_06508
  | 9, _, _ => exact leaf_06509
  | 10, _, _ => exact leaf_06510
  | 11, _, _ => exact leaf_06511
  | 12, _, _ => exact leaf_06512
  | 13, _, _ => exact leaf_06513
  | 14, _, _ => exact leaf_06514
  | 15, _, _ => exact leaf_06515
  | 16, _, _ => exact leaf_06516
  | 17, _, _ => exact leaf_06517
  | 18, _, _ => exact leaf_06518
  | 19, _, _ => exact leaf_06519
  | 20, _, _ => exact leaf_06520
  | 21, _, _ => exact leaf_06521
  | 22, _, _ => exact leaf_06522
  | 23, _, _ => exact leaf_06523
  | 24, _, _ => exact leaf_06524
  | 25, _, _ => exact leaf_06525
  | 26, _, _ => exact leaf_06526
  | 27, _, _ => exact leaf_06527
  | 28, _, _ => exact leaf_06528
  | 29, _, _ => exact leaf_06529
  | 30, _, _ => exact leaf_06530
  | 31, _, _ => exact leaf_06531
  | 32, _, _ => exact leaf_06532
  | 33, _, _ => exact leaf_06533
  | 34, _, _ => exact leaf_06534
  | 35, _, _ => exact leaf_06535
  | 36, _, _ => exact leaf_06536
  | 37, _, _ => exact leaf_06537
  | 38, _, _ => exact leaf_06538
  | 39, _, _ => exact leaf_06539
  | 40, _, _ => exact leaf_06540
  | 41, _, _ => exact leaf_06541
  | 42, _, _ => exact leaf_06542
  | 43, _, _ => exact leaf_06543
  | 44, _, _ => exact leaf_06544
  | 45, _, _ => exact leaf_06545
  | 46, _, _ => exact leaf_06546
  | 47, _, _ => exact leaf_06547
  | 48, _, _ => exact leaf_06548
  | 49, _, _ => exact leaf_06549
  | 50, _, _ => exact leaf_06550
  | 51, _, _ => exact leaf_06551
  | 52, _, _ => exact leaf_06552
  | 53, _, _ => exact leaf_06553
  | 54, _, _ => exact leaf_06554
  | 55, _, _ => exact leaf_06555
  | 56, _, _ => exact leaf_06556
  | 57, _, _ => exact leaf_06557
  | 58, _, _ => exact leaf_06558
  | 59, _, _ => exact leaf_06559
  | 60, _, _ => exact leaf_06560
  | 61, _, _ => exact leaf_06561
  | 62, _, _ => exact leaf_06562
  | 63, _, _ => exact leaf_06563
  | 64, _, _ => exact leaf_06564
  | 65, _, _ => exact leaf_06565
  | 66, _, _ => exact leaf_06566
  | 67, _, _ => exact leaf_06567
  | 68, _, _ => exact leaf_06568
  | 69, _, _ => exact leaf_06569
  | 70, _, _ => exact leaf_06570
  | 71, _, _ => exact leaf_06571
  | 72, _, _ => exact leaf_06572
  | 73, _, _ => exact leaf_06573
  | 74, _, _ => exact leaf_06574
  | 75, _, _ => exact leaf_06575
  | 76, _, _ => exact leaf_06576
  | 77, _, _ => exact leaf_06577
  | 78, _, _ => exact leaf_06578
  | 79, _, _ => exact leaf_06579
  | 80, _, _ => exact leaf_06580
  | 81, _, _ => exact leaf_06581
  | 82, _, _ => exact leaf_06582
  | 83, _, _ => exact leaf_06583
  | 84, _, _ => exact leaf_06584
  | 85, _, _ => exact leaf_06585
  | 86, _, _ => exact leaf_06586
  | 87, _, _ => exact leaf_06587
  | 88, _, _ => exact leaf_06588
  | 89, _, _ => exact leaf_06589
  | 90, _, _ => exact leaf_06590
  | 91, _, _ => exact leaf_06591
  | 92, _, _ => exact leaf_06592
  | 93, _, _ => exact leaf_06593
  | 94, _, _ => exact leaf_06594
  | 95, _, _ => exact leaf_06595
  | 96, _, _ => exact leaf_06596
  | 97, _, _ => exact leaf_06597
  | 98, _, _ => exact leaf_06598
  | 99, _, _ => exact leaf_06599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
