import TUK.Leaf05400
import TUK.Leaf05401
import TUK.Leaf05402
import TUK.Leaf05403
import TUK.Leaf05404
import TUK.Leaf05405
import TUK.Leaf05406
import TUK.Leaf05407
import TUK.Leaf05408
import TUK.Leaf05409
import TUK.Leaf05410
import TUK.Leaf05411
import TUK.Leaf05412
import TUK.Leaf05413
import TUK.Leaf05414
import TUK.Leaf05415
import TUK.Leaf05416
import TUK.Leaf05417
import TUK.Leaf05418
import TUK.Leaf05419
import TUK.Leaf05420
import TUK.Leaf05421
import TUK.Leaf05422
import TUK.Leaf05423
import TUK.Leaf05424
import TUK.Leaf05425
import TUK.Leaf05426
import TUK.Leaf05427
import TUK.Leaf05428
import TUK.Leaf05429
import TUK.Leaf05430
import TUK.Leaf05431
import TUK.Leaf05432
import TUK.Leaf05433
import TUK.Leaf05434
import TUK.Leaf05435
import TUK.Leaf05436
import TUK.Leaf05437
import TUK.Leaf05438
import TUK.Leaf05439
import TUK.Leaf05440
import TUK.Leaf05441
import TUK.Leaf05442
import TUK.Leaf05443
import TUK.Leaf05444
import TUK.Leaf05445
import TUK.Leaf05446
import TUK.Leaf05447
import TUK.Leaf05448
import TUK.Leaf05449
import TUK.Leaf05450
import TUK.Leaf05451
import TUK.Leaf05452
import TUK.Leaf05453
import TUK.Leaf05454
import TUK.Leaf05455
import TUK.Leaf05456
import TUK.Leaf05457
import TUK.Leaf05458
import TUK.Leaf05459
import TUK.Leaf05460
import TUK.Leaf05461
import TUK.Leaf05462
import TUK.Leaf05463
import TUK.Leaf05464
import TUK.Leaf05465
import TUK.Leaf05466
import TUK.Leaf05467
import TUK.Leaf05468
import TUK.Leaf05469
import TUK.Leaf05470
import TUK.Leaf05471
import TUK.Leaf05472
import TUK.Leaf05473
import TUK.Leaf05474
import TUK.Leaf05475
import TUK.Leaf05476
import TUK.Leaf05477
import TUK.Leaf05478
import TUK.Leaf05479
import TUK.Leaf05480
import TUK.Leaf05481
import TUK.Leaf05482
import TUK.Leaf05483
import TUK.Leaf05484
import TUK.Leaf05485
import TUK.Leaf05486
import TUK.Leaf05487
import TUK.Leaf05488
import TUK.Leaf05489
import TUK.Leaf05490
import TUK.Leaf05491
import TUK.Leaf05492
import TUK.Leaf05493
import TUK.Leaf05494
import TUK.Leaf05495
import TUK.Leaf05496
import TUK.Leaf05497
import TUK.Leaf05498
import TUK.Leaf05499

/-! Leaves 5400 .. 5499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_54 : ∀ j < 100, 100 * 54 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 54 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_05400
  | 1, _, _ => exact leaf_05401
  | 2, _, _ => exact leaf_05402
  | 3, _, _ => exact leaf_05403
  | 4, _, _ => exact leaf_05404
  | 5, _, _ => exact leaf_05405
  | 6, _, _ => exact leaf_05406
  | 7, _, _ => exact leaf_05407
  | 8, _, _ => exact leaf_05408
  | 9, _, _ => exact leaf_05409
  | 10, _, _ => exact leaf_05410
  | 11, _, _ => exact leaf_05411
  | 12, _, _ => exact leaf_05412
  | 13, _, _ => exact leaf_05413
  | 14, _, _ => exact leaf_05414
  | 15, _, _ => exact leaf_05415
  | 16, _, _ => exact leaf_05416
  | 17, _, _ => exact leaf_05417
  | 18, _, _ => exact leaf_05418
  | 19, _, _ => exact leaf_05419
  | 20, _, _ => exact leaf_05420
  | 21, _, _ => exact leaf_05421
  | 22, _, _ => exact leaf_05422
  | 23, _, _ => exact leaf_05423
  | 24, _, _ => exact leaf_05424
  | 25, _, _ => exact leaf_05425
  | 26, _, _ => exact leaf_05426
  | 27, _, _ => exact leaf_05427
  | 28, _, _ => exact leaf_05428
  | 29, _, _ => exact leaf_05429
  | 30, _, _ => exact leaf_05430
  | 31, _, _ => exact leaf_05431
  | 32, _, _ => exact leaf_05432
  | 33, _, _ => exact leaf_05433
  | 34, _, _ => exact leaf_05434
  | 35, _, _ => exact leaf_05435
  | 36, _, _ => exact leaf_05436
  | 37, _, _ => exact leaf_05437
  | 38, _, _ => exact leaf_05438
  | 39, _, _ => exact leaf_05439
  | 40, _, _ => exact leaf_05440
  | 41, _, _ => exact leaf_05441
  | 42, _, _ => exact leaf_05442
  | 43, _, _ => exact leaf_05443
  | 44, _, _ => exact leaf_05444
  | 45, _, _ => exact leaf_05445
  | 46, _, _ => exact leaf_05446
  | 47, _, _ => exact leaf_05447
  | 48, _, _ => exact leaf_05448
  | 49, _, _ => exact leaf_05449
  | 50, _, _ => exact leaf_05450
  | 51, _, _ => exact leaf_05451
  | 52, _, _ => exact leaf_05452
  | 53, _, _ => exact leaf_05453
  | 54, _, _ => exact leaf_05454
  | 55, _, _ => exact leaf_05455
  | 56, _, _ => exact leaf_05456
  | 57, _, _ => exact leaf_05457
  | 58, _, _ => exact leaf_05458
  | 59, _, _ => exact leaf_05459
  | 60, _, _ => exact leaf_05460
  | 61, _, _ => exact leaf_05461
  | 62, _, _ => exact leaf_05462
  | 63, _, _ => exact leaf_05463
  | 64, _, _ => exact leaf_05464
  | 65, _, _ => exact leaf_05465
  | 66, _, _ => exact leaf_05466
  | 67, _, _ => exact leaf_05467
  | 68, _, _ => exact leaf_05468
  | 69, _, _ => exact leaf_05469
  | 70, _, _ => exact leaf_05470
  | 71, _, _ => exact leaf_05471
  | 72, _, _ => exact leaf_05472
  | 73, _, _ => exact leaf_05473
  | 74, _, _ => exact leaf_05474
  | 75, _, _ => exact leaf_05475
  | 76, _, _ => exact leaf_05476
  | 77, _, _ => exact leaf_05477
  | 78, _, _ => exact leaf_05478
  | 79, _, _ => exact leaf_05479
  | 80, _, _ => exact leaf_05480
  | 81, _, _ => exact leaf_05481
  | 82, _, _ => exact leaf_05482
  | 83, _, _ => exact leaf_05483
  | 84, _, _ => exact leaf_05484
  | 85, _, _ => exact leaf_05485
  | 86, _, _ => exact leaf_05486
  | 87, _, _ => exact leaf_05487
  | 88, _, _ => exact leaf_05488
  | 89, _, _ => exact leaf_05489
  | 90, _, _ => exact leaf_05490
  | 91, _, _ => exact leaf_05491
  | 92, _, _ => exact leaf_05492
  | 93, _, _ => exact leaf_05493
  | 94, _, _ => exact leaf_05494
  | 95, _, _ => exact leaf_05495
  | 96, _, _ => exact leaf_05496
  | 97, _, _ => exact leaf_05497
  | 98, _, _ => exact leaf_05498
  | 99, _, _ => exact leaf_05499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
