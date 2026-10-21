import TUK.Leaf02500
import TUK.Leaf02501
import TUK.Leaf02502
import TUK.Leaf02503
import TUK.Leaf02504
import TUK.Leaf02505
import TUK.Leaf02506
import TUK.Leaf02507
import TUK.Leaf02508
import TUK.Leaf02509
import TUK.Leaf02510
import TUK.Leaf02511
import TUK.Leaf02512
import TUK.Leaf02513
import TUK.Leaf02514
import TUK.Leaf02515
import TUK.Leaf02516
import TUK.Leaf02517
import TUK.Leaf02518
import TUK.Leaf02519
import TUK.Leaf02520
import TUK.Leaf02521
import TUK.Leaf02522
import TUK.Leaf02523
import TUK.Leaf02524
import TUK.Leaf02525
import TUK.Leaf02526
import TUK.Leaf02527
import TUK.Leaf02528
import TUK.Leaf02529
import TUK.Leaf02530
import TUK.Leaf02531
import TUK.Leaf02532
import TUK.Leaf02533
import TUK.Leaf02534
import TUK.Leaf02535
import TUK.Leaf02536
import TUK.Leaf02537
import TUK.Leaf02538
import TUK.Leaf02539
import TUK.Leaf02540
import TUK.Leaf02541
import TUK.Leaf02542
import TUK.Leaf02543
import TUK.Leaf02544
import TUK.Leaf02545
import TUK.Leaf02546
import TUK.Leaf02547
import TUK.Leaf02548
import TUK.Leaf02549
import TUK.Leaf02550
import TUK.Leaf02551
import TUK.Leaf02552
import TUK.Leaf02553
import TUK.Leaf02554
import TUK.Leaf02555
import TUK.Leaf02556
import TUK.Leaf02557
import TUK.Leaf02558
import TUK.Leaf02559
import TUK.Leaf02560
import TUK.Leaf02561
import TUK.Leaf02562
import TUK.Leaf02563
import TUK.Leaf02564
import TUK.Leaf02565
import TUK.Leaf02566
import TUK.Leaf02567
import TUK.Leaf02568
import TUK.Leaf02569
import TUK.Leaf02570
import TUK.Leaf02571
import TUK.Leaf02572
import TUK.Leaf02573
import TUK.Leaf02574
import TUK.Leaf02575
import TUK.Leaf02576
import TUK.Leaf02577
import TUK.Leaf02578
import TUK.Leaf02579
import TUK.Leaf02580
import TUK.Leaf02581
import TUK.Leaf02582
import TUK.Leaf02583
import TUK.Leaf02584
import TUK.Leaf02585
import TUK.Leaf02586
import TUK.Leaf02587
import TUK.Leaf02588
import TUK.Leaf02589
import TUK.Leaf02590
import TUK.Leaf02591
import TUK.Leaf02592
import TUK.Leaf02593
import TUK.Leaf02594
import TUK.Leaf02595
import TUK.Leaf02596
import TUK.Leaf02597
import TUK.Leaf02598
import TUK.Leaf02599

/-! Leaves 2500 .. 2599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_25 : ∀ j < 100, 100 * 25 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 25 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_02500
  | 1, _, _ => exact leaf_02501
  | 2, _, _ => exact leaf_02502
  | 3, _, _ => exact leaf_02503
  | 4, _, _ => exact leaf_02504
  | 5, _, _ => exact leaf_02505
  | 6, _, _ => exact leaf_02506
  | 7, _, _ => exact leaf_02507
  | 8, _, _ => exact leaf_02508
  | 9, _, _ => exact leaf_02509
  | 10, _, _ => exact leaf_02510
  | 11, _, _ => exact leaf_02511
  | 12, _, _ => exact leaf_02512
  | 13, _, _ => exact leaf_02513
  | 14, _, _ => exact leaf_02514
  | 15, _, _ => exact leaf_02515
  | 16, _, _ => exact leaf_02516
  | 17, _, _ => exact leaf_02517
  | 18, _, _ => exact leaf_02518
  | 19, _, _ => exact leaf_02519
  | 20, _, _ => exact leaf_02520
  | 21, _, _ => exact leaf_02521
  | 22, _, _ => exact leaf_02522
  | 23, _, _ => exact leaf_02523
  | 24, _, _ => exact leaf_02524
  | 25, _, _ => exact leaf_02525
  | 26, _, _ => exact leaf_02526
  | 27, _, _ => exact leaf_02527
  | 28, _, _ => exact leaf_02528
  | 29, _, _ => exact leaf_02529
  | 30, _, _ => exact leaf_02530
  | 31, _, _ => exact leaf_02531
  | 32, _, _ => exact leaf_02532
  | 33, _, _ => exact leaf_02533
  | 34, _, _ => exact leaf_02534
  | 35, _, _ => exact leaf_02535
  | 36, _, _ => exact leaf_02536
  | 37, _, _ => exact leaf_02537
  | 38, _, _ => exact leaf_02538
  | 39, _, _ => exact leaf_02539
  | 40, _, _ => exact leaf_02540
  | 41, _, _ => exact leaf_02541
  | 42, _, _ => exact leaf_02542
  | 43, _, _ => exact leaf_02543
  | 44, _, _ => exact leaf_02544
  | 45, _, _ => exact leaf_02545
  | 46, _, _ => exact leaf_02546
  | 47, _, _ => exact leaf_02547
  | 48, _, _ => exact leaf_02548
  | 49, _, _ => exact leaf_02549
  | 50, _, _ => exact leaf_02550
  | 51, _, _ => exact leaf_02551
  | 52, _, _ => exact leaf_02552
  | 53, _, _ => exact leaf_02553
  | 54, _, _ => exact leaf_02554
  | 55, _, _ => exact leaf_02555
  | 56, _, _ => exact leaf_02556
  | 57, _, _ => exact leaf_02557
  | 58, _, _ => exact leaf_02558
  | 59, _, _ => exact leaf_02559
  | 60, _, _ => exact leaf_02560
  | 61, _, _ => exact leaf_02561
  | 62, _, _ => exact leaf_02562
  | 63, _, _ => exact leaf_02563
  | 64, _, _ => exact leaf_02564
  | 65, _, _ => exact leaf_02565
  | 66, _, _ => exact leaf_02566
  | 67, _, _ => exact leaf_02567
  | 68, _, _ => exact leaf_02568
  | 69, _, _ => exact leaf_02569
  | 70, _, _ => exact leaf_02570
  | 71, _, _ => exact leaf_02571
  | 72, _, _ => exact leaf_02572
  | 73, _, _ => exact leaf_02573
  | 74, _, _ => exact leaf_02574
  | 75, _, _ => exact leaf_02575
  | 76, _, _ => exact leaf_02576
  | 77, _, _ => exact leaf_02577
  | 78, _, _ => exact leaf_02578
  | 79, _, _ => exact leaf_02579
  | 80, _, _ => exact leaf_02580
  | 81, _, _ => exact leaf_02581
  | 82, _, _ => exact leaf_02582
  | 83, _, _ => exact leaf_02583
  | 84, _, _ => exact leaf_02584
  | 85, _, _ => exact leaf_02585
  | 86, _, _ => exact leaf_02586
  | 87, _, _ => exact leaf_02587
  | 88, _, _ => exact leaf_02588
  | 89, _, _ => exact leaf_02589
  | 90, _, _ => exact leaf_02590
  | 91, _, _ => exact leaf_02591
  | 92, _, _ => exact leaf_02592
  | 93, _, _ => exact leaf_02593
  | 94, _, _ => exact leaf_02594
  | 95, _, _ => exact leaf_02595
  | 96, _, _ => exact leaf_02596
  | 97, _, _ => exact leaf_02597
  | 98, _, _ => exact leaf_02598
  | 99, _, _ => exact leaf_02599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
