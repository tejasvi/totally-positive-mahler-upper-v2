import TUK.Leaf00400
import TUK.Leaf00401
import TUK.Leaf00402
import TUK.Leaf00403
import TUK.Leaf00404
import TUK.Leaf00405
import TUK.Leaf00406
import TUK.Leaf00407
import TUK.Leaf00408
import TUK.Leaf00409
import TUK.Leaf00410
import TUK.Leaf00411
import TUK.Leaf00412
import TUK.Leaf00413
import TUK.Leaf00414
import TUK.Leaf00415
import TUK.Leaf00416
import TUK.Leaf00417
import TUK.Leaf00418
import TUK.Leaf00419
import TUK.Leaf00420
import TUK.Leaf00421
import TUK.Leaf00422
import TUK.Leaf00423
import TUK.Leaf00424
import TUK.Leaf00425
import TUK.Leaf00426
import TUK.Leaf00427
import TUK.Leaf00428
import TUK.Leaf00429
import TUK.Leaf00430
import TUK.Leaf00431
import TUK.Leaf00432
import TUK.Leaf00433
import TUK.Leaf00434
import TUK.Leaf00435
import TUK.Leaf00436
import TUK.Leaf00437
import TUK.Leaf00438
import TUK.Leaf00439
import TUK.Leaf00440
import TUK.Leaf00441
import TUK.Leaf00442
import TUK.Leaf00443
import TUK.Leaf00444
import TUK.Leaf00445
import TUK.Leaf00446
import TUK.Leaf00447
import TUK.Leaf00448
import TUK.Leaf00449
import TUK.Leaf00450
import TUK.Leaf00451
import TUK.Leaf00452
import TUK.Leaf00453
import TUK.Leaf00454
import TUK.Leaf00455
import TUK.Leaf00456
import TUK.Leaf00457
import TUK.Leaf00458
import TUK.Leaf00459
import TUK.Leaf00460
import TUK.Leaf00461
import TUK.Leaf00462
import TUK.Leaf00463
import TUK.Leaf00464
import TUK.Leaf00465
import TUK.Leaf00466
import TUK.Leaf00467
import TUK.Leaf00468
import TUK.Leaf00469
import TUK.Leaf00470
import TUK.Leaf00471
import TUK.Leaf00472
import TUK.Leaf00473
import TUK.Leaf00474
import TUK.Leaf00475
import TUK.Leaf00476
import TUK.Leaf00477
import TUK.Leaf00478
import TUK.Leaf00479
import TUK.Leaf00480
import TUK.Leaf00481
import TUK.Leaf00482
import TUK.Leaf00483
import TUK.Leaf00484
import TUK.Leaf00485
import TUK.Leaf00486
import TUK.Leaf00487
import TUK.Leaf00488
import TUK.Leaf00489
import TUK.Leaf00490
import TUK.Leaf00491
import TUK.Leaf00492
import TUK.Leaf00493
import TUK.Leaf00494
import TUK.Leaf00495
import TUK.Leaf00496
import TUK.Leaf00497
import TUK.Leaf00498
import TUK.Leaf00499

/-! Leaves 400 .. 499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_4 : ∀ j < 100, 100 * 4 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 4 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_00400
  | 1, _, _ => exact leaf_00401
  | 2, _, _ => exact leaf_00402
  | 3, _, _ => exact leaf_00403
  | 4, _, _ => exact leaf_00404
  | 5, _, _ => exact leaf_00405
  | 6, _, _ => exact leaf_00406
  | 7, _, _ => exact leaf_00407
  | 8, _, _ => exact leaf_00408
  | 9, _, _ => exact leaf_00409
  | 10, _, _ => exact leaf_00410
  | 11, _, _ => exact leaf_00411
  | 12, _, _ => exact leaf_00412
  | 13, _, _ => exact leaf_00413
  | 14, _, _ => exact leaf_00414
  | 15, _, _ => exact leaf_00415
  | 16, _, _ => exact leaf_00416
  | 17, _, _ => exact leaf_00417
  | 18, _, _ => exact leaf_00418
  | 19, _, _ => exact leaf_00419
  | 20, _, _ => exact leaf_00420
  | 21, _, _ => exact leaf_00421
  | 22, _, _ => exact leaf_00422
  | 23, _, _ => exact leaf_00423
  | 24, _, _ => exact leaf_00424
  | 25, _, _ => exact leaf_00425
  | 26, _, _ => exact leaf_00426
  | 27, _, _ => exact leaf_00427
  | 28, _, _ => exact leaf_00428
  | 29, _, _ => exact leaf_00429
  | 30, _, _ => exact leaf_00430
  | 31, _, _ => exact leaf_00431
  | 32, _, _ => exact leaf_00432
  | 33, _, _ => exact leaf_00433
  | 34, _, _ => exact leaf_00434
  | 35, _, _ => exact leaf_00435
  | 36, _, _ => exact leaf_00436
  | 37, _, _ => exact leaf_00437
  | 38, _, _ => exact leaf_00438
  | 39, _, _ => exact leaf_00439
  | 40, _, _ => exact leaf_00440
  | 41, _, _ => exact leaf_00441
  | 42, _, _ => exact leaf_00442
  | 43, _, _ => exact leaf_00443
  | 44, _, _ => exact leaf_00444
  | 45, _, _ => exact leaf_00445
  | 46, _, _ => exact leaf_00446
  | 47, _, _ => exact leaf_00447
  | 48, _, _ => exact leaf_00448
  | 49, _, _ => exact leaf_00449
  | 50, _, _ => exact leaf_00450
  | 51, _, _ => exact leaf_00451
  | 52, _, _ => exact leaf_00452
  | 53, _, _ => exact leaf_00453
  | 54, _, _ => exact leaf_00454
  | 55, _, _ => exact leaf_00455
  | 56, _, _ => exact leaf_00456
  | 57, _, _ => exact leaf_00457
  | 58, _, _ => exact leaf_00458
  | 59, _, _ => exact leaf_00459
  | 60, _, _ => exact leaf_00460
  | 61, _, _ => exact leaf_00461
  | 62, _, _ => exact leaf_00462
  | 63, _, _ => exact leaf_00463
  | 64, _, _ => exact leaf_00464
  | 65, _, _ => exact leaf_00465
  | 66, _, _ => exact leaf_00466
  | 67, _, _ => exact leaf_00467
  | 68, _, _ => exact leaf_00468
  | 69, _, _ => exact leaf_00469
  | 70, _, _ => exact leaf_00470
  | 71, _, _ => exact leaf_00471
  | 72, _, _ => exact leaf_00472
  | 73, _, _ => exact leaf_00473
  | 74, _, _ => exact leaf_00474
  | 75, _, _ => exact leaf_00475
  | 76, _, _ => exact leaf_00476
  | 77, _, _ => exact leaf_00477
  | 78, _, _ => exact leaf_00478
  | 79, _, _ => exact leaf_00479
  | 80, _, _ => exact leaf_00480
  | 81, _, _ => exact leaf_00481
  | 82, _, _ => exact leaf_00482
  | 83, _, _ => exact leaf_00483
  | 84, _, _ => exact leaf_00484
  | 85, _, _ => exact leaf_00485
  | 86, _, _ => exact leaf_00486
  | 87, _, _ => exact leaf_00487
  | 88, _, _ => exact leaf_00488
  | 89, _, _ => exact leaf_00489
  | 90, _, _ => exact leaf_00490
  | 91, _, _ => exact leaf_00491
  | 92, _, _ => exact leaf_00492
  | 93, _, _ => exact leaf_00493
  | 94, _, _ => exact leaf_00494
  | 95, _, _ => exact leaf_00495
  | 96, _, _ => exact leaf_00496
  | 97, _, _ => exact leaf_00497
  | 98, _, _ => exact leaf_00498
  | 99, _, _ => exact leaf_00499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
