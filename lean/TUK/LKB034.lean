import TUK.Leaf03400
import TUK.Leaf03401
import TUK.Leaf03402
import TUK.Leaf03403
import TUK.Leaf03404
import TUK.Leaf03405
import TUK.Leaf03406
import TUK.Leaf03407
import TUK.Leaf03408
import TUK.Leaf03409
import TUK.Leaf03410
import TUK.Leaf03411
import TUK.Leaf03412
import TUK.Leaf03413
import TUK.Leaf03414
import TUK.Leaf03415
import TUK.Leaf03416
import TUK.Leaf03417
import TUK.Leaf03418
import TUK.Leaf03419
import TUK.Leaf03420
import TUK.Leaf03421
import TUK.Leaf03422
import TUK.Leaf03423
import TUK.Leaf03424
import TUK.Leaf03425
import TUK.Leaf03426
import TUK.Leaf03427
import TUK.Leaf03428
import TUK.Leaf03429
import TUK.Leaf03430
import TUK.Leaf03431
import TUK.Leaf03432
import TUK.Leaf03433
import TUK.Leaf03434
import TUK.Leaf03435
import TUK.Leaf03436
import TUK.Leaf03437
import TUK.Leaf03438
import TUK.Leaf03439
import TUK.Leaf03440
import TUK.Leaf03441
import TUK.Leaf03442
import TUK.Leaf03443
import TUK.Leaf03444
import TUK.Leaf03445
import TUK.Leaf03446
import TUK.Leaf03447
import TUK.Leaf03448
import TUK.Leaf03449
import TUK.Leaf03450
import TUK.Leaf03451
import TUK.Leaf03452
import TUK.Leaf03453
import TUK.Leaf03454
import TUK.Leaf03455
import TUK.Leaf03456
import TUK.Leaf03457
import TUK.Leaf03458
import TUK.Leaf03459
import TUK.Leaf03460
import TUK.Leaf03461
import TUK.Leaf03462
import TUK.Leaf03463
import TUK.Leaf03464
import TUK.Leaf03465
import TUK.Leaf03466
import TUK.Leaf03467
import TUK.Leaf03468
import TUK.Leaf03469
import TUK.Leaf03470
import TUK.Leaf03471
import TUK.Leaf03472
import TUK.Leaf03473
import TUK.Leaf03474
import TUK.Leaf03475
import TUK.Leaf03476
import TUK.Leaf03477
import TUK.Leaf03478
import TUK.Leaf03479
import TUK.Leaf03480
import TUK.Leaf03481
import TUK.Leaf03482
import TUK.Leaf03483
import TUK.Leaf03484
import TUK.Leaf03485
import TUK.Leaf03486
import TUK.Leaf03487
import TUK.Leaf03488
import TUK.Leaf03489
import TUK.Leaf03490
import TUK.Leaf03491
import TUK.Leaf03492
import TUK.Leaf03493
import TUK.Leaf03494
import TUK.Leaf03495
import TUK.Leaf03496
import TUK.Leaf03497
import TUK.Leaf03498
import TUK.Leaf03499

/-! Leaves 3400 .. 3499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_34 : ∀ j < 100, 100 * 34 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 34 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_03400
  | 1, _, _ => exact leaf_03401
  | 2, _, _ => exact leaf_03402
  | 3, _, _ => exact leaf_03403
  | 4, _, _ => exact leaf_03404
  | 5, _, _ => exact leaf_03405
  | 6, _, _ => exact leaf_03406
  | 7, _, _ => exact leaf_03407
  | 8, _, _ => exact leaf_03408
  | 9, _, _ => exact leaf_03409
  | 10, _, _ => exact leaf_03410
  | 11, _, _ => exact leaf_03411
  | 12, _, _ => exact leaf_03412
  | 13, _, _ => exact leaf_03413
  | 14, _, _ => exact leaf_03414
  | 15, _, _ => exact leaf_03415
  | 16, _, _ => exact leaf_03416
  | 17, _, _ => exact leaf_03417
  | 18, _, _ => exact leaf_03418
  | 19, _, _ => exact leaf_03419
  | 20, _, _ => exact leaf_03420
  | 21, _, _ => exact leaf_03421
  | 22, _, _ => exact leaf_03422
  | 23, _, _ => exact leaf_03423
  | 24, _, _ => exact leaf_03424
  | 25, _, _ => exact leaf_03425
  | 26, _, _ => exact leaf_03426
  | 27, _, _ => exact leaf_03427
  | 28, _, _ => exact leaf_03428
  | 29, _, _ => exact leaf_03429
  | 30, _, _ => exact leaf_03430
  | 31, _, _ => exact leaf_03431
  | 32, _, _ => exact leaf_03432
  | 33, _, _ => exact leaf_03433
  | 34, _, _ => exact leaf_03434
  | 35, _, _ => exact leaf_03435
  | 36, _, _ => exact leaf_03436
  | 37, _, _ => exact leaf_03437
  | 38, _, _ => exact leaf_03438
  | 39, _, _ => exact leaf_03439
  | 40, _, _ => exact leaf_03440
  | 41, _, _ => exact leaf_03441
  | 42, _, _ => exact leaf_03442
  | 43, _, _ => exact leaf_03443
  | 44, _, _ => exact leaf_03444
  | 45, _, _ => exact leaf_03445
  | 46, _, _ => exact leaf_03446
  | 47, _, _ => exact leaf_03447
  | 48, _, _ => exact leaf_03448
  | 49, _, _ => exact leaf_03449
  | 50, _, _ => exact leaf_03450
  | 51, _, _ => exact leaf_03451
  | 52, _, _ => exact leaf_03452
  | 53, _, _ => exact leaf_03453
  | 54, _, _ => exact leaf_03454
  | 55, _, _ => exact leaf_03455
  | 56, _, _ => exact leaf_03456
  | 57, _, _ => exact leaf_03457
  | 58, _, _ => exact leaf_03458
  | 59, _, _ => exact leaf_03459
  | 60, _, _ => exact leaf_03460
  | 61, _, _ => exact leaf_03461
  | 62, _, _ => exact leaf_03462
  | 63, _, _ => exact leaf_03463
  | 64, _, _ => exact leaf_03464
  | 65, _, _ => exact leaf_03465
  | 66, _, _ => exact leaf_03466
  | 67, _, _ => exact leaf_03467
  | 68, _, _ => exact leaf_03468
  | 69, _, _ => exact leaf_03469
  | 70, _, _ => exact leaf_03470
  | 71, _, _ => exact leaf_03471
  | 72, _, _ => exact leaf_03472
  | 73, _, _ => exact leaf_03473
  | 74, _, _ => exact leaf_03474
  | 75, _, _ => exact leaf_03475
  | 76, _, _ => exact leaf_03476
  | 77, _, _ => exact leaf_03477
  | 78, _, _ => exact leaf_03478
  | 79, _, _ => exact leaf_03479
  | 80, _, _ => exact leaf_03480
  | 81, _, _ => exact leaf_03481
  | 82, _, _ => exact leaf_03482
  | 83, _, _ => exact leaf_03483
  | 84, _, _ => exact leaf_03484
  | 85, _, _ => exact leaf_03485
  | 86, _, _ => exact leaf_03486
  | 87, _, _ => exact leaf_03487
  | 88, _, _ => exact leaf_03488
  | 89, _, _ => exact leaf_03489
  | 90, _, _ => exact leaf_03490
  | 91, _, _ => exact leaf_03491
  | 92, _, _ => exact leaf_03492
  | 93, _, _ => exact leaf_03493
  | 94, _, _ => exact leaf_03494
  | 95, _, _ => exact leaf_03495
  | 96, _, _ => exact leaf_03496
  | 97, _, _ => exact leaf_03497
  | 98, _, _ => exact leaf_03498
  | 99, _, _ => exact leaf_03499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
