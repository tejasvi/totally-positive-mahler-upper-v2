import TUK.Leaf01400
import TUK.Leaf01401
import TUK.Leaf01402
import TUK.Leaf01403
import TUK.Leaf01404
import TUK.Leaf01405
import TUK.Leaf01406
import TUK.Leaf01407
import TUK.Leaf01408
import TUK.Leaf01409
import TUK.Leaf01410
import TUK.Leaf01411
import TUK.Leaf01412
import TUK.Leaf01413
import TUK.Leaf01414
import TUK.Leaf01415
import TUK.Leaf01416
import TUK.Leaf01417
import TUK.Leaf01418
import TUK.Leaf01419
import TUK.Leaf01420
import TUK.Leaf01421
import TUK.Leaf01422
import TUK.Leaf01423
import TUK.Leaf01424
import TUK.Leaf01425
import TUK.Leaf01426
import TUK.Leaf01427
import TUK.Leaf01428
import TUK.Leaf01429
import TUK.Leaf01430
import TUK.Leaf01431
import TUK.Leaf01432
import TUK.Leaf01433
import TUK.Leaf01434
import TUK.Leaf01435
import TUK.Leaf01436
import TUK.Leaf01437
import TUK.Leaf01438
import TUK.Leaf01439
import TUK.Leaf01440
import TUK.Leaf01441
import TUK.Leaf01442
import TUK.Leaf01443
import TUK.Leaf01444
import TUK.Leaf01445
import TUK.Leaf01446
import TUK.Leaf01447
import TUK.Leaf01448
import TUK.Leaf01449
import TUK.Leaf01450
import TUK.Leaf01451
import TUK.Leaf01452
import TUK.Leaf01453
import TUK.Leaf01454
import TUK.Leaf01455
import TUK.Leaf01456
import TUK.Leaf01457
import TUK.Leaf01458
import TUK.Leaf01459
import TUK.Leaf01460
import TUK.Leaf01461
import TUK.Leaf01462
import TUK.Leaf01463
import TUK.Leaf01464
import TUK.Leaf01465
import TUK.Leaf01466
import TUK.Leaf01467
import TUK.Leaf01468
import TUK.Leaf01469
import TUK.Leaf01470
import TUK.Leaf01471
import TUK.Leaf01472
import TUK.Leaf01473
import TUK.Leaf01474
import TUK.Leaf01475
import TUK.Leaf01476
import TUK.Leaf01477
import TUK.Leaf01478
import TUK.Leaf01479
import TUK.Leaf01480
import TUK.Leaf01481
import TUK.Leaf01482
import TUK.Leaf01483
import TUK.Leaf01484
import TUK.Leaf01485
import TUK.Leaf01486
import TUK.Leaf01487
import TUK.Leaf01488
import TUK.Leaf01489
import TUK.Leaf01490
import TUK.Leaf01491
import TUK.Leaf01492
import TUK.Leaf01493
import TUK.Leaf01494
import TUK.Leaf01495
import TUK.Leaf01496
import TUK.Leaf01497
import TUK.Leaf01498
import TUK.Leaf01499

/-! Leaves 1400 .. 1499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_14 : ∀ j < 100, 100 * 14 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 14 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_01400
  | 1, _, _ => exact leaf_01401
  | 2, _, _ => exact leaf_01402
  | 3, _, _ => exact leaf_01403
  | 4, _, _ => exact leaf_01404
  | 5, _, _ => exact leaf_01405
  | 6, _, _ => exact leaf_01406
  | 7, _, _ => exact leaf_01407
  | 8, _, _ => exact leaf_01408
  | 9, _, _ => exact leaf_01409
  | 10, _, _ => exact leaf_01410
  | 11, _, _ => exact leaf_01411
  | 12, _, _ => exact leaf_01412
  | 13, _, _ => exact leaf_01413
  | 14, _, _ => exact leaf_01414
  | 15, _, _ => exact leaf_01415
  | 16, _, _ => exact leaf_01416
  | 17, _, _ => exact leaf_01417
  | 18, _, _ => exact leaf_01418
  | 19, _, _ => exact leaf_01419
  | 20, _, _ => exact leaf_01420
  | 21, _, _ => exact leaf_01421
  | 22, _, _ => exact leaf_01422
  | 23, _, _ => exact leaf_01423
  | 24, _, _ => exact leaf_01424
  | 25, _, _ => exact leaf_01425
  | 26, _, _ => exact leaf_01426
  | 27, _, _ => exact leaf_01427
  | 28, _, _ => exact leaf_01428
  | 29, _, _ => exact leaf_01429
  | 30, _, _ => exact leaf_01430
  | 31, _, _ => exact leaf_01431
  | 32, _, _ => exact leaf_01432
  | 33, _, _ => exact leaf_01433
  | 34, _, _ => exact leaf_01434
  | 35, _, _ => exact leaf_01435
  | 36, _, _ => exact leaf_01436
  | 37, _, _ => exact leaf_01437
  | 38, _, _ => exact leaf_01438
  | 39, _, _ => exact leaf_01439
  | 40, _, _ => exact leaf_01440
  | 41, _, _ => exact leaf_01441
  | 42, _, _ => exact leaf_01442
  | 43, _, _ => exact leaf_01443
  | 44, _, _ => exact leaf_01444
  | 45, _, _ => exact leaf_01445
  | 46, _, _ => exact leaf_01446
  | 47, _, _ => exact leaf_01447
  | 48, _, _ => exact leaf_01448
  | 49, _, _ => exact leaf_01449
  | 50, _, _ => exact leaf_01450
  | 51, _, _ => exact leaf_01451
  | 52, _, _ => exact leaf_01452
  | 53, _, _ => exact leaf_01453
  | 54, _, _ => exact leaf_01454
  | 55, _, _ => exact leaf_01455
  | 56, _, _ => exact leaf_01456
  | 57, _, _ => exact leaf_01457
  | 58, _, _ => exact leaf_01458
  | 59, _, _ => exact leaf_01459
  | 60, _, _ => exact leaf_01460
  | 61, _, _ => exact leaf_01461
  | 62, _, _ => exact leaf_01462
  | 63, _, _ => exact leaf_01463
  | 64, _, _ => exact leaf_01464
  | 65, _, _ => exact leaf_01465
  | 66, _, _ => exact leaf_01466
  | 67, _, _ => exact leaf_01467
  | 68, _, _ => exact leaf_01468
  | 69, _, _ => exact leaf_01469
  | 70, _, _ => exact leaf_01470
  | 71, _, _ => exact leaf_01471
  | 72, _, _ => exact leaf_01472
  | 73, _, _ => exact leaf_01473
  | 74, _, _ => exact leaf_01474
  | 75, _, _ => exact leaf_01475
  | 76, _, _ => exact leaf_01476
  | 77, _, _ => exact leaf_01477
  | 78, _, _ => exact leaf_01478
  | 79, _, _ => exact leaf_01479
  | 80, _, _ => exact leaf_01480
  | 81, _, _ => exact leaf_01481
  | 82, _, _ => exact leaf_01482
  | 83, _, _ => exact leaf_01483
  | 84, _, _ => exact leaf_01484
  | 85, _, _ => exact leaf_01485
  | 86, _, _ => exact leaf_01486
  | 87, _, _ => exact leaf_01487
  | 88, _, _ => exact leaf_01488
  | 89, _, _ => exact leaf_01489
  | 90, _, _ => exact leaf_01490
  | 91, _, _ => exact leaf_01491
  | 92, _, _ => exact leaf_01492
  | 93, _, _ => exact leaf_01493
  | 94, _, _ => exact leaf_01494
  | 95, _, _ => exact leaf_01495
  | 96, _, _ => exact leaf_01496
  | 97, _, _ => exact leaf_01497
  | 98, _, _ => exact leaf_01498
  | 99, _, _ => exact leaf_01499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
