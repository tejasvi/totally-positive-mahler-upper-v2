import TUK.Leaf00300
import TUK.Leaf00301
import TUK.Leaf00302
import TUK.Leaf00303
import TUK.Leaf00304
import TUK.Leaf00305
import TUK.Leaf00306
import TUK.Leaf00307
import TUK.Leaf00308
import TUK.Leaf00309
import TUK.Leaf00310
import TUK.Leaf00311
import TUK.Leaf00312
import TUK.Leaf00313
import TUK.Leaf00314
import TUK.Leaf00315
import TUK.Leaf00316
import TUK.Leaf00317
import TUK.Leaf00318
import TUK.Leaf00319
import TUK.Leaf00320
import TUK.Leaf00321
import TUK.Leaf00322
import TUK.Leaf00323
import TUK.Leaf00324
import TUK.Leaf00325
import TUK.Leaf00326
import TUK.Leaf00327
import TUK.Leaf00328
import TUK.Leaf00329
import TUK.Leaf00330
import TUK.Leaf00331
import TUK.Leaf00332
import TUK.Leaf00333
import TUK.Leaf00334
import TUK.Leaf00335
import TUK.Leaf00336
import TUK.Leaf00337
import TUK.Leaf00338
import TUK.Leaf00339
import TUK.Leaf00340
import TUK.Leaf00341
import TUK.Leaf00342
import TUK.Leaf00343
import TUK.Leaf00344
import TUK.Leaf00345
import TUK.Leaf00346
import TUK.Leaf00347
import TUK.Leaf00348
import TUK.Leaf00349
import TUK.Leaf00350
import TUK.Leaf00351
import TUK.Leaf00352
import TUK.Leaf00353
import TUK.Leaf00354
import TUK.Leaf00355
import TUK.Leaf00356
import TUK.Leaf00357
import TUK.Leaf00358
import TUK.Leaf00359
import TUK.Leaf00360
import TUK.Leaf00361
import TUK.Leaf00362
import TUK.Leaf00363
import TUK.Leaf00364
import TUK.Leaf00365
import TUK.Leaf00366
import TUK.Leaf00367
import TUK.Leaf00368
import TUK.Leaf00369
import TUK.Leaf00370
import TUK.Leaf00371
import TUK.Leaf00372
import TUK.Leaf00373
import TUK.Leaf00374
import TUK.Leaf00375
import TUK.Leaf00376
import TUK.Leaf00377
import TUK.Leaf00378
import TUK.Leaf00379
import TUK.Leaf00380
import TUK.Leaf00381
import TUK.Leaf00382
import TUK.Leaf00383
import TUK.Leaf00384
import TUK.Leaf00385
import TUK.Leaf00386
import TUK.Leaf00387
import TUK.Leaf00388
import TUK.Leaf00389
import TUK.Leaf00390
import TUK.Leaf00391
import TUK.Leaf00392
import TUK.Leaf00393
import TUK.Leaf00394
import TUK.Leaf00395
import TUK.Leaf00396
import TUK.Leaf00397
import TUK.Leaf00398
import TUK.Leaf00399

/-! Leaves 300 .. 399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_3 : ∀ j < 100, 100 * 3 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 3 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_00300
  | 1, _, _ => exact leaf_00301
  | 2, _, _ => exact leaf_00302
  | 3, _, _ => exact leaf_00303
  | 4, _, _ => exact leaf_00304
  | 5, _, _ => exact leaf_00305
  | 6, _, _ => exact leaf_00306
  | 7, _, _ => exact leaf_00307
  | 8, _, _ => exact leaf_00308
  | 9, _, _ => exact leaf_00309
  | 10, _, _ => exact leaf_00310
  | 11, _, _ => exact leaf_00311
  | 12, _, _ => exact leaf_00312
  | 13, _, _ => exact leaf_00313
  | 14, _, _ => exact leaf_00314
  | 15, _, _ => exact leaf_00315
  | 16, _, _ => exact leaf_00316
  | 17, _, _ => exact leaf_00317
  | 18, _, _ => exact leaf_00318
  | 19, _, _ => exact leaf_00319
  | 20, _, _ => exact leaf_00320
  | 21, _, _ => exact leaf_00321
  | 22, _, _ => exact leaf_00322
  | 23, _, _ => exact leaf_00323
  | 24, _, _ => exact leaf_00324
  | 25, _, _ => exact leaf_00325
  | 26, _, _ => exact leaf_00326
  | 27, _, _ => exact leaf_00327
  | 28, _, _ => exact leaf_00328
  | 29, _, _ => exact leaf_00329
  | 30, _, _ => exact leaf_00330
  | 31, _, _ => exact leaf_00331
  | 32, _, _ => exact leaf_00332
  | 33, _, _ => exact leaf_00333
  | 34, _, _ => exact leaf_00334
  | 35, _, _ => exact leaf_00335
  | 36, _, _ => exact leaf_00336
  | 37, _, _ => exact leaf_00337
  | 38, _, _ => exact leaf_00338
  | 39, _, _ => exact leaf_00339
  | 40, _, _ => exact leaf_00340
  | 41, _, _ => exact leaf_00341
  | 42, _, _ => exact leaf_00342
  | 43, _, _ => exact leaf_00343
  | 44, _, _ => exact leaf_00344
  | 45, _, _ => exact leaf_00345
  | 46, _, _ => exact leaf_00346
  | 47, _, _ => exact leaf_00347
  | 48, _, _ => exact leaf_00348
  | 49, _, _ => exact leaf_00349
  | 50, _, _ => exact leaf_00350
  | 51, _, _ => exact leaf_00351
  | 52, _, _ => exact leaf_00352
  | 53, _, _ => exact leaf_00353
  | 54, _, _ => exact leaf_00354
  | 55, _, _ => exact leaf_00355
  | 56, _, _ => exact leaf_00356
  | 57, _, _ => exact leaf_00357
  | 58, _, _ => exact leaf_00358
  | 59, _, _ => exact leaf_00359
  | 60, _, _ => exact leaf_00360
  | 61, _, _ => exact leaf_00361
  | 62, _, _ => exact leaf_00362
  | 63, _, _ => exact leaf_00363
  | 64, _, _ => exact leaf_00364
  | 65, _, _ => exact leaf_00365
  | 66, _, _ => exact leaf_00366
  | 67, _, _ => exact leaf_00367
  | 68, _, _ => exact leaf_00368
  | 69, _, _ => exact leaf_00369
  | 70, _, _ => exact leaf_00370
  | 71, _, _ => exact leaf_00371
  | 72, _, _ => exact leaf_00372
  | 73, _, _ => exact leaf_00373
  | 74, _, _ => exact leaf_00374
  | 75, _, _ => exact leaf_00375
  | 76, _, _ => exact leaf_00376
  | 77, _, _ => exact leaf_00377
  | 78, _, _ => exact leaf_00378
  | 79, _, _ => exact leaf_00379
  | 80, _, _ => exact leaf_00380
  | 81, _, _ => exact leaf_00381
  | 82, _, _ => exact leaf_00382
  | 83, _, _ => exact leaf_00383
  | 84, _, _ => exact leaf_00384
  | 85, _, _ => exact leaf_00385
  | 86, _, _ => exact leaf_00386
  | 87, _, _ => exact leaf_00387
  | 88, _, _ => exact leaf_00388
  | 89, _, _ => exact leaf_00389
  | 90, _, _ => exact leaf_00390
  | 91, _, _ => exact leaf_00391
  | 92, _, _ => exact leaf_00392
  | 93, _, _ => exact leaf_00393
  | 94, _, _ => exact leaf_00394
  | 95, _, _ => exact leaf_00395
  | 96, _, _ => exact leaf_00396
  | 97, _, _ => exact leaf_00397
  | 98, _, _ => exact leaf_00398
  | 99, _, _ => exact leaf_00399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
