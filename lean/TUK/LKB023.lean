import TUK.Leaf02300
import TUK.Leaf02301
import TUK.Leaf02302
import TUK.Leaf02303
import TUK.Leaf02304
import TUK.Leaf02305
import TUK.Leaf02306
import TUK.Leaf02307
import TUK.Leaf02308
import TUK.Leaf02309
import TUK.Leaf02310
import TUK.Leaf02311
import TUK.Leaf02312
import TUK.Leaf02313
import TUK.Leaf02314
import TUK.Leaf02315
import TUK.Leaf02316
import TUK.Leaf02317
import TUK.Leaf02318
import TUK.Leaf02319
import TUK.Leaf02320
import TUK.Leaf02321
import TUK.Leaf02322
import TUK.Leaf02323
import TUK.Leaf02324
import TUK.Leaf02325
import TUK.Leaf02326
import TUK.Leaf02327
import TUK.Leaf02328
import TUK.Leaf02329
import TUK.Leaf02330
import TUK.Leaf02331
import TUK.Leaf02332
import TUK.Leaf02333
import TUK.Leaf02334
import TUK.Leaf02335
import TUK.Leaf02336
import TUK.Leaf02337
import TUK.Leaf02338
import TUK.Leaf02339
import TUK.Leaf02340
import TUK.Leaf02341
import TUK.Leaf02342
import TUK.Leaf02343
import TUK.Leaf02344
import TUK.Leaf02345
import TUK.Leaf02346
import TUK.Leaf02347
import TUK.Leaf02348
import TUK.Leaf02349
import TUK.Leaf02350
import TUK.Leaf02351
import TUK.Leaf02352
import TUK.Leaf02353
import TUK.Leaf02354
import TUK.Leaf02355
import TUK.Leaf02356
import TUK.Leaf02357
import TUK.Leaf02358
import TUK.Leaf02359
import TUK.Leaf02360
import TUK.Leaf02361
import TUK.Leaf02362
import TUK.Leaf02363
import TUK.Leaf02364
import TUK.Leaf02365
import TUK.Leaf02366
import TUK.Leaf02367
import TUK.Leaf02368
import TUK.Leaf02369
import TUK.Leaf02370
import TUK.Leaf02371
import TUK.Leaf02372
import TUK.Leaf02373
import TUK.Leaf02374
import TUK.Leaf02375
import TUK.Leaf02376
import TUK.Leaf02377
import TUK.Leaf02378
import TUK.Leaf02379
import TUK.Leaf02380
import TUK.Leaf02381
import TUK.Leaf02382
import TUK.Leaf02383
import TUK.Leaf02384
import TUK.Leaf02385
import TUK.Leaf02386
import TUK.Leaf02387
import TUK.Leaf02388
import TUK.Leaf02389
import TUK.Leaf02390
import TUK.Leaf02391
import TUK.Leaf02392
import TUK.Leaf02393
import TUK.Leaf02394
import TUK.Leaf02395
import TUK.Leaf02396
import TUK.Leaf02397
import TUK.Leaf02398
import TUK.Leaf02399

/-! Leaves 2300 .. 2399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_23 : ∀ j < 100, 100 * 23 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 23 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_02300
  | 1, _, _ => exact leaf_02301
  | 2, _, _ => exact leaf_02302
  | 3, _, _ => exact leaf_02303
  | 4, _, _ => exact leaf_02304
  | 5, _, _ => exact leaf_02305
  | 6, _, _ => exact leaf_02306
  | 7, _, _ => exact leaf_02307
  | 8, _, _ => exact leaf_02308
  | 9, _, _ => exact leaf_02309
  | 10, _, _ => exact leaf_02310
  | 11, _, _ => exact leaf_02311
  | 12, _, _ => exact leaf_02312
  | 13, _, _ => exact leaf_02313
  | 14, _, _ => exact leaf_02314
  | 15, _, _ => exact leaf_02315
  | 16, _, _ => exact leaf_02316
  | 17, _, _ => exact leaf_02317
  | 18, _, _ => exact leaf_02318
  | 19, _, _ => exact leaf_02319
  | 20, _, _ => exact leaf_02320
  | 21, _, _ => exact leaf_02321
  | 22, _, _ => exact leaf_02322
  | 23, _, _ => exact leaf_02323
  | 24, _, _ => exact leaf_02324
  | 25, _, _ => exact leaf_02325
  | 26, _, _ => exact leaf_02326
  | 27, _, _ => exact leaf_02327
  | 28, _, _ => exact leaf_02328
  | 29, _, _ => exact leaf_02329
  | 30, _, _ => exact leaf_02330
  | 31, _, _ => exact leaf_02331
  | 32, _, _ => exact leaf_02332
  | 33, _, _ => exact leaf_02333
  | 34, _, _ => exact leaf_02334
  | 35, _, _ => exact leaf_02335
  | 36, _, _ => exact leaf_02336
  | 37, _, _ => exact leaf_02337
  | 38, _, _ => exact leaf_02338
  | 39, _, _ => exact leaf_02339
  | 40, _, _ => exact leaf_02340
  | 41, _, _ => exact leaf_02341
  | 42, _, _ => exact leaf_02342
  | 43, _, _ => exact leaf_02343
  | 44, _, _ => exact leaf_02344
  | 45, _, _ => exact leaf_02345
  | 46, _, _ => exact leaf_02346
  | 47, _, _ => exact leaf_02347
  | 48, _, _ => exact leaf_02348
  | 49, _, _ => exact leaf_02349
  | 50, _, _ => exact leaf_02350
  | 51, _, _ => exact leaf_02351
  | 52, _, _ => exact leaf_02352
  | 53, _, _ => exact leaf_02353
  | 54, _, _ => exact leaf_02354
  | 55, _, _ => exact leaf_02355
  | 56, _, _ => exact leaf_02356
  | 57, _, _ => exact leaf_02357
  | 58, _, _ => exact leaf_02358
  | 59, _, _ => exact leaf_02359
  | 60, _, _ => exact leaf_02360
  | 61, _, _ => exact leaf_02361
  | 62, _, _ => exact leaf_02362
  | 63, _, _ => exact leaf_02363
  | 64, _, _ => exact leaf_02364
  | 65, _, _ => exact leaf_02365
  | 66, _, _ => exact leaf_02366
  | 67, _, _ => exact leaf_02367
  | 68, _, _ => exact leaf_02368
  | 69, _, _ => exact leaf_02369
  | 70, _, _ => exact leaf_02370
  | 71, _, _ => exact leaf_02371
  | 72, _, _ => exact leaf_02372
  | 73, _, _ => exact leaf_02373
  | 74, _, _ => exact leaf_02374
  | 75, _, _ => exact leaf_02375
  | 76, _, _ => exact leaf_02376
  | 77, _, _ => exact leaf_02377
  | 78, _, _ => exact leaf_02378
  | 79, _, _ => exact leaf_02379
  | 80, _, _ => exact leaf_02380
  | 81, _, _ => exact leaf_02381
  | 82, _, _ => exact leaf_02382
  | 83, _, _ => exact leaf_02383
  | 84, _, _ => exact leaf_02384
  | 85, _, _ => exact leaf_02385
  | 86, _, _ => exact leaf_02386
  | 87, _, _ => exact leaf_02387
  | 88, _, _ => exact leaf_02388
  | 89, _, _ => exact leaf_02389
  | 90, _, _ => exact leaf_02390
  | 91, _, _ => exact leaf_02391
  | 92, _, _ => exact leaf_02392
  | 93, _, _ => exact leaf_02393
  | 94, _, _ => exact leaf_02394
  | 95, _, _ => exact leaf_02395
  | 96, _, _ => exact leaf_02396
  | 97, _, _ => exact leaf_02397
  | 98, _, _ => exact leaf_02398
  | 99, _, _ => exact leaf_02399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
