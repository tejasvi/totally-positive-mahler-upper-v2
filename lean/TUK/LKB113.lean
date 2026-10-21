import TUK.Leaf11300
import TUK.Leaf11301
import TUK.Leaf11302
import TUK.Leaf11303
import TUK.Leaf11304
import TUK.Leaf11305
import TUK.Leaf11306
import TUK.Leaf11307
import TUK.Leaf11308
import TUK.Leaf11309
import TUK.Leaf11310
import TUK.Leaf11311
import TUK.Leaf11312
import TUK.Leaf11313
import TUK.Leaf11314
import TUK.Leaf11315
import TUK.Leaf11316
import TUK.Leaf11317
import TUK.Leaf11318
import TUK.Leaf11319
import TUK.Leaf11320
import TUK.Leaf11321
import TUK.Leaf11322
import TUK.Leaf11323
import TUK.Leaf11324
import TUK.Leaf11325
import TUK.Leaf11326
import TUK.Leaf11327
import TUK.Leaf11328
import TUK.Leaf11329
import TUK.Leaf11330
import TUK.Leaf11331
import TUK.Leaf11332
import TUK.Leaf11333
import TUK.Leaf11334
import TUK.Leaf11335
import TUK.Leaf11336
import TUK.Leaf11337
import TUK.Leaf11338
import TUK.Leaf11339
import TUK.Leaf11340
import TUK.Leaf11341
import TUK.Leaf11342
import TUK.Leaf11343
import TUK.Leaf11344
import TUK.Leaf11345
import TUK.Leaf11346
import TUK.Leaf11347
import TUK.Leaf11348
import TUK.Leaf11349
import TUK.Leaf11350
import TUK.Leaf11351
import TUK.Leaf11352
import TUK.Leaf11353
import TUK.Leaf11354
import TUK.Leaf11355
import TUK.Leaf11356
import TUK.Leaf11357
import TUK.Leaf11358
import TUK.Leaf11359
import TUK.Leaf11360
import TUK.Leaf11361
import TUK.Leaf11362
import TUK.Leaf11363
import TUK.Leaf11364
import TUK.Leaf11365
import TUK.Leaf11366
import TUK.Leaf11367
import TUK.Leaf11368
import TUK.Leaf11369
import TUK.Leaf11370
import TUK.Leaf11371
import TUK.Leaf11372
import TUK.Leaf11373
import TUK.Leaf11374
import TUK.Leaf11375
import TUK.Leaf11376
import TUK.Leaf11377
import TUK.Leaf11378
import TUK.Leaf11379
import TUK.Leaf11380
import TUK.Leaf11381
import TUK.Leaf11382
import TUK.Leaf11383
import TUK.Leaf11384
import TUK.Leaf11385
import TUK.Leaf11386
import TUK.Leaf11387
import TUK.Leaf11388
import TUK.Leaf11389
import TUK.Leaf11390
import TUK.Leaf11391
import TUK.Leaf11392

/-! Leaves 11300 .. 11392 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_113 : ∀ j < 100, 100 * 113 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 113 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_11300
  | 1, _, _ => exact leaf_11301
  | 2, _, _ => exact leaf_11302
  | 3, _, _ => exact leaf_11303
  | 4, _, _ => exact leaf_11304
  | 5, _, _ => exact leaf_11305
  | 6, _, _ => exact leaf_11306
  | 7, _, _ => exact leaf_11307
  | 8, _, _ => exact leaf_11308
  | 9, _, _ => exact leaf_11309
  | 10, _, _ => exact leaf_11310
  | 11, _, _ => exact leaf_11311
  | 12, _, _ => exact leaf_11312
  | 13, _, _ => exact leaf_11313
  | 14, _, _ => exact leaf_11314
  | 15, _, _ => exact leaf_11315
  | 16, _, _ => exact leaf_11316
  | 17, _, _ => exact leaf_11317
  | 18, _, _ => exact leaf_11318
  | 19, _, _ => exact leaf_11319
  | 20, _, _ => exact leaf_11320
  | 21, _, _ => exact leaf_11321
  | 22, _, _ => exact leaf_11322
  | 23, _, _ => exact leaf_11323
  | 24, _, _ => exact leaf_11324
  | 25, _, _ => exact leaf_11325
  | 26, _, _ => exact leaf_11326
  | 27, _, _ => exact leaf_11327
  | 28, _, _ => exact leaf_11328
  | 29, _, _ => exact leaf_11329
  | 30, _, _ => exact leaf_11330
  | 31, _, _ => exact leaf_11331
  | 32, _, _ => exact leaf_11332
  | 33, _, _ => exact leaf_11333
  | 34, _, _ => exact leaf_11334
  | 35, _, _ => exact leaf_11335
  | 36, _, _ => exact leaf_11336
  | 37, _, _ => exact leaf_11337
  | 38, _, _ => exact leaf_11338
  | 39, _, _ => exact leaf_11339
  | 40, _, _ => exact leaf_11340
  | 41, _, _ => exact leaf_11341
  | 42, _, _ => exact leaf_11342
  | 43, _, _ => exact leaf_11343
  | 44, _, _ => exact leaf_11344
  | 45, _, _ => exact leaf_11345
  | 46, _, _ => exact leaf_11346
  | 47, _, _ => exact leaf_11347
  | 48, _, _ => exact leaf_11348
  | 49, _, _ => exact leaf_11349
  | 50, _, _ => exact leaf_11350
  | 51, _, _ => exact leaf_11351
  | 52, _, _ => exact leaf_11352
  | 53, _, _ => exact leaf_11353
  | 54, _, _ => exact leaf_11354
  | 55, _, _ => exact leaf_11355
  | 56, _, _ => exact leaf_11356
  | 57, _, _ => exact leaf_11357
  | 58, _, _ => exact leaf_11358
  | 59, _, _ => exact leaf_11359
  | 60, _, _ => exact leaf_11360
  | 61, _, _ => exact leaf_11361
  | 62, _, _ => exact leaf_11362
  | 63, _, _ => exact leaf_11363
  | 64, _, _ => exact leaf_11364
  | 65, _, _ => exact leaf_11365
  | 66, _, _ => exact leaf_11366
  | 67, _, _ => exact leaf_11367
  | 68, _, _ => exact leaf_11368
  | 69, _, _ => exact leaf_11369
  | 70, _, _ => exact leaf_11370
  | 71, _, _ => exact leaf_11371
  | 72, _, _ => exact leaf_11372
  | 73, _, _ => exact leaf_11373
  | 74, _, _ => exact leaf_11374
  | 75, _, _ => exact leaf_11375
  | 76, _, _ => exact leaf_11376
  | 77, _, _ => exact leaf_11377
  | 78, _, _ => exact leaf_11378
  | 79, _, _ => exact leaf_11379
  | 80, _, _ => exact leaf_11380
  | 81, _, _ => exact leaf_11381
  | 82, _, _ => exact leaf_11382
  | 83, _, _ => exact leaf_11383
  | 84, _, _ => exact leaf_11384
  | 85, _, _ => exact leaf_11385
  | 86, _, _ => exact leaf_11386
  | 87, _, _ => exact leaf_11387
  | 88, _, _ => exact leaf_11388
  | 89, _, _ => exact leaf_11389
  | 90, _, _ => exact leaf_11390
  | 91, _, _ => exact leaf_11391
  | 92, _, _ => exact leaf_11392
  | n + 93, _, hk => exact absurd hk (by omega)

end TUCore.TUK
