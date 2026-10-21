import TUK.Leaf01500
import TUK.Leaf01501
import TUK.Leaf01502
import TUK.Leaf01503
import TUK.Leaf01504
import TUK.Leaf01505
import TUK.Leaf01506
import TUK.Leaf01507
import TUK.Leaf01508
import TUK.Leaf01509
import TUK.Leaf01510
import TUK.Leaf01511
import TUK.Leaf01512
import TUK.Leaf01513
import TUK.Leaf01514
import TUK.Leaf01515
import TUK.Leaf01516
import TUK.Leaf01517
import TUK.Leaf01518
import TUK.Leaf01519
import TUK.Leaf01520
import TUK.Leaf01521
import TUK.Leaf01522
import TUK.Leaf01523
import TUK.Leaf01524
import TUK.Leaf01525
import TUK.Leaf01526
import TUK.Leaf01527
import TUK.Leaf01528
import TUK.Leaf01529
import TUK.Leaf01530
import TUK.Leaf01531
import TUK.Leaf01532
import TUK.Leaf01533
import TUK.Leaf01534
import TUK.Leaf01535
import TUK.Leaf01536
import TUK.Leaf01537
import TUK.Leaf01538
import TUK.Leaf01539
import TUK.Leaf01540
import TUK.Leaf01541
import TUK.Leaf01542
import TUK.Leaf01543
import TUK.Leaf01544
import TUK.Leaf01545
import TUK.Leaf01546
import TUK.Leaf01547
import TUK.Leaf01548
import TUK.Leaf01549
import TUK.Leaf01550
import TUK.Leaf01551
import TUK.Leaf01552
import TUK.Leaf01553
import TUK.Leaf01554
import TUK.Leaf01555
import TUK.Leaf01556
import TUK.Leaf01557
import TUK.Leaf01558
import TUK.Leaf01559
import TUK.Leaf01560
import TUK.Leaf01561
import TUK.Leaf01562
import TUK.Leaf01563
import TUK.Leaf01564
import TUK.Leaf01565
import TUK.Leaf01566
import TUK.Leaf01567
import TUK.Leaf01568
import TUK.Leaf01569
import TUK.Leaf01570
import TUK.Leaf01571
import TUK.Leaf01572
import TUK.Leaf01573
import TUK.Leaf01574
import TUK.Leaf01575
import TUK.Leaf01576
import TUK.Leaf01577
import TUK.Leaf01578
import TUK.Leaf01579
import TUK.Leaf01580
import TUK.Leaf01581
import TUK.Leaf01582
import TUK.Leaf01583
import TUK.Leaf01584
import TUK.Leaf01585
import TUK.Leaf01586
import TUK.Leaf01587
import TUK.Leaf01588
import TUK.Leaf01589
import TUK.Leaf01590
import TUK.Leaf01591
import TUK.Leaf01592
import TUK.Leaf01593
import TUK.Leaf01594
import TUK.Leaf01595
import TUK.Leaf01596
import TUK.Leaf01597
import TUK.Leaf01598
import TUK.Leaf01599

/-! Leaves 1500 .. 1599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_15 : ∀ j < 100, 100 * 15 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 15 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_01500
  | 1, _, _ => exact leaf_01501
  | 2, _, _ => exact leaf_01502
  | 3, _, _ => exact leaf_01503
  | 4, _, _ => exact leaf_01504
  | 5, _, _ => exact leaf_01505
  | 6, _, _ => exact leaf_01506
  | 7, _, _ => exact leaf_01507
  | 8, _, _ => exact leaf_01508
  | 9, _, _ => exact leaf_01509
  | 10, _, _ => exact leaf_01510
  | 11, _, _ => exact leaf_01511
  | 12, _, _ => exact leaf_01512
  | 13, _, _ => exact leaf_01513
  | 14, _, _ => exact leaf_01514
  | 15, _, _ => exact leaf_01515
  | 16, _, _ => exact leaf_01516
  | 17, _, _ => exact leaf_01517
  | 18, _, _ => exact leaf_01518
  | 19, _, _ => exact leaf_01519
  | 20, _, _ => exact leaf_01520
  | 21, _, _ => exact leaf_01521
  | 22, _, _ => exact leaf_01522
  | 23, _, _ => exact leaf_01523
  | 24, _, _ => exact leaf_01524
  | 25, _, _ => exact leaf_01525
  | 26, _, _ => exact leaf_01526
  | 27, _, _ => exact leaf_01527
  | 28, _, _ => exact leaf_01528
  | 29, _, _ => exact leaf_01529
  | 30, _, _ => exact leaf_01530
  | 31, _, _ => exact leaf_01531
  | 32, _, _ => exact leaf_01532
  | 33, _, _ => exact leaf_01533
  | 34, _, _ => exact leaf_01534
  | 35, _, _ => exact leaf_01535
  | 36, _, _ => exact leaf_01536
  | 37, _, _ => exact leaf_01537
  | 38, _, _ => exact leaf_01538
  | 39, _, _ => exact leaf_01539
  | 40, _, _ => exact leaf_01540
  | 41, _, _ => exact leaf_01541
  | 42, _, _ => exact leaf_01542
  | 43, _, _ => exact leaf_01543
  | 44, _, _ => exact leaf_01544
  | 45, _, _ => exact leaf_01545
  | 46, _, _ => exact leaf_01546
  | 47, _, _ => exact leaf_01547
  | 48, _, _ => exact leaf_01548
  | 49, _, _ => exact leaf_01549
  | 50, _, _ => exact leaf_01550
  | 51, _, _ => exact leaf_01551
  | 52, _, _ => exact leaf_01552
  | 53, _, _ => exact leaf_01553
  | 54, _, _ => exact leaf_01554
  | 55, _, _ => exact leaf_01555
  | 56, _, _ => exact leaf_01556
  | 57, _, _ => exact leaf_01557
  | 58, _, _ => exact leaf_01558
  | 59, _, _ => exact leaf_01559
  | 60, _, _ => exact leaf_01560
  | 61, _, _ => exact leaf_01561
  | 62, _, _ => exact leaf_01562
  | 63, _, _ => exact leaf_01563
  | 64, _, _ => exact leaf_01564
  | 65, _, _ => exact leaf_01565
  | 66, _, _ => exact leaf_01566
  | 67, _, _ => exact leaf_01567
  | 68, _, _ => exact leaf_01568
  | 69, _, _ => exact leaf_01569
  | 70, _, _ => exact leaf_01570
  | 71, _, _ => exact leaf_01571
  | 72, _, _ => exact leaf_01572
  | 73, _, _ => exact leaf_01573
  | 74, _, _ => exact leaf_01574
  | 75, _, _ => exact leaf_01575
  | 76, _, _ => exact leaf_01576
  | 77, _, _ => exact leaf_01577
  | 78, _, _ => exact leaf_01578
  | 79, _, _ => exact leaf_01579
  | 80, _, _ => exact leaf_01580
  | 81, _, _ => exact leaf_01581
  | 82, _, _ => exact leaf_01582
  | 83, _, _ => exact leaf_01583
  | 84, _, _ => exact leaf_01584
  | 85, _, _ => exact leaf_01585
  | 86, _, _ => exact leaf_01586
  | 87, _, _ => exact leaf_01587
  | 88, _, _ => exact leaf_01588
  | 89, _, _ => exact leaf_01589
  | 90, _, _ => exact leaf_01590
  | 91, _, _ => exact leaf_01591
  | 92, _, _ => exact leaf_01592
  | 93, _, _ => exact leaf_01593
  | 94, _, _ => exact leaf_01594
  | 95, _, _ => exact leaf_01595
  | 96, _, _ => exact leaf_01596
  | 97, _, _ => exact leaf_01597
  | 98, _, _ => exact leaf_01598
  | 99, _, _ => exact leaf_01599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
