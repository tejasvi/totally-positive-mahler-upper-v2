import TUK.Leaf07300
import TUK.Leaf07301
import TUK.Leaf07302
import TUK.Leaf07303
import TUK.Leaf07304
import TUK.Leaf07305
import TUK.Leaf07306
import TUK.Leaf07307
import TUK.Leaf07308
import TUK.Leaf07309
import TUK.Leaf07310
import TUK.Leaf07311
import TUK.Leaf07312
import TUK.Leaf07313
import TUK.Leaf07314
import TUK.Leaf07315
import TUK.Leaf07316
import TUK.Leaf07317
import TUK.Leaf07318
import TUK.Leaf07319
import TUK.Leaf07320
import TUK.Leaf07321
import TUK.Leaf07322
import TUK.Leaf07323
import TUK.Leaf07324
import TUK.Leaf07325
import TUK.Leaf07326
import TUK.Leaf07327
import TUK.Leaf07328
import TUK.Leaf07329
import TUK.Leaf07330
import TUK.Leaf07331
import TUK.Leaf07332
import TUK.Leaf07333
import TUK.Leaf07334
import TUK.Leaf07335
import TUK.Leaf07336
import TUK.Leaf07337
import TUK.Leaf07338
import TUK.Leaf07339
import TUK.Leaf07340
import TUK.Leaf07341
import TUK.Leaf07342
import TUK.Leaf07343
import TUK.Leaf07344
import TUK.Leaf07345
import TUK.Leaf07346
import TUK.Leaf07347
import TUK.Leaf07348
import TUK.Leaf07349
import TUK.Leaf07350
import TUK.Leaf07351
import TUK.Leaf07352
import TUK.Leaf07353
import TUK.Leaf07354
import TUK.Leaf07355
import TUK.Leaf07356
import TUK.Leaf07357
import TUK.Leaf07358
import TUK.Leaf07359
import TUK.Leaf07360
import TUK.Leaf07361
import TUK.Leaf07362
import TUK.Leaf07363
import TUK.Leaf07364
import TUK.Leaf07365
import TUK.Leaf07366
import TUK.Leaf07367
import TUK.Leaf07368
import TUK.Leaf07369
import TUK.Leaf07370
import TUK.Leaf07371
import TUK.Leaf07372
import TUK.Leaf07373
import TUK.Leaf07374
import TUK.Leaf07375
import TUK.Leaf07376
import TUK.Leaf07377
import TUK.Leaf07378
import TUK.Leaf07379
import TUK.Leaf07380
import TUK.Leaf07381
import TUK.Leaf07382
import TUK.Leaf07383
import TUK.Leaf07384
import TUK.Leaf07385
import TUK.Leaf07386
import TUK.Leaf07387
import TUK.Leaf07388
import TUK.Leaf07389
import TUK.Leaf07390
import TUK.Leaf07391
import TUK.Leaf07392
import TUK.Leaf07393
import TUK.Leaf07394
import TUK.Leaf07395
import TUK.Leaf07396
import TUK.Leaf07397
import TUK.Leaf07398
import TUK.Leaf07399

/-! Leaves 7300 .. 7399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_73 : ∀ j < 100, 100 * 73 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 73 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_07300
  | 1, _, _ => exact leaf_07301
  | 2, _, _ => exact leaf_07302
  | 3, _, _ => exact leaf_07303
  | 4, _, _ => exact leaf_07304
  | 5, _, _ => exact leaf_07305
  | 6, _, _ => exact leaf_07306
  | 7, _, _ => exact leaf_07307
  | 8, _, _ => exact leaf_07308
  | 9, _, _ => exact leaf_07309
  | 10, _, _ => exact leaf_07310
  | 11, _, _ => exact leaf_07311
  | 12, _, _ => exact leaf_07312
  | 13, _, _ => exact leaf_07313
  | 14, _, _ => exact leaf_07314
  | 15, _, _ => exact leaf_07315
  | 16, _, _ => exact leaf_07316
  | 17, _, _ => exact leaf_07317
  | 18, _, _ => exact leaf_07318
  | 19, _, _ => exact leaf_07319
  | 20, _, _ => exact leaf_07320
  | 21, _, _ => exact leaf_07321
  | 22, _, _ => exact leaf_07322
  | 23, _, _ => exact leaf_07323
  | 24, _, _ => exact leaf_07324
  | 25, _, _ => exact leaf_07325
  | 26, _, _ => exact leaf_07326
  | 27, _, _ => exact leaf_07327
  | 28, _, _ => exact leaf_07328
  | 29, _, _ => exact leaf_07329
  | 30, _, _ => exact leaf_07330
  | 31, _, _ => exact leaf_07331
  | 32, _, _ => exact leaf_07332
  | 33, _, _ => exact leaf_07333
  | 34, _, _ => exact leaf_07334
  | 35, _, _ => exact leaf_07335
  | 36, _, _ => exact leaf_07336
  | 37, _, _ => exact leaf_07337
  | 38, _, _ => exact leaf_07338
  | 39, _, _ => exact leaf_07339
  | 40, _, _ => exact leaf_07340
  | 41, _, _ => exact leaf_07341
  | 42, _, _ => exact leaf_07342
  | 43, _, _ => exact leaf_07343
  | 44, _, _ => exact leaf_07344
  | 45, _, _ => exact leaf_07345
  | 46, _, _ => exact leaf_07346
  | 47, _, _ => exact leaf_07347
  | 48, _, _ => exact leaf_07348
  | 49, _, _ => exact leaf_07349
  | 50, _, _ => exact leaf_07350
  | 51, _, _ => exact leaf_07351
  | 52, _, _ => exact leaf_07352
  | 53, _, _ => exact leaf_07353
  | 54, _, _ => exact leaf_07354
  | 55, _, _ => exact leaf_07355
  | 56, _, _ => exact leaf_07356
  | 57, _, _ => exact leaf_07357
  | 58, _, _ => exact leaf_07358
  | 59, _, _ => exact leaf_07359
  | 60, _, _ => exact leaf_07360
  | 61, _, _ => exact leaf_07361
  | 62, _, _ => exact leaf_07362
  | 63, _, _ => exact leaf_07363
  | 64, _, _ => exact leaf_07364
  | 65, _, _ => exact leaf_07365
  | 66, _, _ => exact leaf_07366
  | 67, _, _ => exact leaf_07367
  | 68, _, _ => exact leaf_07368
  | 69, _, _ => exact leaf_07369
  | 70, _, _ => exact leaf_07370
  | 71, _, _ => exact leaf_07371
  | 72, _, _ => exact leaf_07372
  | 73, _, _ => exact leaf_07373
  | 74, _, _ => exact leaf_07374
  | 75, _, _ => exact leaf_07375
  | 76, _, _ => exact leaf_07376
  | 77, _, _ => exact leaf_07377
  | 78, _, _ => exact leaf_07378
  | 79, _, _ => exact leaf_07379
  | 80, _, _ => exact leaf_07380
  | 81, _, _ => exact leaf_07381
  | 82, _, _ => exact leaf_07382
  | 83, _, _ => exact leaf_07383
  | 84, _, _ => exact leaf_07384
  | 85, _, _ => exact leaf_07385
  | 86, _, _ => exact leaf_07386
  | 87, _, _ => exact leaf_07387
  | 88, _, _ => exact leaf_07388
  | 89, _, _ => exact leaf_07389
  | 90, _, _ => exact leaf_07390
  | 91, _, _ => exact leaf_07391
  | 92, _, _ => exact leaf_07392
  | 93, _, _ => exact leaf_07393
  | 94, _, _ => exact leaf_07394
  | 95, _, _ => exact leaf_07395
  | 96, _, _ => exact leaf_07396
  | 97, _, _ => exact leaf_07397
  | 98, _, _ => exact leaf_07398
  | 99, _, _ => exact leaf_07399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
