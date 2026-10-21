import TUK.Leaf06400
import TUK.Leaf06401
import TUK.Leaf06402
import TUK.Leaf06403
import TUK.Leaf06404
import TUK.Leaf06405
import TUK.Leaf06406
import TUK.Leaf06407
import TUK.Leaf06408
import TUK.Leaf06409
import TUK.Leaf06410
import TUK.Leaf06411
import TUK.Leaf06412
import TUK.Leaf06413
import TUK.Leaf06414
import TUK.Leaf06415
import TUK.Leaf06416
import TUK.Leaf06417
import TUK.Leaf06418
import TUK.Leaf06419
import TUK.Leaf06420
import TUK.Leaf06421
import TUK.Leaf06422
import TUK.Leaf06423
import TUK.Leaf06424
import TUK.Leaf06425
import TUK.Leaf06426
import TUK.Leaf06427
import TUK.Leaf06428
import TUK.Leaf06429
import TUK.Leaf06430
import TUK.Leaf06431
import TUK.Leaf06432
import TUK.Leaf06433
import TUK.Leaf06434
import TUK.Leaf06435
import TUK.Leaf06436
import TUK.Leaf06437
import TUK.Leaf06438
import TUK.Leaf06439
import TUK.Leaf06440
import TUK.Leaf06441
import TUK.Leaf06442
import TUK.Leaf06443
import TUK.Leaf06444
import TUK.Leaf06445
import TUK.Leaf06446
import TUK.Leaf06447
import TUK.Leaf06448
import TUK.Leaf06449
import TUK.Leaf06450
import TUK.Leaf06451
import TUK.Leaf06452
import TUK.Leaf06453
import TUK.Leaf06454
import TUK.Leaf06455
import TUK.Leaf06456
import TUK.Leaf06457
import TUK.Leaf06458
import TUK.Leaf06459
import TUK.Leaf06460
import TUK.Leaf06461
import TUK.Leaf06462
import TUK.Leaf06463
import TUK.Leaf06464
import TUK.Leaf06465
import TUK.Leaf06466
import TUK.Leaf06467
import TUK.Leaf06468
import TUK.Leaf06469
import TUK.Leaf06470
import TUK.Leaf06471
import TUK.Leaf06472
import TUK.Leaf06473
import TUK.Leaf06474
import TUK.Leaf06475
import TUK.Leaf06476
import TUK.Leaf06477
import TUK.Leaf06478
import TUK.Leaf06479
import TUK.Leaf06480
import TUK.Leaf06481
import TUK.Leaf06482
import TUK.Leaf06483
import TUK.Leaf06484
import TUK.Leaf06485
import TUK.Leaf06486
import TUK.Leaf06487
import TUK.Leaf06488
import TUK.Leaf06489
import TUK.Leaf06490
import TUK.Leaf06491
import TUK.Leaf06492
import TUK.Leaf06493
import TUK.Leaf06494
import TUK.Leaf06495
import TUK.Leaf06496
import TUK.Leaf06497
import TUK.Leaf06498
import TUK.Leaf06499

/-! Leaves 6400 .. 6499 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_64 : ∀ j < 100, 100 * 64 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 64 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_06400
  | 1, _, _ => exact leaf_06401
  | 2, _, _ => exact leaf_06402
  | 3, _, _ => exact leaf_06403
  | 4, _, _ => exact leaf_06404
  | 5, _, _ => exact leaf_06405
  | 6, _, _ => exact leaf_06406
  | 7, _, _ => exact leaf_06407
  | 8, _, _ => exact leaf_06408
  | 9, _, _ => exact leaf_06409
  | 10, _, _ => exact leaf_06410
  | 11, _, _ => exact leaf_06411
  | 12, _, _ => exact leaf_06412
  | 13, _, _ => exact leaf_06413
  | 14, _, _ => exact leaf_06414
  | 15, _, _ => exact leaf_06415
  | 16, _, _ => exact leaf_06416
  | 17, _, _ => exact leaf_06417
  | 18, _, _ => exact leaf_06418
  | 19, _, _ => exact leaf_06419
  | 20, _, _ => exact leaf_06420
  | 21, _, _ => exact leaf_06421
  | 22, _, _ => exact leaf_06422
  | 23, _, _ => exact leaf_06423
  | 24, _, _ => exact leaf_06424
  | 25, _, _ => exact leaf_06425
  | 26, _, _ => exact leaf_06426
  | 27, _, _ => exact leaf_06427
  | 28, _, _ => exact leaf_06428
  | 29, _, _ => exact leaf_06429
  | 30, _, _ => exact leaf_06430
  | 31, _, _ => exact leaf_06431
  | 32, _, _ => exact leaf_06432
  | 33, _, _ => exact leaf_06433
  | 34, _, _ => exact leaf_06434
  | 35, _, _ => exact leaf_06435
  | 36, _, _ => exact leaf_06436
  | 37, _, _ => exact leaf_06437
  | 38, _, _ => exact leaf_06438
  | 39, _, _ => exact leaf_06439
  | 40, _, _ => exact leaf_06440
  | 41, _, _ => exact leaf_06441
  | 42, _, _ => exact leaf_06442
  | 43, _, _ => exact leaf_06443
  | 44, _, _ => exact leaf_06444
  | 45, _, _ => exact leaf_06445
  | 46, _, _ => exact leaf_06446
  | 47, _, _ => exact leaf_06447
  | 48, _, _ => exact leaf_06448
  | 49, _, _ => exact leaf_06449
  | 50, _, _ => exact leaf_06450
  | 51, _, _ => exact leaf_06451
  | 52, _, _ => exact leaf_06452
  | 53, _, _ => exact leaf_06453
  | 54, _, _ => exact leaf_06454
  | 55, _, _ => exact leaf_06455
  | 56, _, _ => exact leaf_06456
  | 57, _, _ => exact leaf_06457
  | 58, _, _ => exact leaf_06458
  | 59, _, _ => exact leaf_06459
  | 60, _, _ => exact leaf_06460
  | 61, _, _ => exact leaf_06461
  | 62, _, _ => exact leaf_06462
  | 63, _, _ => exact leaf_06463
  | 64, _, _ => exact leaf_06464
  | 65, _, _ => exact leaf_06465
  | 66, _, _ => exact leaf_06466
  | 67, _, _ => exact leaf_06467
  | 68, _, _ => exact leaf_06468
  | 69, _, _ => exact leaf_06469
  | 70, _, _ => exact leaf_06470
  | 71, _, _ => exact leaf_06471
  | 72, _, _ => exact leaf_06472
  | 73, _, _ => exact leaf_06473
  | 74, _, _ => exact leaf_06474
  | 75, _, _ => exact leaf_06475
  | 76, _, _ => exact leaf_06476
  | 77, _, _ => exact leaf_06477
  | 78, _, _ => exact leaf_06478
  | 79, _, _ => exact leaf_06479
  | 80, _, _ => exact leaf_06480
  | 81, _, _ => exact leaf_06481
  | 82, _, _ => exact leaf_06482
  | 83, _, _ => exact leaf_06483
  | 84, _, _ => exact leaf_06484
  | 85, _, _ => exact leaf_06485
  | 86, _, _ => exact leaf_06486
  | 87, _, _ => exact leaf_06487
  | 88, _, _ => exact leaf_06488
  | 89, _, _ => exact leaf_06489
  | 90, _, _ => exact leaf_06490
  | 91, _, _ => exact leaf_06491
  | 92, _, _ => exact leaf_06492
  | 93, _, _ => exact leaf_06493
  | 94, _, _ => exact leaf_06494
  | 95, _, _ => exact leaf_06495
  | 96, _, _ => exact leaf_06496
  | 97, _, _ => exact leaf_06497
  | 98, _, _ => exact leaf_06498
  | 99, _, _ => exact leaf_06499
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
