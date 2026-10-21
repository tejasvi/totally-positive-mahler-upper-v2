import TUK.Leaf04400
import TUK.Leaf04401
import TUK.Leaf04402
import TUK.Leaf04403
import TUK.Leaf04404
import TUK.Leaf04405
import TUK.Leaf04406
import TUK.Leaf04407
import TUK.Leaf04408
import TUK.Leaf04409
import TUK.Leaf04410
import TUK.Leaf04411
import TUK.Leaf04412
import TUK.Leaf04413
import TUK.Leaf04414
import TUK.Leaf04415
import TUK.Leaf04416
import TUK.Leaf04417
import TUK.Leaf04418
import TUK.Leaf04419
import TUK.Leaf04420
import TUK.Leaf04421
import TUK.Leaf04422
import TUK.Leaf04423
import TUK.Leaf04424
import TUK.Leaf04425
import TUK.Leaf04426
import TUK.Leaf04427
import TUK.Leaf04428
import TUK.Leaf04429
import TUK.Leaf04430
import TUK.Leaf04431
import TUK.Leaf04432
import TUK.Leaf04433
import TUK.Leaf04434
import TUK.Leaf04435
import TUK.Leaf04436
import TUK.Leaf04437
import TUK.Leaf04438
import TUK.Leaf04439
import TUK.Leaf04440
import TUK.Leaf04441
import TUK.Leaf04442
import TUK.Leaf04443
import TUK.Leaf04444
import TUK.Leaf04445
import TUK.Leaf04446
import TUK.Leaf04447
import TUK.Leaf04448
import TUK.Leaf04449
import TUK.Leaf04450
import TUK.Leaf04451
import TUK.Leaf04452
import TUK.Leaf04453
import TUK.Leaf04454
import TUK.Leaf04455
import TUK.Leaf04456
import TUK.Leaf04457
import TUK.Leaf04458
import TUK.Leaf04459
import TUK.Leaf04460
import TUK.Leaf04461
import TUK.Leaf04462
import TUK.Leaf04463
import TUK.Leaf04464
import TUK.Leaf04465
import TUK.Leaf04466
import TUK.Leaf04467
import TUK.Leaf04468
import TUK.Leaf04469
import TUK.Leaf04470
import TUK.Leaf04471
import TUK.Leaf04472
import TUK.Leaf04473
import TUK.Leaf04474
import TUK.Leaf04475
import TUK.Leaf04476
import TUK.Leaf04477
import TUK.Leaf04478
import TUK.Leaf04479
import TUK.Leaf04480
import TUK.Leaf04481
import TUK.Leaf04482
import TUK.Leaf04483
import TUK.Leaf04484
import TUK.Leaf04485
import TUK.Leaf04486
import TUK.Leaf04487
import TUK.Leaf04488
import TUK.Leaf04489
import TUK.Leaf04490
import TUK.Leaf04491
import TUK.Leaf04492
import TUK.Leaf04493
import TUK.Leaf04494
import TUK.Leaf04495
import TUK.Leaf04496
import TUK.Leaf04497
import TUK.Leaf04498
import TUK.Leaf04499

/-! Leaves 4400 .. 4499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_44 : ∀ j < 100, 100 * 44 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 44 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_04400
  | 1, _, _ => exact leaf_04401
  | 2, _, _ => exact leaf_04402
  | 3, _, _ => exact leaf_04403
  | 4, _, _ => exact leaf_04404
  | 5, _, _ => exact leaf_04405
  | 6, _, _ => exact leaf_04406
  | 7, _, _ => exact leaf_04407
  | 8, _, _ => exact leaf_04408
  | 9, _, _ => exact leaf_04409
  | 10, _, _ => exact leaf_04410
  | 11, _, _ => exact leaf_04411
  | 12, _, _ => exact leaf_04412
  | 13, _, _ => exact leaf_04413
  | 14, _, _ => exact leaf_04414
  | 15, _, _ => exact leaf_04415
  | 16, _, _ => exact leaf_04416
  | 17, _, _ => exact leaf_04417
  | 18, _, _ => exact leaf_04418
  | 19, _, _ => exact leaf_04419
  | 20, _, _ => exact leaf_04420
  | 21, _, _ => exact leaf_04421
  | 22, _, _ => exact leaf_04422
  | 23, _, _ => exact leaf_04423
  | 24, _, _ => exact leaf_04424
  | 25, _, _ => exact leaf_04425
  | 26, _, _ => exact leaf_04426
  | 27, _, _ => exact leaf_04427
  | 28, _, _ => exact leaf_04428
  | 29, _, _ => exact leaf_04429
  | 30, _, _ => exact leaf_04430
  | 31, _, _ => exact leaf_04431
  | 32, _, _ => exact leaf_04432
  | 33, _, _ => exact leaf_04433
  | 34, _, _ => exact leaf_04434
  | 35, _, _ => exact leaf_04435
  | 36, _, _ => exact leaf_04436
  | 37, _, _ => exact leaf_04437
  | 38, _, _ => exact leaf_04438
  | 39, _, _ => exact leaf_04439
  | 40, _, _ => exact leaf_04440
  | 41, _, _ => exact leaf_04441
  | 42, _, _ => exact leaf_04442
  | 43, _, _ => exact leaf_04443
  | 44, _, _ => exact leaf_04444
  | 45, _, _ => exact leaf_04445
  | 46, _, _ => exact leaf_04446
  | 47, _, _ => exact leaf_04447
  | 48, _, _ => exact leaf_04448
  | 49, _, _ => exact leaf_04449
  | 50, _, _ => exact leaf_04450
  | 51, _, _ => exact leaf_04451
  | 52, _, _ => exact leaf_04452
  | 53, _, _ => exact leaf_04453
  | 54, _, _ => exact leaf_04454
  | 55, _, _ => exact leaf_04455
  | 56, _, _ => exact leaf_04456
  | 57, _, _ => exact leaf_04457
  | 58, _, _ => exact leaf_04458
  | 59, _, _ => exact leaf_04459
  | 60, _, _ => exact leaf_04460
  | 61, _, _ => exact leaf_04461
  | 62, _, _ => exact leaf_04462
  | 63, _, _ => exact leaf_04463
  | 64, _, _ => exact leaf_04464
  | 65, _, _ => exact leaf_04465
  | 66, _, _ => exact leaf_04466
  | 67, _, _ => exact leaf_04467
  | 68, _, _ => exact leaf_04468
  | 69, _, _ => exact leaf_04469
  | 70, _, _ => exact leaf_04470
  | 71, _, _ => exact leaf_04471
  | 72, _, _ => exact leaf_04472
  | 73, _, _ => exact leaf_04473
  | 74, _, _ => exact leaf_04474
  | 75, _, _ => exact leaf_04475
  | 76, _, _ => exact leaf_04476
  | 77, _, _ => exact leaf_04477
  | 78, _, _ => exact leaf_04478
  | 79, _, _ => exact leaf_04479
  | 80, _, _ => exact leaf_04480
  | 81, _, _ => exact leaf_04481
  | 82, _, _ => exact leaf_04482
  | 83, _, _ => exact leaf_04483
  | 84, _, _ => exact leaf_04484
  | 85, _, _ => exact leaf_04485
  | 86, _, _ => exact leaf_04486
  | 87, _, _ => exact leaf_04487
  | 88, _, _ => exact leaf_04488
  | 89, _, _ => exact leaf_04489
  | 90, _, _ => exact leaf_04490
  | 91, _, _ => exact leaf_04491
  | 92, _, _ => exact leaf_04492
  | 93, _, _ => exact leaf_04493
  | 94, _, _ => exact leaf_04494
  | 95, _, _ => exact leaf_04495
  | 96, _, _ => exact leaf_04496
  | 97, _, _ => exact leaf_04497
  | 98, _, _ => exact leaf_04498
  | 99, _, _ => exact leaf_04499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
