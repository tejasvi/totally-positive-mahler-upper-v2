import TUK.Leaf08500
import TUK.Leaf08501
import TUK.Leaf08502
import TUK.Leaf08503
import TUK.Leaf08504
import TUK.Leaf08505
import TUK.Leaf08506
import TUK.Leaf08507
import TUK.Leaf08508
import TUK.Leaf08509
import TUK.Leaf08510
import TUK.Leaf08511
import TUK.Leaf08512
import TUK.Leaf08513
import TUK.Leaf08514
import TUK.Leaf08515
import TUK.Leaf08516
import TUK.Leaf08517
import TUK.Leaf08518
import TUK.Leaf08519
import TUK.Leaf08520
import TUK.Leaf08521
import TUK.Leaf08522
import TUK.Leaf08523
import TUK.Leaf08524
import TUK.Leaf08525
import TUK.Leaf08526
import TUK.Leaf08527
import TUK.Leaf08528
import TUK.Leaf08529
import TUK.Leaf08530
import TUK.Leaf08531
import TUK.Leaf08532
import TUK.Leaf08533
import TUK.Leaf08534
import TUK.Leaf08535
import TUK.Leaf08536
import TUK.Leaf08537
import TUK.Leaf08538
import TUK.Leaf08539
import TUK.Leaf08540
import TUK.Leaf08541
import TUK.Leaf08542
import TUK.Leaf08543
import TUK.Leaf08544
import TUK.Leaf08545
import TUK.Leaf08546
import TUK.Leaf08547
import TUK.Leaf08548
import TUK.Leaf08549
import TUK.Leaf08550
import TUK.Leaf08551
import TUK.Leaf08552
import TUK.Leaf08553
import TUK.Leaf08554
import TUK.Leaf08555
import TUK.Leaf08556
import TUK.Leaf08557
import TUK.Leaf08558
import TUK.Leaf08559
import TUK.Leaf08560
import TUK.Leaf08561
import TUK.Leaf08562
import TUK.Leaf08563
import TUK.Leaf08564
import TUK.Leaf08565
import TUK.Leaf08566
import TUK.Leaf08567
import TUK.Leaf08568
import TUK.Leaf08569
import TUK.Leaf08570
import TUK.Leaf08571
import TUK.Leaf08572
import TUK.Leaf08573
import TUK.Leaf08574
import TUK.Leaf08575
import TUK.Leaf08576
import TUK.Leaf08577
import TUK.Leaf08578
import TUK.Leaf08579
import TUK.Leaf08580
import TUK.Leaf08581
import TUK.Leaf08582
import TUK.Leaf08583
import TUK.Leaf08584
import TUK.Leaf08585
import TUK.Leaf08586
import TUK.Leaf08587
import TUK.Leaf08588
import TUK.Leaf08589
import TUK.Leaf08590
import TUK.Leaf08591
import TUK.Leaf08592
import TUK.Leaf08593
import TUK.Leaf08594
import TUK.Leaf08595
import TUK.Leaf08596
import TUK.Leaf08597
import TUK.Leaf08598
import TUK.Leaf08599

/-! Leaves 8500 .. 8599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_85 : ∀ j < 100, 100 * 85 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 85 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_08500
  | 1, _, _ => exact leaf_08501
  | 2, _, _ => exact leaf_08502
  | 3, _, _ => exact leaf_08503
  | 4, _, _ => exact leaf_08504
  | 5, _, _ => exact leaf_08505
  | 6, _, _ => exact leaf_08506
  | 7, _, _ => exact leaf_08507
  | 8, _, _ => exact leaf_08508
  | 9, _, _ => exact leaf_08509
  | 10, _, _ => exact leaf_08510
  | 11, _, _ => exact leaf_08511
  | 12, _, _ => exact leaf_08512
  | 13, _, _ => exact leaf_08513
  | 14, _, _ => exact leaf_08514
  | 15, _, _ => exact leaf_08515
  | 16, _, _ => exact leaf_08516
  | 17, _, _ => exact leaf_08517
  | 18, _, _ => exact leaf_08518
  | 19, _, _ => exact leaf_08519
  | 20, _, _ => exact leaf_08520
  | 21, _, _ => exact leaf_08521
  | 22, _, _ => exact leaf_08522
  | 23, _, _ => exact leaf_08523
  | 24, _, _ => exact leaf_08524
  | 25, _, _ => exact leaf_08525
  | 26, _, _ => exact leaf_08526
  | 27, _, _ => exact leaf_08527
  | 28, _, _ => exact leaf_08528
  | 29, _, _ => exact leaf_08529
  | 30, _, _ => exact leaf_08530
  | 31, _, _ => exact leaf_08531
  | 32, _, _ => exact leaf_08532
  | 33, _, _ => exact leaf_08533
  | 34, _, _ => exact leaf_08534
  | 35, _, _ => exact leaf_08535
  | 36, _, _ => exact leaf_08536
  | 37, _, _ => exact leaf_08537
  | 38, _, _ => exact leaf_08538
  | 39, _, _ => exact leaf_08539
  | 40, _, _ => exact leaf_08540
  | 41, _, _ => exact leaf_08541
  | 42, _, _ => exact leaf_08542
  | 43, _, _ => exact leaf_08543
  | 44, _, _ => exact leaf_08544
  | 45, _, _ => exact leaf_08545
  | 46, _, _ => exact leaf_08546
  | 47, _, _ => exact leaf_08547
  | 48, _, _ => exact leaf_08548
  | 49, _, _ => exact leaf_08549
  | 50, _, _ => exact leaf_08550
  | 51, _, _ => exact leaf_08551
  | 52, _, _ => exact leaf_08552
  | 53, _, _ => exact leaf_08553
  | 54, _, _ => exact leaf_08554
  | 55, _, _ => exact leaf_08555
  | 56, _, _ => exact leaf_08556
  | 57, _, _ => exact leaf_08557
  | 58, _, _ => exact leaf_08558
  | 59, _, _ => exact leaf_08559
  | 60, _, _ => exact leaf_08560
  | 61, _, _ => exact leaf_08561
  | 62, _, _ => exact leaf_08562
  | 63, _, _ => exact leaf_08563
  | 64, _, _ => exact leaf_08564
  | 65, _, _ => exact leaf_08565
  | 66, _, _ => exact leaf_08566
  | 67, _, _ => exact leaf_08567
  | 68, _, _ => exact leaf_08568
  | 69, _, _ => exact leaf_08569
  | 70, _, _ => exact leaf_08570
  | 71, _, _ => exact leaf_08571
  | 72, _, _ => exact leaf_08572
  | 73, _, _ => exact leaf_08573
  | 74, _, _ => exact leaf_08574
  | 75, _, _ => exact leaf_08575
  | 76, _, _ => exact leaf_08576
  | 77, _, _ => exact leaf_08577
  | 78, _, _ => exact leaf_08578
  | 79, _, _ => exact leaf_08579
  | 80, _, _ => exact leaf_08580
  | 81, _, _ => exact leaf_08581
  | 82, _, _ => exact leaf_08582
  | 83, _, _ => exact leaf_08583
  | 84, _, _ => exact leaf_08584
  | 85, _, _ => exact leaf_08585
  | 86, _, _ => exact leaf_08586
  | 87, _, _ => exact leaf_08587
  | 88, _, _ => exact leaf_08588
  | 89, _, _ => exact leaf_08589
  | 90, _, _ => exact leaf_08590
  | 91, _, _ => exact leaf_08591
  | 92, _, _ => exact leaf_08592
  | 93, _, _ => exact leaf_08593
  | 94, _, _ => exact leaf_08594
  | 95, _, _ => exact leaf_08595
  | 96, _, _ => exact leaf_08596
  | 97, _, _ => exact leaf_08597
  | 98, _, _ => exact leaf_08598
  | 99, _, _ => exact leaf_08599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
