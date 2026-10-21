import TUK.Leaf08400
import TUK.Leaf08401
import TUK.Leaf08402
import TUK.Leaf08403
import TUK.Leaf08404
import TUK.Leaf08405
import TUK.Leaf08406
import TUK.Leaf08407
import TUK.Leaf08408
import TUK.Leaf08409
import TUK.Leaf08410
import TUK.Leaf08411
import TUK.Leaf08412
import TUK.Leaf08413
import TUK.Leaf08414
import TUK.Leaf08415
import TUK.Leaf08416
import TUK.Leaf08417
import TUK.Leaf08418
import TUK.Leaf08419
import TUK.Leaf08420
import TUK.Leaf08421
import TUK.Leaf08422
import TUK.Leaf08423
import TUK.Leaf08424
import TUK.Leaf08425
import TUK.Leaf08426
import TUK.Leaf08427
import TUK.Leaf08428
import TUK.Leaf08429
import TUK.Leaf08430
import TUK.Leaf08431
import TUK.Leaf08432
import TUK.Leaf08433
import TUK.Leaf08434
import TUK.Leaf08435
import TUK.Leaf08436
import TUK.Leaf08437
import TUK.Leaf08438
import TUK.Leaf08439
import TUK.Leaf08440
import TUK.Leaf08441
import TUK.Leaf08442
import TUK.Leaf08443
import TUK.Leaf08444
import TUK.Leaf08445
import TUK.Leaf08446
import TUK.Leaf08447
import TUK.Leaf08448
import TUK.Leaf08449
import TUK.Leaf08450
import TUK.Leaf08451
import TUK.Leaf08452
import TUK.Leaf08453
import TUK.Leaf08454
import TUK.Leaf08455
import TUK.Leaf08456
import TUK.Leaf08457
import TUK.Leaf08458
import TUK.Leaf08459
import TUK.Leaf08460
import TUK.Leaf08461
import TUK.Leaf08462
import TUK.Leaf08463
import TUK.Leaf08464
import TUK.Leaf08465
import TUK.Leaf08466
import TUK.Leaf08467
import TUK.Leaf08468
import TUK.Leaf08469
import TUK.Leaf08470
import TUK.Leaf08471
import TUK.Leaf08472
import TUK.Leaf08473
import TUK.Leaf08474
import TUK.Leaf08475
import TUK.Leaf08476
import TUK.Leaf08477
import TUK.Leaf08478
import TUK.Leaf08479
import TUK.Leaf08480
import TUK.Leaf08481
import TUK.Leaf08482
import TUK.Leaf08483
import TUK.Leaf08484
import TUK.Leaf08485
import TUK.Leaf08486
import TUK.Leaf08487
import TUK.Leaf08488
import TUK.Leaf08489
import TUK.Leaf08490
import TUK.Leaf08491
import TUK.Leaf08492
import TUK.Leaf08493
import TUK.Leaf08494
import TUK.Leaf08495
import TUK.Leaf08496
import TUK.Leaf08497
import TUK.Leaf08498
import TUK.Leaf08499

/-! Leaves 8400 .. 8499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_84 : ∀ j < 100, 100 * 84 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 84 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_08400
  | 1, _, _ => exact leaf_08401
  | 2, _, _ => exact leaf_08402
  | 3, _, _ => exact leaf_08403
  | 4, _, _ => exact leaf_08404
  | 5, _, _ => exact leaf_08405
  | 6, _, _ => exact leaf_08406
  | 7, _, _ => exact leaf_08407
  | 8, _, _ => exact leaf_08408
  | 9, _, _ => exact leaf_08409
  | 10, _, _ => exact leaf_08410
  | 11, _, _ => exact leaf_08411
  | 12, _, _ => exact leaf_08412
  | 13, _, _ => exact leaf_08413
  | 14, _, _ => exact leaf_08414
  | 15, _, _ => exact leaf_08415
  | 16, _, _ => exact leaf_08416
  | 17, _, _ => exact leaf_08417
  | 18, _, _ => exact leaf_08418
  | 19, _, _ => exact leaf_08419
  | 20, _, _ => exact leaf_08420
  | 21, _, _ => exact leaf_08421
  | 22, _, _ => exact leaf_08422
  | 23, _, _ => exact leaf_08423
  | 24, _, _ => exact leaf_08424
  | 25, _, _ => exact leaf_08425
  | 26, _, _ => exact leaf_08426
  | 27, _, _ => exact leaf_08427
  | 28, _, _ => exact leaf_08428
  | 29, _, _ => exact leaf_08429
  | 30, _, _ => exact leaf_08430
  | 31, _, _ => exact leaf_08431
  | 32, _, _ => exact leaf_08432
  | 33, _, _ => exact leaf_08433
  | 34, _, _ => exact leaf_08434
  | 35, _, _ => exact leaf_08435
  | 36, _, _ => exact leaf_08436
  | 37, _, _ => exact leaf_08437
  | 38, _, _ => exact leaf_08438
  | 39, _, _ => exact leaf_08439
  | 40, _, _ => exact leaf_08440
  | 41, _, _ => exact leaf_08441
  | 42, _, _ => exact leaf_08442
  | 43, _, _ => exact leaf_08443
  | 44, _, _ => exact leaf_08444
  | 45, _, _ => exact leaf_08445
  | 46, _, _ => exact leaf_08446
  | 47, _, _ => exact leaf_08447
  | 48, _, _ => exact leaf_08448
  | 49, _, _ => exact leaf_08449
  | 50, _, _ => exact leaf_08450
  | 51, _, _ => exact leaf_08451
  | 52, _, _ => exact leaf_08452
  | 53, _, _ => exact leaf_08453
  | 54, _, _ => exact leaf_08454
  | 55, _, _ => exact leaf_08455
  | 56, _, _ => exact leaf_08456
  | 57, _, _ => exact leaf_08457
  | 58, _, _ => exact leaf_08458
  | 59, _, _ => exact leaf_08459
  | 60, _, _ => exact leaf_08460
  | 61, _, _ => exact leaf_08461
  | 62, _, _ => exact leaf_08462
  | 63, _, _ => exact leaf_08463
  | 64, _, _ => exact leaf_08464
  | 65, _, _ => exact leaf_08465
  | 66, _, _ => exact leaf_08466
  | 67, _, _ => exact leaf_08467
  | 68, _, _ => exact leaf_08468
  | 69, _, _ => exact leaf_08469
  | 70, _, _ => exact leaf_08470
  | 71, _, _ => exact leaf_08471
  | 72, _, _ => exact leaf_08472
  | 73, _, _ => exact leaf_08473
  | 74, _, _ => exact leaf_08474
  | 75, _, _ => exact leaf_08475
  | 76, _, _ => exact leaf_08476
  | 77, _, _ => exact leaf_08477
  | 78, _, _ => exact leaf_08478
  | 79, _, _ => exact leaf_08479
  | 80, _, _ => exact leaf_08480
  | 81, _, _ => exact leaf_08481
  | 82, _, _ => exact leaf_08482
  | 83, _, _ => exact leaf_08483
  | 84, _, _ => exact leaf_08484
  | 85, _, _ => exact leaf_08485
  | 86, _, _ => exact leaf_08486
  | 87, _, _ => exact leaf_08487
  | 88, _, _ => exact leaf_08488
  | 89, _, _ => exact leaf_08489
  | 90, _, _ => exact leaf_08490
  | 91, _, _ => exact leaf_08491
  | 92, _, _ => exact leaf_08492
  | 93, _, _ => exact leaf_08493
  | 94, _, _ => exact leaf_08494
  | 95, _, _ => exact leaf_08495
  | 96, _, _ => exact leaf_08496
  | 97, _, _ => exact leaf_08497
  | 98, _, _ => exact leaf_08498
  | 99, _, _ => exact leaf_08499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
