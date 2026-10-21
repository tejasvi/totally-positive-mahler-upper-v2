import TUK.Leaf09300
import TUK.Leaf09301
import TUK.Leaf09302
import TUK.Leaf09303
import TUK.Leaf09304
import TUK.Leaf09305
import TUK.Leaf09306
import TUK.Leaf09307
import TUK.Leaf09308
import TUK.Leaf09309
import TUK.Leaf09310
import TUK.Leaf09311
import TUK.Leaf09312
import TUK.Leaf09313
import TUK.Leaf09314
import TUK.Leaf09315
import TUK.Leaf09316
import TUK.Leaf09317
import TUK.Leaf09318
import TUK.Leaf09319
import TUK.Leaf09320
import TUK.Leaf09321
import TUK.Leaf09322
import TUK.Leaf09323
import TUK.Leaf09324
import TUK.Leaf09325
import TUK.Leaf09326
import TUK.Leaf09327
import TUK.Leaf09328
import TUK.Leaf09329
import TUK.Leaf09330
import TUK.Leaf09331
import TUK.Leaf09332
import TUK.Leaf09333
import TUK.Leaf09334
import TUK.Leaf09335
import TUK.Leaf09336
import TUK.Leaf09337
import TUK.Leaf09338
import TUK.Leaf09339
import TUK.Leaf09340
import TUK.Leaf09341
import TUK.Leaf09342
import TUK.Leaf09343
import TUK.Leaf09344
import TUK.Leaf09345
import TUK.Leaf09346
import TUK.Leaf09347
import TUK.Leaf09348
import TUK.Leaf09349
import TUK.Leaf09350
import TUK.Leaf09351
import TUK.Leaf09352
import TUK.Leaf09353
import TUK.Leaf09354
import TUK.Leaf09355
import TUK.Leaf09356
import TUK.Leaf09357
import TUK.Leaf09358
import TUK.Leaf09359
import TUK.Leaf09360
import TUK.Leaf09361
import TUK.Leaf09362
import TUK.Leaf09363
import TUK.Leaf09364
import TUK.Leaf09365
import TUK.Leaf09366
import TUK.Leaf09367
import TUK.Leaf09368
import TUK.Leaf09369
import TUK.Leaf09370
import TUK.Leaf09371
import TUK.Leaf09372
import TUK.Leaf09373
import TUK.Leaf09374
import TUK.Leaf09375
import TUK.Leaf09376
import TUK.Leaf09377
import TUK.Leaf09378
import TUK.Leaf09379
import TUK.Leaf09380
import TUK.Leaf09381
import TUK.Leaf09382
import TUK.Leaf09383
import TUK.Leaf09384
import TUK.Leaf09385
import TUK.Leaf09386
import TUK.Leaf09387
import TUK.Leaf09388
import TUK.Leaf09389
import TUK.Leaf09390
import TUK.Leaf09391
import TUK.Leaf09392
import TUK.Leaf09393
import TUK.Leaf09394
import TUK.Leaf09395
import TUK.Leaf09396
import TUK.Leaf09397
import TUK.Leaf09398
import TUK.Leaf09399

/-! Leaves 9300 .. 9399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_93 : ∀ j < 100, 100 * 93 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 93 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_09300
  | 1, _, _ => exact leaf_09301
  | 2, _, _ => exact leaf_09302
  | 3, _, _ => exact leaf_09303
  | 4, _, _ => exact leaf_09304
  | 5, _, _ => exact leaf_09305
  | 6, _, _ => exact leaf_09306
  | 7, _, _ => exact leaf_09307
  | 8, _, _ => exact leaf_09308
  | 9, _, _ => exact leaf_09309
  | 10, _, _ => exact leaf_09310
  | 11, _, _ => exact leaf_09311
  | 12, _, _ => exact leaf_09312
  | 13, _, _ => exact leaf_09313
  | 14, _, _ => exact leaf_09314
  | 15, _, _ => exact leaf_09315
  | 16, _, _ => exact leaf_09316
  | 17, _, _ => exact leaf_09317
  | 18, _, _ => exact leaf_09318
  | 19, _, _ => exact leaf_09319
  | 20, _, _ => exact leaf_09320
  | 21, _, _ => exact leaf_09321
  | 22, _, _ => exact leaf_09322
  | 23, _, _ => exact leaf_09323
  | 24, _, _ => exact leaf_09324
  | 25, _, _ => exact leaf_09325
  | 26, _, _ => exact leaf_09326
  | 27, _, _ => exact leaf_09327
  | 28, _, _ => exact leaf_09328
  | 29, _, _ => exact leaf_09329
  | 30, _, _ => exact leaf_09330
  | 31, _, _ => exact leaf_09331
  | 32, _, _ => exact leaf_09332
  | 33, _, _ => exact leaf_09333
  | 34, _, _ => exact leaf_09334
  | 35, _, _ => exact leaf_09335
  | 36, _, _ => exact leaf_09336
  | 37, _, _ => exact leaf_09337
  | 38, _, _ => exact leaf_09338
  | 39, _, _ => exact leaf_09339
  | 40, _, _ => exact leaf_09340
  | 41, _, _ => exact leaf_09341
  | 42, _, _ => exact leaf_09342
  | 43, _, _ => exact leaf_09343
  | 44, _, _ => exact leaf_09344
  | 45, _, _ => exact leaf_09345
  | 46, _, _ => exact leaf_09346
  | 47, _, _ => exact leaf_09347
  | 48, _, _ => exact leaf_09348
  | 49, _, _ => exact leaf_09349
  | 50, _, _ => exact leaf_09350
  | 51, _, _ => exact leaf_09351
  | 52, _, _ => exact leaf_09352
  | 53, _, _ => exact leaf_09353
  | 54, _, _ => exact leaf_09354
  | 55, _, _ => exact leaf_09355
  | 56, _, _ => exact leaf_09356
  | 57, _, _ => exact leaf_09357
  | 58, _, _ => exact leaf_09358
  | 59, _, _ => exact leaf_09359
  | 60, _, _ => exact leaf_09360
  | 61, _, _ => exact leaf_09361
  | 62, _, _ => exact leaf_09362
  | 63, _, _ => exact leaf_09363
  | 64, _, _ => exact leaf_09364
  | 65, _, _ => exact leaf_09365
  | 66, _, _ => exact leaf_09366
  | 67, _, _ => exact leaf_09367
  | 68, _, _ => exact leaf_09368
  | 69, _, _ => exact leaf_09369
  | 70, _, _ => exact leaf_09370
  | 71, _, _ => exact leaf_09371
  | 72, _, _ => exact leaf_09372
  | 73, _, _ => exact leaf_09373
  | 74, _, _ => exact leaf_09374
  | 75, _, _ => exact leaf_09375
  | 76, _, _ => exact leaf_09376
  | 77, _, _ => exact leaf_09377
  | 78, _, _ => exact leaf_09378
  | 79, _, _ => exact leaf_09379
  | 80, _, _ => exact leaf_09380
  | 81, _, _ => exact leaf_09381
  | 82, _, _ => exact leaf_09382
  | 83, _, _ => exact leaf_09383
  | 84, _, _ => exact leaf_09384
  | 85, _, _ => exact leaf_09385
  | 86, _, _ => exact leaf_09386
  | 87, _, _ => exact leaf_09387
  | 88, _, _ => exact leaf_09388
  | 89, _, _ => exact leaf_09389
  | 90, _, _ => exact leaf_09390
  | 91, _, _ => exact leaf_09391
  | 92, _, _ => exact leaf_09392
  | 93, _, _ => exact leaf_09393
  | 94, _, _ => exact leaf_09394
  | 95, _, _ => exact leaf_09395
  | 96, _, _ => exact leaf_09396
  | 97, _, _ => exact leaf_09397
  | 98, _, _ => exact leaf_09398
  | 99, _, _ => exact leaf_09399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
