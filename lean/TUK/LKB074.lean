import TUK.Leaf07400
import TUK.Leaf07401
import TUK.Leaf07402
import TUK.Leaf07403
import TUK.Leaf07404
import TUK.Leaf07405
import TUK.Leaf07406
import TUK.Leaf07407
import TUK.Leaf07408
import TUK.Leaf07409
import TUK.Leaf07410
import TUK.Leaf07411
import TUK.Leaf07412
import TUK.Leaf07413
import TUK.Leaf07414
import TUK.Leaf07415
import TUK.Leaf07416
import TUK.Leaf07417
import TUK.Leaf07418
import TUK.Leaf07419
import TUK.Leaf07420
import TUK.Leaf07421
import TUK.Leaf07422
import TUK.Leaf07423
import TUK.Leaf07424
import TUK.Leaf07425
import TUK.Leaf07426
import TUK.Leaf07427
import TUK.Leaf07428
import TUK.Leaf07429
import TUK.Leaf07430
import TUK.Leaf07431
import TUK.Leaf07432
import TUK.Leaf07433
import TUK.Leaf07434
import TUK.Leaf07435
import TUK.Leaf07436
import TUK.Leaf07437
import TUK.Leaf07438
import TUK.Leaf07439
import TUK.Leaf07440
import TUK.Leaf07441
import TUK.Leaf07442
import TUK.Leaf07443
import TUK.Leaf07444
import TUK.Leaf07445
import TUK.Leaf07446
import TUK.Leaf07447
import TUK.Leaf07448
import TUK.Leaf07449
import TUK.Leaf07450
import TUK.Leaf07451
import TUK.Leaf07452
import TUK.Leaf07453
import TUK.Leaf07454
import TUK.Leaf07455
import TUK.Leaf07456
import TUK.Leaf07457
import TUK.Leaf07458
import TUK.Leaf07459
import TUK.Leaf07460
import TUK.Leaf07461
import TUK.Leaf07462
import TUK.Leaf07463
import TUK.Leaf07464
import TUK.Leaf07465
import TUK.Leaf07466
import TUK.Leaf07467
import TUK.Leaf07468
import TUK.Leaf07469
import TUK.Leaf07470
import TUK.Leaf07471
import TUK.Leaf07472
import TUK.Leaf07473
import TUK.Leaf07474
import TUK.Leaf07475
import TUK.Leaf07476
import TUK.Leaf07477
import TUK.Leaf07478
import TUK.Leaf07479
import TUK.Leaf07480
import TUK.Leaf07481
import TUK.Leaf07482
import TUK.Leaf07483
import TUK.Leaf07484
import TUK.Leaf07485
import TUK.Leaf07486
import TUK.Leaf07487
import TUK.Leaf07488
import TUK.Leaf07489
import TUK.Leaf07490
import TUK.Leaf07491
import TUK.Leaf07492
import TUK.Leaf07493
import TUK.Leaf07494
import TUK.Leaf07495
import TUK.Leaf07496
import TUK.Leaf07497
import TUK.Leaf07498
import TUK.Leaf07499

/-! Leaves 7400 .. 7499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_74 : ∀ j < 100, 100 * 74 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 74 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_07400
  | 1, _, _ => exact leaf_07401
  | 2, _, _ => exact leaf_07402
  | 3, _, _ => exact leaf_07403
  | 4, _, _ => exact leaf_07404
  | 5, _, _ => exact leaf_07405
  | 6, _, _ => exact leaf_07406
  | 7, _, _ => exact leaf_07407
  | 8, _, _ => exact leaf_07408
  | 9, _, _ => exact leaf_07409
  | 10, _, _ => exact leaf_07410
  | 11, _, _ => exact leaf_07411
  | 12, _, _ => exact leaf_07412
  | 13, _, _ => exact leaf_07413
  | 14, _, _ => exact leaf_07414
  | 15, _, _ => exact leaf_07415
  | 16, _, _ => exact leaf_07416
  | 17, _, _ => exact leaf_07417
  | 18, _, _ => exact leaf_07418
  | 19, _, _ => exact leaf_07419
  | 20, _, _ => exact leaf_07420
  | 21, _, _ => exact leaf_07421
  | 22, _, _ => exact leaf_07422
  | 23, _, _ => exact leaf_07423
  | 24, _, _ => exact leaf_07424
  | 25, _, _ => exact leaf_07425
  | 26, _, _ => exact leaf_07426
  | 27, _, _ => exact leaf_07427
  | 28, _, _ => exact leaf_07428
  | 29, _, _ => exact leaf_07429
  | 30, _, _ => exact leaf_07430
  | 31, _, _ => exact leaf_07431
  | 32, _, _ => exact leaf_07432
  | 33, _, _ => exact leaf_07433
  | 34, _, _ => exact leaf_07434
  | 35, _, _ => exact leaf_07435
  | 36, _, _ => exact leaf_07436
  | 37, _, _ => exact leaf_07437
  | 38, _, _ => exact leaf_07438
  | 39, _, _ => exact leaf_07439
  | 40, _, _ => exact leaf_07440
  | 41, _, _ => exact leaf_07441
  | 42, _, _ => exact leaf_07442
  | 43, _, _ => exact leaf_07443
  | 44, _, _ => exact leaf_07444
  | 45, _, _ => exact leaf_07445
  | 46, _, _ => exact leaf_07446
  | 47, _, _ => exact leaf_07447
  | 48, _, _ => exact leaf_07448
  | 49, _, _ => exact leaf_07449
  | 50, _, _ => exact leaf_07450
  | 51, _, _ => exact leaf_07451
  | 52, _, _ => exact leaf_07452
  | 53, _, _ => exact leaf_07453
  | 54, _, _ => exact leaf_07454
  | 55, _, _ => exact leaf_07455
  | 56, _, _ => exact leaf_07456
  | 57, _, _ => exact leaf_07457
  | 58, _, _ => exact leaf_07458
  | 59, _, _ => exact leaf_07459
  | 60, _, _ => exact leaf_07460
  | 61, _, _ => exact leaf_07461
  | 62, _, _ => exact leaf_07462
  | 63, _, _ => exact leaf_07463
  | 64, _, _ => exact leaf_07464
  | 65, _, _ => exact leaf_07465
  | 66, _, _ => exact leaf_07466
  | 67, _, _ => exact leaf_07467
  | 68, _, _ => exact leaf_07468
  | 69, _, _ => exact leaf_07469
  | 70, _, _ => exact leaf_07470
  | 71, _, _ => exact leaf_07471
  | 72, _, _ => exact leaf_07472
  | 73, _, _ => exact leaf_07473
  | 74, _, _ => exact leaf_07474
  | 75, _, _ => exact leaf_07475
  | 76, _, _ => exact leaf_07476
  | 77, _, _ => exact leaf_07477
  | 78, _, _ => exact leaf_07478
  | 79, _, _ => exact leaf_07479
  | 80, _, _ => exact leaf_07480
  | 81, _, _ => exact leaf_07481
  | 82, _, _ => exact leaf_07482
  | 83, _, _ => exact leaf_07483
  | 84, _, _ => exact leaf_07484
  | 85, _, _ => exact leaf_07485
  | 86, _, _ => exact leaf_07486
  | 87, _, _ => exact leaf_07487
  | 88, _, _ => exact leaf_07488
  | 89, _, _ => exact leaf_07489
  | 90, _, _ => exact leaf_07490
  | 91, _, _ => exact leaf_07491
  | 92, _, _ => exact leaf_07492
  | 93, _, _ => exact leaf_07493
  | 94, _, _ => exact leaf_07494
  | 95, _, _ => exact leaf_07495
  | 96, _, _ => exact leaf_07496
  | 97, _, _ => exact leaf_07497
  | 98, _, _ => exact leaf_07498
  | 99, _, _ => exact leaf_07499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
