import TUK.Leaf10400
import TUK.Leaf10401
import TUK.Leaf10402
import TUK.Leaf10403
import TUK.Leaf10404
import TUK.Leaf10405
import TUK.Leaf10406
import TUK.Leaf10407
import TUK.Leaf10408
import TUK.Leaf10409
import TUK.Leaf10410
import TUK.Leaf10411
import TUK.Leaf10412
import TUK.Leaf10413
import TUK.Leaf10414
import TUK.Leaf10415
import TUK.Leaf10416
import TUK.Leaf10417
import TUK.Leaf10418
import TUK.Leaf10419
import TUK.Leaf10420
import TUK.Leaf10421
import TUK.Leaf10422
import TUK.Leaf10423
import TUK.Leaf10424
import TUK.Leaf10425
import TUK.Leaf10426
import TUK.Leaf10427
import TUK.Leaf10428
import TUK.Leaf10429
import TUK.Leaf10430
import TUK.Leaf10431
import TUK.Leaf10432
import TUK.Leaf10433
import TUK.Leaf10434
import TUK.Leaf10435
import TUK.Leaf10436
import TUK.Leaf10437
import TUK.Leaf10438
import TUK.Leaf10439
import TUK.Leaf10440
import TUK.Leaf10441
import TUK.Leaf10442
import TUK.Leaf10443
import TUK.Leaf10444
import TUK.Leaf10445
import TUK.Leaf10446
import TUK.Leaf10447
import TUK.Leaf10448
import TUK.Leaf10449
import TUK.Leaf10450
import TUK.Leaf10451
import TUK.Leaf10452
import TUK.Leaf10453
import TUK.Leaf10454
import TUK.Leaf10455
import TUK.Leaf10456
import TUK.Leaf10457
import TUK.Leaf10458
import TUK.Leaf10459
import TUK.Leaf10460
import TUK.Leaf10461
import TUK.Leaf10462
import TUK.Leaf10463
import TUK.Leaf10464
import TUK.Leaf10465
import TUK.Leaf10466
import TUK.Leaf10467
import TUK.Leaf10468
import TUK.Leaf10469
import TUK.Leaf10470
import TUK.Leaf10471
import TUK.Leaf10472
import TUK.Leaf10473
import TUK.Leaf10474
import TUK.Leaf10475
import TUK.Leaf10476
import TUK.Leaf10477
import TUK.Leaf10478
import TUK.Leaf10479
import TUK.Leaf10480
import TUK.Leaf10481
import TUK.Leaf10482
import TUK.Leaf10483
import TUK.Leaf10484
import TUK.Leaf10485
import TUK.Leaf10486
import TUK.Leaf10487
import TUK.Leaf10488
import TUK.Leaf10489
import TUK.Leaf10490
import TUK.Leaf10491
import TUK.Leaf10492
import TUK.Leaf10493
import TUK.Leaf10494
import TUK.Leaf10495
import TUK.Leaf10496
import TUK.Leaf10497
import TUK.Leaf10498
import TUK.Leaf10499

/-! Leaves 10400 .. 10499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_104 : ∀ j < 100, 100 * 104 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 104 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_10400
  | 1, _, _ => exact leaf_10401
  | 2, _, _ => exact leaf_10402
  | 3, _, _ => exact leaf_10403
  | 4, _, _ => exact leaf_10404
  | 5, _, _ => exact leaf_10405
  | 6, _, _ => exact leaf_10406
  | 7, _, _ => exact leaf_10407
  | 8, _, _ => exact leaf_10408
  | 9, _, _ => exact leaf_10409
  | 10, _, _ => exact leaf_10410
  | 11, _, _ => exact leaf_10411
  | 12, _, _ => exact leaf_10412
  | 13, _, _ => exact leaf_10413
  | 14, _, _ => exact leaf_10414
  | 15, _, _ => exact leaf_10415
  | 16, _, _ => exact leaf_10416
  | 17, _, _ => exact leaf_10417
  | 18, _, _ => exact leaf_10418
  | 19, _, _ => exact leaf_10419
  | 20, _, _ => exact leaf_10420
  | 21, _, _ => exact leaf_10421
  | 22, _, _ => exact leaf_10422
  | 23, _, _ => exact leaf_10423
  | 24, _, _ => exact leaf_10424
  | 25, _, _ => exact leaf_10425
  | 26, _, _ => exact leaf_10426
  | 27, _, _ => exact leaf_10427
  | 28, _, _ => exact leaf_10428
  | 29, _, _ => exact leaf_10429
  | 30, _, _ => exact leaf_10430
  | 31, _, _ => exact leaf_10431
  | 32, _, _ => exact leaf_10432
  | 33, _, _ => exact leaf_10433
  | 34, _, _ => exact leaf_10434
  | 35, _, _ => exact leaf_10435
  | 36, _, _ => exact leaf_10436
  | 37, _, _ => exact leaf_10437
  | 38, _, _ => exact leaf_10438
  | 39, _, _ => exact leaf_10439
  | 40, _, _ => exact leaf_10440
  | 41, _, _ => exact leaf_10441
  | 42, _, _ => exact leaf_10442
  | 43, _, _ => exact leaf_10443
  | 44, _, _ => exact leaf_10444
  | 45, _, _ => exact leaf_10445
  | 46, _, _ => exact leaf_10446
  | 47, _, _ => exact leaf_10447
  | 48, _, _ => exact leaf_10448
  | 49, _, _ => exact leaf_10449
  | 50, _, _ => exact leaf_10450
  | 51, _, _ => exact leaf_10451
  | 52, _, _ => exact leaf_10452
  | 53, _, _ => exact leaf_10453
  | 54, _, _ => exact leaf_10454
  | 55, _, _ => exact leaf_10455
  | 56, _, _ => exact leaf_10456
  | 57, _, _ => exact leaf_10457
  | 58, _, _ => exact leaf_10458
  | 59, _, _ => exact leaf_10459
  | 60, _, _ => exact leaf_10460
  | 61, _, _ => exact leaf_10461
  | 62, _, _ => exact leaf_10462
  | 63, _, _ => exact leaf_10463
  | 64, _, _ => exact leaf_10464
  | 65, _, _ => exact leaf_10465
  | 66, _, _ => exact leaf_10466
  | 67, _, _ => exact leaf_10467
  | 68, _, _ => exact leaf_10468
  | 69, _, _ => exact leaf_10469
  | 70, _, _ => exact leaf_10470
  | 71, _, _ => exact leaf_10471
  | 72, _, _ => exact leaf_10472
  | 73, _, _ => exact leaf_10473
  | 74, _, _ => exact leaf_10474
  | 75, _, _ => exact leaf_10475
  | 76, _, _ => exact leaf_10476
  | 77, _, _ => exact leaf_10477
  | 78, _, _ => exact leaf_10478
  | 79, _, _ => exact leaf_10479
  | 80, _, _ => exact leaf_10480
  | 81, _, _ => exact leaf_10481
  | 82, _, _ => exact leaf_10482
  | 83, _, _ => exact leaf_10483
  | 84, _, _ => exact leaf_10484
  | 85, _, _ => exact leaf_10485
  | 86, _, _ => exact leaf_10486
  | 87, _, _ => exact leaf_10487
  | 88, _, _ => exact leaf_10488
  | 89, _, _ => exact leaf_10489
  | 90, _, _ => exact leaf_10490
  | 91, _, _ => exact leaf_10491
  | 92, _, _ => exact leaf_10492
  | 93, _, _ => exact leaf_10493
  | 94, _, _ => exact leaf_10494
  | 95, _, _ => exact leaf_10495
  | 96, _, _ => exact leaf_10496
  | 97, _, _ => exact leaf_10497
  | 98, _, _ => exact leaf_10498
  | 99, _, _ => exact leaf_10499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
