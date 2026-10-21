import TUK.Leaf05300
import TUK.Leaf05301
import TUK.Leaf05302
import TUK.Leaf05303
import TUK.Leaf05304
import TUK.Leaf05305
import TUK.Leaf05306
import TUK.Leaf05307
import TUK.Leaf05308
import TUK.Leaf05309
import TUK.Leaf05310
import TUK.Leaf05311
import TUK.Leaf05312
import TUK.Leaf05313
import TUK.Leaf05314
import TUK.Leaf05315
import TUK.Leaf05316
import TUK.Leaf05317
import TUK.Leaf05318
import TUK.Leaf05319
import TUK.Leaf05320
import TUK.Leaf05321
import TUK.Leaf05322
import TUK.Leaf05323
import TUK.Leaf05324
import TUK.Leaf05325
import TUK.Leaf05326
import TUK.Leaf05327
import TUK.Leaf05328
import TUK.Leaf05329
import TUK.Leaf05330
import TUK.Leaf05331
import TUK.Leaf05332
import TUK.Leaf05333
import TUK.Leaf05334
import TUK.Leaf05335
import TUK.Leaf05336
import TUK.Leaf05337
import TUK.Leaf05338
import TUK.Leaf05339
import TUK.Leaf05340
import TUK.Leaf05341
import TUK.Leaf05342
import TUK.Leaf05343
import TUK.Leaf05344
import TUK.Leaf05345
import TUK.Leaf05346
import TUK.Leaf05347
import TUK.Leaf05348
import TUK.Leaf05349
import TUK.Leaf05350
import TUK.Leaf05351
import TUK.Leaf05352
import TUK.Leaf05353
import TUK.Leaf05354
import TUK.Leaf05355
import TUK.Leaf05356
import TUK.Leaf05357
import TUK.Leaf05358
import TUK.Leaf05359
import TUK.Leaf05360
import TUK.Leaf05361
import TUK.Leaf05362
import TUK.Leaf05363
import TUK.Leaf05364
import TUK.Leaf05365
import TUK.Leaf05366
import TUK.Leaf05367
import TUK.Leaf05368
import TUK.Leaf05369
import TUK.Leaf05370
import TUK.Leaf05371
import TUK.Leaf05372
import TUK.Leaf05373
import TUK.Leaf05374
import TUK.Leaf05375
import TUK.Leaf05376
import TUK.Leaf05377
import TUK.Leaf05378
import TUK.Leaf05379
import TUK.Leaf05380
import TUK.Leaf05381
import TUK.Leaf05382
import TUK.Leaf05383
import TUK.Leaf05384
import TUK.Leaf05385
import TUK.Leaf05386
import TUK.Leaf05387
import TUK.Leaf05388
import TUK.Leaf05389
import TUK.Leaf05390
import TUK.Leaf05391
import TUK.Leaf05392
import TUK.Leaf05393
import TUK.Leaf05394
import TUK.Leaf05395
import TUK.Leaf05396
import TUK.Leaf05397
import TUK.Leaf05398
import TUK.Leaf05399

/-! Leaves 5300 .. 5399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_53 : ∀ j < 100, 100 * 53 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 53 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_05300
  | 1, _, _ => exact leaf_05301
  | 2, _, _ => exact leaf_05302
  | 3, _, _ => exact leaf_05303
  | 4, _, _ => exact leaf_05304
  | 5, _, _ => exact leaf_05305
  | 6, _, _ => exact leaf_05306
  | 7, _, _ => exact leaf_05307
  | 8, _, _ => exact leaf_05308
  | 9, _, _ => exact leaf_05309
  | 10, _, _ => exact leaf_05310
  | 11, _, _ => exact leaf_05311
  | 12, _, _ => exact leaf_05312
  | 13, _, _ => exact leaf_05313
  | 14, _, _ => exact leaf_05314
  | 15, _, _ => exact leaf_05315
  | 16, _, _ => exact leaf_05316
  | 17, _, _ => exact leaf_05317
  | 18, _, _ => exact leaf_05318
  | 19, _, _ => exact leaf_05319
  | 20, _, _ => exact leaf_05320
  | 21, _, _ => exact leaf_05321
  | 22, _, _ => exact leaf_05322
  | 23, _, _ => exact leaf_05323
  | 24, _, _ => exact leaf_05324
  | 25, _, _ => exact leaf_05325
  | 26, _, _ => exact leaf_05326
  | 27, _, _ => exact leaf_05327
  | 28, _, _ => exact leaf_05328
  | 29, _, _ => exact leaf_05329
  | 30, _, _ => exact leaf_05330
  | 31, _, _ => exact leaf_05331
  | 32, _, _ => exact leaf_05332
  | 33, _, _ => exact leaf_05333
  | 34, _, _ => exact leaf_05334
  | 35, _, _ => exact leaf_05335
  | 36, _, _ => exact leaf_05336
  | 37, _, _ => exact leaf_05337
  | 38, _, _ => exact leaf_05338
  | 39, _, _ => exact leaf_05339
  | 40, _, _ => exact leaf_05340
  | 41, _, _ => exact leaf_05341
  | 42, _, _ => exact leaf_05342
  | 43, _, _ => exact leaf_05343
  | 44, _, _ => exact leaf_05344
  | 45, _, _ => exact leaf_05345
  | 46, _, _ => exact leaf_05346
  | 47, _, _ => exact leaf_05347
  | 48, _, _ => exact leaf_05348
  | 49, _, _ => exact leaf_05349
  | 50, _, _ => exact leaf_05350
  | 51, _, _ => exact leaf_05351
  | 52, _, _ => exact leaf_05352
  | 53, _, _ => exact leaf_05353
  | 54, _, _ => exact leaf_05354
  | 55, _, _ => exact leaf_05355
  | 56, _, _ => exact leaf_05356
  | 57, _, _ => exact leaf_05357
  | 58, _, _ => exact leaf_05358
  | 59, _, _ => exact leaf_05359
  | 60, _, _ => exact leaf_05360
  | 61, _, _ => exact leaf_05361
  | 62, _, _ => exact leaf_05362
  | 63, _, _ => exact leaf_05363
  | 64, _, _ => exact leaf_05364
  | 65, _, _ => exact leaf_05365
  | 66, _, _ => exact leaf_05366
  | 67, _, _ => exact leaf_05367
  | 68, _, _ => exact leaf_05368
  | 69, _, _ => exact leaf_05369
  | 70, _, _ => exact leaf_05370
  | 71, _, _ => exact leaf_05371
  | 72, _, _ => exact leaf_05372
  | 73, _, _ => exact leaf_05373
  | 74, _, _ => exact leaf_05374
  | 75, _, _ => exact leaf_05375
  | 76, _, _ => exact leaf_05376
  | 77, _, _ => exact leaf_05377
  | 78, _, _ => exact leaf_05378
  | 79, _, _ => exact leaf_05379
  | 80, _, _ => exact leaf_05380
  | 81, _, _ => exact leaf_05381
  | 82, _, _ => exact leaf_05382
  | 83, _, _ => exact leaf_05383
  | 84, _, _ => exact leaf_05384
  | 85, _, _ => exact leaf_05385
  | 86, _, _ => exact leaf_05386
  | 87, _, _ => exact leaf_05387
  | 88, _, _ => exact leaf_05388
  | 89, _, _ => exact leaf_05389
  | 90, _, _ => exact leaf_05390
  | 91, _, _ => exact leaf_05391
  | 92, _, _ => exact leaf_05392
  | 93, _, _ => exact leaf_05393
  | 94, _, _ => exact leaf_05394
  | 95, _, _ => exact leaf_05395
  | 96, _, _ => exact leaf_05396
  | 97, _, _ => exact leaf_05397
  | 98, _, _ => exact leaf_05398
  | 99, _, _ => exact leaf_05399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
