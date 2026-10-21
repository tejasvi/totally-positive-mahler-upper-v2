import TUK.Leaf02400
import TUK.Leaf02401
import TUK.Leaf02402
import TUK.Leaf02403
import TUK.Leaf02404
import TUK.Leaf02405
import TUK.Leaf02406
import TUK.Leaf02407
import TUK.Leaf02408
import TUK.Leaf02409
import TUK.Leaf02410
import TUK.Leaf02411
import TUK.Leaf02412
import TUK.Leaf02413
import TUK.Leaf02414
import TUK.Leaf02415
import TUK.Leaf02416
import TUK.Leaf02417
import TUK.Leaf02418
import TUK.Leaf02419
import TUK.Leaf02420
import TUK.Leaf02421
import TUK.Leaf02422
import TUK.Leaf02423
import TUK.Leaf02424
import TUK.Leaf02425
import TUK.Leaf02426
import TUK.Leaf02427
import TUK.Leaf02428
import TUK.Leaf02429
import TUK.Leaf02430
import TUK.Leaf02431
import TUK.Leaf02432
import TUK.Leaf02433
import TUK.Leaf02434
import TUK.Leaf02435
import TUK.Leaf02436
import TUK.Leaf02437
import TUK.Leaf02438
import TUK.Leaf02439
import TUK.Leaf02440
import TUK.Leaf02441
import TUK.Leaf02442
import TUK.Leaf02443
import TUK.Leaf02444
import TUK.Leaf02445
import TUK.Leaf02446
import TUK.Leaf02447
import TUK.Leaf02448
import TUK.Leaf02449
import TUK.Leaf02450
import TUK.Leaf02451
import TUK.Leaf02452
import TUK.Leaf02453
import TUK.Leaf02454
import TUK.Leaf02455
import TUK.Leaf02456
import TUK.Leaf02457
import TUK.Leaf02458
import TUK.Leaf02459
import TUK.Leaf02460
import TUK.Leaf02461
import TUK.Leaf02462
import TUK.Leaf02463
import TUK.Leaf02464
import TUK.Leaf02465
import TUK.Leaf02466
import TUK.Leaf02467
import TUK.Leaf02468
import TUK.Leaf02469
import TUK.Leaf02470
import TUK.Leaf02471
import TUK.Leaf02472
import TUK.Leaf02473
import TUK.Leaf02474
import TUK.Leaf02475
import TUK.Leaf02476
import TUK.Leaf02477
import TUK.Leaf02478
import TUK.Leaf02479
import TUK.Leaf02480
import TUK.Leaf02481
import TUK.Leaf02482
import TUK.Leaf02483
import TUK.Leaf02484
import TUK.Leaf02485
import TUK.Leaf02486
import TUK.Leaf02487
import TUK.Leaf02488
import TUK.Leaf02489
import TUK.Leaf02490
import TUK.Leaf02491
import TUK.Leaf02492
import TUK.Leaf02493
import TUK.Leaf02494
import TUK.Leaf02495
import TUK.Leaf02496
import TUK.Leaf02497
import TUK.Leaf02498
import TUK.Leaf02499

/-! Leaves 2400 .. 2499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_24 : ∀ j < 100, 100 * 24 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 24 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_02400
  | 1, _, _ => exact leaf_02401
  | 2, _, _ => exact leaf_02402
  | 3, _, _ => exact leaf_02403
  | 4, _, _ => exact leaf_02404
  | 5, _, _ => exact leaf_02405
  | 6, _, _ => exact leaf_02406
  | 7, _, _ => exact leaf_02407
  | 8, _, _ => exact leaf_02408
  | 9, _, _ => exact leaf_02409
  | 10, _, _ => exact leaf_02410
  | 11, _, _ => exact leaf_02411
  | 12, _, _ => exact leaf_02412
  | 13, _, _ => exact leaf_02413
  | 14, _, _ => exact leaf_02414
  | 15, _, _ => exact leaf_02415
  | 16, _, _ => exact leaf_02416
  | 17, _, _ => exact leaf_02417
  | 18, _, _ => exact leaf_02418
  | 19, _, _ => exact leaf_02419
  | 20, _, _ => exact leaf_02420
  | 21, _, _ => exact leaf_02421
  | 22, _, _ => exact leaf_02422
  | 23, _, _ => exact leaf_02423
  | 24, _, _ => exact leaf_02424
  | 25, _, _ => exact leaf_02425
  | 26, _, _ => exact leaf_02426
  | 27, _, _ => exact leaf_02427
  | 28, _, _ => exact leaf_02428
  | 29, _, _ => exact leaf_02429
  | 30, _, _ => exact leaf_02430
  | 31, _, _ => exact leaf_02431
  | 32, _, _ => exact leaf_02432
  | 33, _, _ => exact leaf_02433
  | 34, _, _ => exact leaf_02434
  | 35, _, _ => exact leaf_02435
  | 36, _, _ => exact leaf_02436
  | 37, _, _ => exact leaf_02437
  | 38, _, _ => exact leaf_02438
  | 39, _, _ => exact leaf_02439
  | 40, _, _ => exact leaf_02440
  | 41, _, _ => exact leaf_02441
  | 42, _, _ => exact leaf_02442
  | 43, _, _ => exact leaf_02443
  | 44, _, _ => exact leaf_02444
  | 45, _, _ => exact leaf_02445
  | 46, _, _ => exact leaf_02446
  | 47, _, _ => exact leaf_02447
  | 48, _, _ => exact leaf_02448
  | 49, _, _ => exact leaf_02449
  | 50, _, _ => exact leaf_02450
  | 51, _, _ => exact leaf_02451
  | 52, _, _ => exact leaf_02452
  | 53, _, _ => exact leaf_02453
  | 54, _, _ => exact leaf_02454
  | 55, _, _ => exact leaf_02455
  | 56, _, _ => exact leaf_02456
  | 57, _, _ => exact leaf_02457
  | 58, _, _ => exact leaf_02458
  | 59, _, _ => exact leaf_02459
  | 60, _, _ => exact leaf_02460
  | 61, _, _ => exact leaf_02461
  | 62, _, _ => exact leaf_02462
  | 63, _, _ => exact leaf_02463
  | 64, _, _ => exact leaf_02464
  | 65, _, _ => exact leaf_02465
  | 66, _, _ => exact leaf_02466
  | 67, _, _ => exact leaf_02467
  | 68, _, _ => exact leaf_02468
  | 69, _, _ => exact leaf_02469
  | 70, _, _ => exact leaf_02470
  | 71, _, _ => exact leaf_02471
  | 72, _, _ => exact leaf_02472
  | 73, _, _ => exact leaf_02473
  | 74, _, _ => exact leaf_02474
  | 75, _, _ => exact leaf_02475
  | 76, _, _ => exact leaf_02476
  | 77, _, _ => exact leaf_02477
  | 78, _, _ => exact leaf_02478
  | 79, _, _ => exact leaf_02479
  | 80, _, _ => exact leaf_02480
  | 81, _, _ => exact leaf_02481
  | 82, _, _ => exact leaf_02482
  | 83, _, _ => exact leaf_02483
  | 84, _, _ => exact leaf_02484
  | 85, _, _ => exact leaf_02485
  | 86, _, _ => exact leaf_02486
  | 87, _, _ => exact leaf_02487
  | 88, _, _ => exact leaf_02488
  | 89, _, _ => exact leaf_02489
  | 90, _, _ => exact leaf_02490
  | 91, _, _ => exact leaf_02491
  | 92, _, _ => exact leaf_02492
  | 93, _, _ => exact leaf_02493
  | 94, _, _ => exact leaf_02494
  | 95, _, _ => exact leaf_02495
  | 96, _, _ => exact leaf_02496
  | 97, _, _ => exact leaf_02497
  | 98, _, _ => exact leaf_02498
  | 99, _, _ => exact leaf_02499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
