import TUK.Leaf09400
import TUK.Leaf09401
import TUK.Leaf09402
import TUK.Leaf09403
import TUK.Leaf09404
import TUK.Leaf09405
import TUK.Leaf09406
import TUK.Leaf09407
import TUK.Leaf09408
import TUK.Leaf09409
import TUK.Leaf09410
import TUK.Leaf09411
import TUK.Leaf09412
import TUK.Leaf09413
import TUK.Leaf09414
import TUK.Leaf09415
import TUK.Leaf09416
import TUK.Leaf09417
import TUK.Leaf09418
import TUK.Leaf09419
import TUK.Leaf09420
import TUK.Leaf09421
import TUK.Leaf09422
import TUK.Leaf09423
import TUK.Leaf09424
import TUK.Leaf09425
import TUK.Leaf09426
import TUK.Leaf09427
import TUK.Leaf09428
import TUK.Leaf09429
import TUK.Leaf09430
import TUK.Leaf09431
import TUK.Leaf09432
import TUK.Leaf09433
import TUK.Leaf09434
import TUK.Leaf09435
import TUK.Leaf09436
import TUK.Leaf09437
import TUK.Leaf09438
import TUK.Leaf09439
import TUK.Leaf09440
import TUK.Leaf09441
import TUK.Leaf09442
import TUK.Leaf09443
import TUK.Leaf09444
import TUK.Leaf09445
import TUK.Leaf09446
import TUK.Leaf09447
import TUK.Leaf09448
import TUK.Leaf09449
import TUK.Leaf09450
import TUK.Leaf09451
import TUK.Leaf09452
import TUK.Leaf09453
import TUK.Leaf09454
import TUK.Leaf09455
import TUK.Leaf09456
import TUK.Leaf09457
import TUK.Leaf09458
import TUK.Leaf09459
import TUK.Leaf09460
import TUK.Leaf09461
import TUK.Leaf09462
import TUK.Leaf09463
import TUK.Leaf09464
import TUK.Leaf09465
import TUK.Leaf09466
import TUK.Leaf09467
import TUK.Leaf09468
import TUK.Leaf09469
import TUK.Leaf09470
import TUK.Leaf09471
import TUK.Leaf09472
import TUK.Leaf09473
import TUK.Leaf09474
import TUK.Leaf09475
import TUK.Leaf09476
import TUK.Leaf09477
import TUK.Leaf09478
import TUK.Leaf09479
import TUK.Leaf09480
import TUK.Leaf09481
import TUK.Leaf09482
import TUK.Leaf09483
import TUK.Leaf09484
import TUK.Leaf09485
import TUK.Leaf09486
import TUK.Leaf09487
import TUK.Leaf09488
import TUK.Leaf09489
import TUK.Leaf09490
import TUK.Leaf09491
import TUK.Leaf09492
import TUK.Leaf09493
import TUK.Leaf09494
import TUK.Leaf09495
import TUK.Leaf09496
import TUK.Leaf09497
import TUK.Leaf09498
import TUK.Leaf09499

/-! Leaves 9400 .. 9499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_94 : ∀ j < 100, 100 * 94 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 94 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_09400
  | 1, _, _ => exact leaf_09401
  | 2, _, _ => exact leaf_09402
  | 3, _, _ => exact leaf_09403
  | 4, _, _ => exact leaf_09404
  | 5, _, _ => exact leaf_09405
  | 6, _, _ => exact leaf_09406
  | 7, _, _ => exact leaf_09407
  | 8, _, _ => exact leaf_09408
  | 9, _, _ => exact leaf_09409
  | 10, _, _ => exact leaf_09410
  | 11, _, _ => exact leaf_09411
  | 12, _, _ => exact leaf_09412
  | 13, _, _ => exact leaf_09413
  | 14, _, _ => exact leaf_09414
  | 15, _, _ => exact leaf_09415
  | 16, _, _ => exact leaf_09416
  | 17, _, _ => exact leaf_09417
  | 18, _, _ => exact leaf_09418
  | 19, _, _ => exact leaf_09419
  | 20, _, _ => exact leaf_09420
  | 21, _, _ => exact leaf_09421
  | 22, _, _ => exact leaf_09422
  | 23, _, _ => exact leaf_09423
  | 24, _, _ => exact leaf_09424
  | 25, _, _ => exact leaf_09425
  | 26, _, _ => exact leaf_09426
  | 27, _, _ => exact leaf_09427
  | 28, _, _ => exact leaf_09428
  | 29, _, _ => exact leaf_09429
  | 30, _, _ => exact leaf_09430
  | 31, _, _ => exact leaf_09431
  | 32, _, _ => exact leaf_09432
  | 33, _, _ => exact leaf_09433
  | 34, _, _ => exact leaf_09434
  | 35, _, _ => exact leaf_09435
  | 36, _, _ => exact leaf_09436
  | 37, _, _ => exact leaf_09437
  | 38, _, _ => exact leaf_09438
  | 39, _, _ => exact leaf_09439
  | 40, _, _ => exact leaf_09440
  | 41, _, _ => exact leaf_09441
  | 42, _, _ => exact leaf_09442
  | 43, _, _ => exact leaf_09443
  | 44, _, _ => exact leaf_09444
  | 45, _, _ => exact leaf_09445
  | 46, _, _ => exact leaf_09446
  | 47, _, _ => exact leaf_09447
  | 48, _, _ => exact leaf_09448
  | 49, _, _ => exact leaf_09449
  | 50, _, _ => exact leaf_09450
  | 51, _, _ => exact leaf_09451
  | 52, _, _ => exact leaf_09452
  | 53, _, _ => exact leaf_09453
  | 54, _, _ => exact leaf_09454
  | 55, _, _ => exact leaf_09455
  | 56, _, _ => exact leaf_09456
  | 57, _, _ => exact leaf_09457
  | 58, _, _ => exact leaf_09458
  | 59, _, _ => exact leaf_09459
  | 60, _, _ => exact leaf_09460
  | 61, _, _ => exact leaf_09461
  | 62, _, _ => exact leaf_09462
  | 63, _, _ => exact leaf_09463
  | 64, _, _ => exact leaf_09464
  | 65, _, _ => exact leaf_09465
  | 66, _, _ => exact leaf_09466
  | 67, _, _ => exact leaf_09467
  | 68, _, _ => exact leaf_09468
  | 69, _, _ => exact leaf_09469
  | 70, _, _ => exact leaf_09470
  | 71, _, _ => exact leaf_09471
  | 72, _, _ => exact leaf_09472
  | 73, _, _ => exact leaf_09473
  | 74, _, _ => exact leaf_09474
  | 75, _, _ => exact leaf_09475
  | 76, _, _ => exact leaf_09476
  | 77, _, _ => exact leaf_09477
  | 78, _, _ => exact leaf_09478
  | 79, _, _ => exact leaf_09479
  | 80, _, _ => exact leaf_09480
  | 81, _, _ => exact leaf_09481
  | 82, _, _ => exact leaf_09482
  | 83, _, _ => exact leaf_09483
  | 84, _, _ => exact leaf_09484
  | 85, _, _ => exact leaf_09485
  | 86, _, _ => exact leaf_09486
  | 87, _, _ => exact leaf_09487
  | 88, _, _ => exact leaf_09488
  | 89, _, _ => exact leaf_09489
  | 90, _, _ => exact leaf_09490
  | 91, _, _ => exact leaf_09491
  | 92, _, _ => exact leaf_09492
  | 93, _, _ => exact leaf_09493
  | 94, _, _ => exact leaf_09494
  | 95, _, _ => exact leaf_09495
  | 96, _, _ => exact leaf_09496
  | 97, _, _ => exact leaf_09497
  | 98, _, _ => exact leaf_09498
  | 99, _, _ => exact leaf_09499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
