import TUK.Leaf07500
import TUK.Leaf07501
import TUK.Leaf07502
import TUK.Leaf07503
import TUK.Leaf07504
import TUK.Leaf07505
import TUK.Leaf07506
import TUK.Leaf07507
import TUK.Leaf07508
import TUK.Leaf07509
import TUK.Leaf07510
import TUK.Leaf07511
import TUK.Leaf07512
import TUK.Leaf07513
import TUK.Leaf07514
import TUK.Leaf07515
import TUK.Leaf07516
import TUK.Leaf07517
import TUK.Leaf07518
import TUK.Leaf07519
import TUK.Leaf07520
import TUK.Leaf07521
import TUK.Leaf07522
import TUK.Leaf07523
import TUK.Leaf07524
import TUK.Leaf07525
import TUK.Leaf07526
import TUK.Leaf07527
import TUK.Leaf07528
import TUK.Leaf07529
import TUK.Leaf07530
import TUK.Leaf07531
import TUK.Leaf07532
import TUK.Leaf07533
import TUK.Leaf07534
import TUK.Leaf07535
import TUK.Leaf07536
import TUK.Leaf07537
import TUK.Leaf07538
import TUK.Leaf07539
import TUK.Leaf07540
import TUK.Leaf07541
import TUK.Leaf07542
import TUK.Leaf07543
import TUK.Leaf07544
import TUK.Leaf07545
import TUK.Leaf07546
import TUK.Leaf07547
import TUK.Leaf07548
import TUK.Leaf07549
import TUK.Leaf07550
import TUK.Leaf07551
import TUK.Leaf07552
import TUK.Leaf07553
import TUK.Leaf07554
import TUK.Leaf07555
import TUK.Leaf07556
import TUK.Leaf07557
import TUK.Leaf07558
import TUK.Leaf07559
import TUK.Leaf07560
import TUK.Leaf07561
import TUK.Leaf07562
import TUK.Leaf07563
import TUK.Leaf07564
import TUK.Leaf07565
import TUK.Leaf07566
import TUK.Leaf07567
import TUK.Leaf07568
import TUK.Leaf07569
import TUK.Leaf07570
import TUK.Leaf07571
import TUK.Leaf07572
import TUK.Leaf07573
import TUK.Leaf07574
import TUK.Leaf07575
import TUK.Leaf07576
import TUK.Leaf07577
import TUK.Leaf07578
import TUK.Leaf07579
import TUK.Leaf07580
import TUK.Leaf07581
import TUK.Leaf07582
import TUK.Leaf07583
import TUK.Leaf07584
import TUK.Leaf07585
import TUK.Leaf07586
import TUK.Leaf07587
import TUK.Leaf07588
import TUK.Leaf07589
import TUK.Leaf07590
import TUK.Leaf07591
import TUK.Leaf07592
import TUK.Leaf07593
import TUK.Leaf07594
import TUK.Leaf07595
import TUK.Leaf07596
import TUK.Leaf07597
import TUK.Leaf07598
import TUK.Leaf07599

/-! Leaves 7500 .. 7599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_75 : ∀ j < 100, 100 * 75 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 75 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_07500
  | 1, _, _ => exact leaf_07501
  | 2, _, _ => exact leaf_07502
  | 3, _, _ => exact leaf_07503
  | 4, _, _ => exact leaf_07504
  | 5, _, _ => exact leaf_07505
  | 6, _, _ => exact leaf_07506
  | 7, _, _ => exact leaf_07507
  | 8, _, _ => exact leaf_07508
  | 9, _, _ => exact leaf_07509
  | 10, _, _ => exact leaf_07510
  | 11, _, _ => exact leaf_07511
  | 12, _, _ => exact leaf_07512
  | 13, _, _ => exact leaf_07513
  | 14, _, _ => exact leaf_07514
  | 15, _, _ => exact leaf_07515
  | 16, _, _ => exact leaf_07516
  | 17, _, _ => exact leaf_07517
  | 18, _, _ => exact leaf_07518
  | 19, _, _ => exact leaf_07519
  | 20, _, _ => exact leaf_07520
  | 21, _, _ => exact leaf_07521
  | 22, _, _ => exact leaf_07522
  | 23, _, _ => exact leaf_07523
  | 24, _, _ => exact leaf_07524
  | 25, _, _ => exact leaf_07525
  | 26, _, _ => exact leaf_07526
  | 27, _, _ => exact leaf_07527
  | 28, _, _ => exact leaf_07528
  | 29, _, _ => exact leaf_07529
  | 30, _, _ => exact leaf_07530
  | 31, _, _ => exact leaf_07531
  | 32, _, _ => exact leaf_07532
  | 33, _, _ => exact leaf_07533
  | 34, _, _ => exact leaf_07534
  | 35, _, _ => exact leaf_07535
  | 36, _, _ => exact leaf_07536
  | 37, _, _ => exact leaf_07537
  | 38, _, _ => exact leaf_07538
  | 39, _, _ => exact leaf_07539
  | 40, _, _ => exact leaf_07540
  | 41, _, _ => exact leaf_07541
  | 42, _, _ => exact leaf_07542
  | 43, _, _ => exact leaf_07543
  | 44, _, _ => exact leaf_07544
  | 45, _, _ => exact leaf_07545
  | 46, _, _ => exact leaf_07546
  | 47, _, _ => exact leaf_07547
  | 48, _, _ => exact leaf_07548
  | 49, _, _ => exact leaf_07549
  | 50, _, _ => exact leaf_07550
  | 51, _, _ => exact leaf_07551
  | 52, _, _ => exact leaf_07552
  | 53, _, _ => exact leaf_07553
  | 54, _, _ => exact leaf_07554
  | 55, _, _ => exact leaf_07555
  | 56, _, _ => exact leaf_07556
  | 57, _, _ => exact leaf_07557
  | 58, _, _ => exact leaf_07558
  | 59, _, _ => exact leaf_07559
  | 60, _, _ => exact leaf_07560
  | 61, _, _ => exact leaf_07561
  | 62, _, _ => exact leaf_07562
  | 63, _, _ => exact leaf_07563
  | 64, _, _ => exact leaf_07564
  | 65, _, _ => exact leaf_07565
  | 66, _, _ => exact leaf_07566
  | 67, _, _ => exact leaf_07567
  | 68, _, _ => exact leaf_07568
  | 69, _, _ => exact leaf_07569
  | 70, _, _ => exact leaf_07570
  | 71, _, _ => exact leaf_07571
  | 72, _, _ => exact leaf_07572
  | 73, _, _ => exact leaf_07573
  | 74, _, _ => exact leaf_07574
  | 75, _, _ => exact leaf_07575
  | 76, _, _ => exact leaf_07576
  | 77, _, _ => exact leaf_07577
  | 78, _, _ => exact leaf_07578
  | 79, _, _ => exact leaf_07579
  | 80, _, _ => exact leaf_07580
  | 81, _, _ => exact leaf_07581
  | 82, _, _ => exact leaf_07582
  | 83, _, _ => exact leaf_07583
  | 84, _, _ => exact leaf_07584
  | 85, _, _ => exact leaf_07585
  | 86, _, _ => exact leaf_07586
  | 87, _, _ => exact leaf_07587
  | 88, _, _ => exact leaf_07588
  | 89, _, _ => exact leaf_07589
  | 90, _, _ => exact leaf_07590
  | 91, _, _ => exact leaf_07591
  | 92, _, _ => exact leaf_07592
  | 93, _, _ => exact leaf_07593
  | 94, _, _ => exact leaf_07594
  | 95, _, _ => exact leaf_07595
  | 96, _, _ => exact leaf_07596
  | 97, _, _ => exact leaf_07597
  | 98, _, _ => exact leaf_07598
  | 99, _, _ => exact leaf_07599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
