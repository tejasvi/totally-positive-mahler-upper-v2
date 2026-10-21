import TUK.Leaf04300
import TUK.Leaf04301
import TUK.Leaf04302
import TUK.Leaf04303
import TUK.Leaf04304
import TUK.Leaf04305
import TUK.Leaf04306
import TUK.Leaf04307
import TUK.Leaf04308
import TUK.Leaf04309
import TUK.Leaf04310
import TUK.Leaf04311
import TUK.Leaf04312
import TUK.Leaf04313
import TUK.Leaf04314
import TUK.Leaf04315
import TUK.Leaf04316
import TUK.Leaf04317
import TUK.Leaf04318
import TUK.Leaf04319
import TUK.Leaf04320
import TUK.Leaf04321
import TUK.Leaf04322
import TUK.Leaf04323
import TUK.Leaf04324
import TUK.Leaf04325
import TUK.Leaf04326
import TUK.Leaf04327
import TUK.Leaf04328
import TUK.Leaf04329
import TUK.Leaf04330
import TUK.Leaf04331
import TUK.Leaf04332
import TUK.Leaf04333
import TUK.Leaf04334
import TUK.Leaf04335
import TUK.Leaf04336
import TUK.Leaf04337
import TUK.Leaf04338
import TUK.Leaf04339
import TUK.Leaf04340
import TUK.Leaf04341
import TUK.Leaf04342
import TUK.Leaf04343
import TUK.Leaf04344
import TUK.Leaf04345
import TUK.Leaf04346
import TUK.Leaf04347
import TUK.Leaf04348
import TUK.Leaf04349
import TUK.Leaf04350
import TUK.Leaf04351
import TUK.Leaf04352
import TUK.Leaf04353
import TUK.Leaf04354
import TUK.Leaf04355
import TUK.Leaf04356
import TUK.Leaf04357
import TUK.Leaf04358
import TUK.Leaf04359
import TUK.Leaf04360
import TUK.Leaf04361
import TUK.Leaf04362
import TUK.Leaf04363
import TUK.Leaf04364
import TUK.Leaf04365
import TUK.Leaf04366
import TUK.Leaf04367
import TUK.Leaf04368
import TUK.Leaf04369
import TUK.Leaf04370
import TUK.Leaf04371
import TUK.Leaf04372
import TUK.Leaf04373
import TUK.Leaf04374
import TUK.Leaf04375
import TUK.Leaf04376
import TUK.Leaf04377
import TUK.Leaf04378
import TUK.Leaf04379
import TUK.Leaf04380
import TUK.Leaf04381
import TUK.Leaf04382
import TUK.Leaf04383
import TUK.Leaf04384
import TUK.Leaf04385
import TUK.Leaf04386
import TUK.Leaf04387
import TUK.Leaf04388
import TUK.Leaf04389
import TUK.Leaf04390
import TUK.Leaf04391
import TUK.Leaf04392
import TUK.Leaf04393
import TUK.Leaf04394
import TUK.Leaf04395
import TUK.Leaf04396
import TUK.Leaf04397
import TUK.Leaf04398
import TUK.Leaf04399

/-! Leaves 4300 .. 4399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_43 : ∀ j < 100, 100 * 43 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 43 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_04300
  | 1, _, _ => exact leaf_04301
  | 2, _, _ => exact leaf_04302
  | 3, _, _ => exact leaf_04303
  | 4, _, _ => exact leaf_04304
  | 5, _, _ => exact leaf_04305
  | 6, _, _ => exact leaf_04306
  | 7, _, _ => exact leaf_04307
  | 8, _, _ => exact leaf_04308
  | 9, _, _ => exact leaf_04309
  | 10, _, _ => exact leaf_04310
  | 11, _, _ => exact leaf_04311
  | 12, _, _ => exact leaf_04312
  | 13, _, _ => exact leaf_04313
  | 14, _, _ => exact leaf_04314
  | 15, _, _ => exact leaf_04315
  | 16, _, _ => exact leaf_04316
  | 17, _, _ => exact leaf_04317
  | 18, _, _ => exact leaf_04318
  | 19, _, _ => exact leaf_04319
  | 20, _, _ => exact leaf_04320
  | 21, _, _ => exact leaf_04321
  | 22, _, _ => exact leaf_04322
  | 23, _, _ => exact leaf_04323
  | 24, _, _ => exact leaf_04324
  | 25, _, _ => exact leaf_04325
  | 26, _, _ => exact leaf_04326
  | 27, _, _ => exact leaf_04327
  | 28, _, _ => exact leaf_04328
  | 29, _, _ => exact leaf_04329
  | 30, _, _ => exact leaf_04330
  | 31, _, _ => exact leaf_04331
  | 32, _, _ => exact leaf_04332
  | 33, _, _ => exact leaf_04333
  | 34, _, _ => exact leaf_04334
  | 35, _, _ => exact leaf_04335
  | 36, _, _ => exact leaf_04336
  | 37, _, _ => exact leaf_04337
  | 38, _, _ => exact leaf_04338
  | 39, _, _ => exact leaf_04339
  | 40, _, _ => exact leaf_04340
  | 41, _, _ => exact leaf_04341
  | 42, _, _ => exact leaf_04342
  | 43, _, _ => exact leaf_04343
  | 44, _, _ => exact leaf_04344
  | 45, _, _ => exact leaf_04345
  | 46, _, _ => exact leaf_04346
  | 47, _, _ => exact leaf_04347
  | 48, _, _ => exact leaf_04348
  | 49, _, _ => exact leaf_04349
  | 50, _, _ => exact leaf_04350
  | 51, _, _ => exact leaf_04351
  | 52, _, _ => exact leaf_04352
  | 53, _, _ => exact leaf_04353
  | 54, _, _ => exact leaf_04354
  | 55, _, _ => exact leaf_04355
  | 56, _, _ => exact leaf_04356
  | 57, _, _ => exact leaf_04357
  | 58, _, _ => exact leaf_04358
  | 59, _, _ => exact leaf_04359
  | 60, _, _ => exact leaf_04360
  | 61, _, _ => exact leaf_04361
  | 62, _, _ => exact leaf_04362
  | 63, _, _ => exact leaf_04363
  | 64, _, _ => exact leaf_04364
  | 65, _, _ => exact leaf_04365
  | 66, _, _ => exact leaf_04366
  | 67, _, _ => exact leaf_04367
  | 68, _, _ => exact leaf_04368
  | 69, _, _ => exact leaf_04369
  | 70, _, _ => exact leaf_04370
  | 71, _, _ => exact leaf_04371
  | 72, _, _ => exact leaf_04372
  | 73, _, _ => exact leaf_04373
  | 74, _, _ => exact leaf_04374
  | 75, _, _ => exact leaf_04375
  | 76, _, _ => exact leaf_04376
  | 77, _, _ => exact leaf_04377
  | 78, _, _ => exact leaf_04378
  | 79, _, _ => exact leaf_04379
  | 80, _, _ => exact leaf_04380
  | 81, _, _ => exact leaf_04381
  | 82, _, _ => exact leaf_04382
  | 83, _, _ => exact leaf_04383
  | 84, _, _ => exact leaf_04384
  | 85, _, _ => exact leaf_04385
  | 86, _, _ => exact leaf_04386
  | 87, _, _ => exact leaf_04387
  | 88, _, _ => exact leaf_04388
  | 89, _, _ => exact leaf_04389
  | 90, _, _ => exact leaf_04390
  | 91, _, _ => exact leaf_04391
  | 92, _, _ => exact leaf_04392
  | 93, _, _ => exact leaf_04393
  | 94, _, _ => exact leaf_04394
  | 95, _, _ => exact leaf_04395
  | 96, _, _ => exact leaf_04396
  | 97, _, _ => exact leaf_04397
  | 98, _, _ => exact leaf_04398
  | 99, _, _ => exact leaf_04399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
