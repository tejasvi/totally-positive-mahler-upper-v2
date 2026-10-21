import TUK.Leaf05500
import TUK.Leaf05501
import TUK.Leaf05502
import TUK.Leaf05503
import TUK.Leaf05504
import TUK.Leaf05505
import TUK.Leaf05506
import TUK.Leaf05507
import TUK.Leaf05508
import TUK.Leaf05509
import TUK.Leaf05510
import TUK.Leaf05511
import TUK.Leaf05512
import TUK.Leaf05513
import TUK.Leaf05514
import TUK.Leaf05515
import TUK.Leaf05516
import TUK.Leaf05517
import TUK.Leaf05518
import TUK.Leaf05519
import TUK.Leaf05520
import TUK.Leaf05521
import TUK.Leaf05522
import TUK.Leaf05523
import TUK.Leaf05524
import TUK.Leaf05525
import TUK.Leaf05526
import TUK.Leaf05527
import TUK.Leaf05528
import TUK.Leaf05529
import TUK.Leaf05530
import TUK.Leaf05531
import TUK.Leaf05532
import TUK.Leaf05533
import TUK.Leaf05534
import TUK.Leaf05535
import TUK.Leaf05536
import TUK.Leaf05537
import TUK.Leaf05538
import TUK.Leaf05539
import TUK.Leaf05540
import TUK.Leaf05541
import TUK.Leaf05542
import TUK.Leaf05543
import TUK.Leaf05544
import TUK.Leaf05545
import TUK.Leaf05546
import TUK.Leaf05547
import TUK.Leaf05548
import TUK.Leaf05549
import TUK.Leaf05550
import TUK.Leaf05551
import TUK.Leaf05552
import TUK.Leaf05553
import TUK.Leaf05554
import TUK.Leaf05555
import TUK.Leaf05556
import TUK.Leaf05557
import TUK.Leaf05558
import TUK.Leaf05559
import TUK.Leaf05560
import TUK.Leaf05561
import TUK.Leaf05562
import TUK.Leaf05563
import TUK.Leaf05564
import TUK.Leaf05565
import TUK.Leaf05566
import TUK.Leaf05567
import TUK.Leaf05568
import TUK.Leaf05569
import TUK.Leaf05570
import TUK.Leaf05571
import TUK.Leaf05572
import TUK.Leaf05573
import TUK.Leaf05574
import TUK.Leaf05575
import TUK.Leaf05576
import TUK.Leaf05577
import TUK.Leaf05578
import TUK.Leaf05579
import TUK.Leaf05580
import TUK.Leaf05581
import TUK.Leaf05582
import TUK.Leaf05583
import TUK.Leaf05584
import TUK.Leaf05585
import TUK.Leaf05586
import TUK.Leaf05587
import TUK.Leaf05588
import TUK.Leaf05589
import TUK.Leaf05590
import TUK.Leaf05591
import TUK.Leaf05592
import TUK.Leaf05593
import TUK.Leaf05594
import TUK.Leaf05595
import TUK.Leaf05596
import TUK.Leaf05597
import TUK.Leaf05598
import TUK.Leaf05599

/-! Leaves 5500 .. 5599 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_55 : ∀ j < 100, 100 * 55 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 55 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_05500
  | 1, _, _ => exact leaf_05501
  | 2, _, _ => exact leaf_05502
  | 3, _, _ => exact leaf_05503
  | 4, _, _ => exact leaf_05504
  | 5, _, _ => exact leaf_05505
  | 6, _, _ => exact leaf_05506
  | 7, _, _ => exact leaf_05507
  | 8, _, _ => exact leaf_05508
  | 9, _, _ => exact leaf_05509
  | 10, _, _ => exact leaf_05510
  | 11, _, _ => exact leaf_05511
  | 12, _, _ => exact leaf_05512
  | 13, _, _ => exact leaf_05513
  | 14, _, _ => exact leaf_05514
  | 15, _, _ => exact leaf_05515
  | 16, _, _ => exact leaf_05516
  | 17, _, _ => exact leaf_05517
  | 18, _, _ => exact leaf_05518
  | 19, _, _ => exact leaf_05519
  | 20, _, _ => exact leaf_05520
  | 21, _, _ => exact leaf_05521
  | 22, _, _ => exact leaf_05522
  | 23, _, _ => exact leaf_05523
  | 24, _, _ => exact leaf_05524
  | 25, _, _ => exact leaf_05525
  | 26, _, _ => exact leaf_05526
  | 27, _, _ => exact leaf_05527
  | 28, _, _ => exact leaf_05528
  | 29, _, _ => exact leaf_05529
  | 30, _, _ => exact leaf_05530
  | 31, _, _ => exact leaf_05531
  | 32, _, _ => exact leaf_05532
  | 33, _, _ => exact leaf_05533
  | 34, _, _ => exact leaf_05534
  | 35, _, _ => exact leaf_05535
  | 36, _, _ => exact leaf_05536
  | 37, _, _ => exact leaf_05537
  | 38, _, _ => exact leaf_05538
  | 39, _, _ => exact leaf_05539
  | 40, _, _ => exact leaf_05540
  | 41, _, _ => exact leaf_05541
  | 42, _, _ => exact leaf_05542
  | 43, _, _ => exact leaf_05543
  | 44, _, _ => exact leaf_05544
  | 45, _, _ => exact leaf_05545
  | 46, _, _ => exact leaf_05546
  | 47, _, _ => exact leaf_05547
  | 48, _, _ => exact leaf_05548
  | 49, _, _ => exact leaf_05549
  | 50, _, _ => exact leaf_05550
  | 51, _, _ => exact leaf_05551
  | 52, _, _ => exact leaf_05552
  | 53, _, _ => exact leaf_05553
  | 54, _, _ => exact leaf_05554
  | 55, _, _ => exact leaf_05555
  | 56, _, _ => exact leaf_05556
  | 57, _, _ => exact leaf_05557
  | 58, _, _ => exact leaf_05558
  | 59, _, _ => exact leaf_05559
  | 60, _, _ => exact leaf_05560
  | 61, _, _ => exact leaf_05561
  | 62, _, _ => exact leaf_05562
  | 63, _, _ => exact leaf_05563
  | 64, _, _ => exact leaf_05564
  | 65, _, _ => exact leaf_05565
  | 66, _, _ => exact leaf_05566
  | 67, _, _ => exact leaf_05567
  | 68, _, _ => exact leaf_05568
  | 69, _, _ => exact leaf_05569
  | 70, _, _ => exact leaf_05570
  | 71, _, _ => exact leaf_05571
  | 72, _, _ => exact leaf_05572
  | 73, _, _ => exact leaf_05573
  | 74, _, _ => exact leaf_05574
  | 75, _, _ => exact leaf_05575
  | 76, _, _ => exact leaf_05576
  | 77, _, _ => exact leaf_05577
  | 78, _, _ => exact leaf_05578
  | 79, _, _ => exact leaf_05579
  | 80, _, _ => exact leaf_05580
  | 81, _, _ => exact leaf_05581
  | 82, _, _ => exact leaf_05582
  | 83, _, _ => exact leaf_05583
  | 84, _, _ => exact leaf_05584
  | 85, _, _ => exact leaf_05585
  | 86, _, _ => exact leaf_05586
  | 87, _, _ => exact leaf_05587
  | 88, _, _ => exact leaf_05588
  | 89, _, _ => exact leaf_05589
  | 90, _, _ => exact leaf_05590
  | 91, _, _ => exact leaf_05591
  | 92, _, _ => exact leaf_05592
  | 93, _, _ => exact leaf_05593
  | 94, _, _ => exact leaf_05594
  | 95, _, _ => exact leaf_05595
  | 96, _, _ => exact leaf_05596
  | 97, _, _ => exact leaf_05597
  | 98, _, _ => exact leaf_05598
  | 99, _, _ => exact leaf_05599
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
