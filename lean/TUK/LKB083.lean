import TUK.Leaf08300
import TUK.Leaf08301
import TUK.Leaf08302
import TUK.Leaf08303
import TUK.Leaf08304
import TUK.Leaf08305
import TUK.Leaf08306
import TUK.Leaf08307
import TUK.Leaf08308
import TUK.Leaf08309
import TUK.Leaf08310
import TUK.Leaf08311
import TUK.Leaf08312
import TUK.Leaf08313
import TUK.Leaf08314
import TUK.Leaf08315
import TUK.Leaf08316
import TUK.Leaf08317
import TUK.Leaf08318
import TUK.Leaf08319
import TUK.Leaf08320
import TUK.Leaf08321
import TUK.Leaf08322
import TUK.Leaf08323
import TUK.Leaf08324
import TUK.Leaf08325
import TUK.Leaf08326
import TUK.Leaf08327
import TUK.Leaf08328
import TUK.Leaf08329
import TUK.Leaf08330
import TUK.Leaf08331
import TUK.Leaf08332
import TUK.Leaf08333
import TUK.Leaf08334
import TUK.Leaf08335
import TUK.Leaf08336
import TUK.Leaf08337
import TUK.Leaf08338
import TUK.Leaf08339
import TUK.Leaf08340
import TUK.Leaf08341
import TUK.Leaf08342
import TUK.Leaf08343
import TUK.Leaf08344
import TUK.Leaf08345
import TUK.Leaf08346
import TUK.Leaf08347
import TUK.Leaf08348
import TUK.Leaf08349
import TUK.Leaf08350
import TUK.Leaf08351
import TUK.Leaf08352
import TUK.Leaf08353
import TUK.Leaf08354
import TUK.Leaf08355
import TUK.Leaf08356
import TUK.Leaf08357
import TUK.Leaf08358
import TUK.Leaf08359
import TUK.Leaf08360
import TUK.Leaf08361
import TUK.Leaf08362
import TUK.Leaf08363
import TUK.Leaf08364
import TUK.Leaf08365
import TUK.Leaf08366
import TUK.Leaf08367
import TUK.Leaf08368
import TUK.Leaf08369
import TUK.Leaf08370
import TUK.Leaf08371
import TUK.Leaf08372
import TUK.Leaf08373
import TUK.Leaf08374
import TUK.Leaf08375
import TUK.Leaf08376
import TUK.Leaf08377
import TUK.Leaf08378
import TUK.Leaf08379
import TUK.Leaf08380
import TUK.Leaf08381
import TUK.Leaf08382
import TUK.Leaf08383
import TUK.Leaf08384
import TUK.Leaf08385
import TUK.Leaf08386
import TUK.Leaf08387
import TUK.Leaf08388
import TUK.Leaf08389
import TUK.Leaf08390
import TUK.Leaf08391
import TUK.Leaf08392
import TUK.Leaf08393
import TUK.Leaf08394
import TUK.Leaf08395
import TUK.Leaf08396
import TUK.Leaf08397
import TUK.Leaf08398
import TUK.Leaf08399

/-! Leaves 8300 .. 8399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_83 : ∀ j < 100, 100 * 83 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 83 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_08300
  | 1, _, _ => exact leaf_08301
  | 2, _, _ => exact leaf_08302
  | 3, _, _ => exact leaf_08303
  | 4, _, _ => exact leaf_08304
  | 5, _, _ => exact leaf_08305
  | 6, _, _ => exact leaf_08306
  | 7, _, _ => exact leaf_08307
  | 8, _, _ => exact leaf_08308
  | 9, _, _ => exact leaf_08309
  | 10, _, _ => exact leaf_08310
  | 11, _, _ => exact leaf_08311
  | 12, _, _ => exact leaf_08312
  | 13, _, _ => exact leaf_08313
  | 14, _, _ => exact leaf_08314
  | 15, _, _ => exact leaf_08315
  | 16, _, _ => exact leaf_08316
  | 17, _, _ => exact leaf_08317
  | 18, _, _ => exact leaf_08318
  | 19, _, _ => exact leaf_08319
  | 20, _, _ => exact leaf_08320
  | 21, _, _ => exact leaf_08321
  | 22, _, _ => exact leaf_08322
  | 23, _, _ => exact leaf_08323
  | 24, _, _ => exact leaf_08324
  | 25, _, _ => exact leaf_08325
  | 26, _, _ => exact leaf_08326
  | 27, _, _ => exact leaf_08327
  | 28, _, _ => exact leaf_08328
  | 29, _, _ => exact leaf_08329
  | 30, _, _ => exact leaf_08330
  | 31, _, _ => exact leaf_08331
  | 32, _, _ => exact leaf_08332
  | 33, _, _ => exact leaf_08333
  | 34, _, _ => exact leaf_08334
  | 35, _, _ => exact leaf_08335
  | 36, _, _ => exact leaf_08336
  | 37, _, _ => exact leaf_08337
  | 38, _, _ => exact leaf_08338
  | 39, _, _ => exact leaf_08339
  | 40, _, _ => exact leaf_08340
  | 41, _, _ => exact leaf_08341
  | 42, _, _ => exact leaf_08342
  | 43, _, _ => exact leaf_08343
  | 44, _, _ => exact leaf_08344
  | 45, _, _ => exact leaf_08345
  | 46, _, _ => exact leaf_08346
  | 47, _, _ => exact leaf_08347
  | 48, _, _ => exact leaf_08348
  | 49, _, _ => exact leaf_08349
  | 50, _, _ => exact leaf_08350
  | 51, _, _ => exact leaf_08351
  | 52, _, _ => exact leaf_08352
  | 53, _, _ => exact leaf_08353
  | 54, _, _ => exact leaf_08354
  | 55, _, _ => exact leaf_08355
  | 56, _, _ => exact leaf_08356
  | 57, _, _ => exact leaf_08357
  | 58, _, _ => exact leaf_08358
  | 59, _, _ => exact leaf_08359
  | 60, _, _ => exact leaf_08360
  | 61, _, _ => exact leaf_08361
  | 62, _, _ => exact leaf_08362
  | 63, _, _ => exact leaf_08363
  | 64, _, _ => exact leaf_08364
  | 65, _, _ => exact leaf_08365
  | 66, _, _ => exact leaf_08366
  | 67, _, _ => exact leaf_08367
  | 68, _, _ => exact leaf_08368
  | 69, _, _ => exact leaf_08369
  | 70, _, _ => exact leaf_08370
  | 71, _, _ => exact leaf_08371
  | 72, _, _ => exact leaf_08372
  | 73, _, _ => exact leaf_08373
  | 74, _, _ => exact leaf_08374
  | 75, _, _ => exact leaf_08375
  | 76, _, _ => exact leaf_08376
  | 77, _, _ => exact leaf_08377
  | 78, _, _ => exact leaf_08378
  | 79, _, _ => exact leaf_08379
  | 80, _, _ => exact leaf_08380
  | 81, _, _ => exact leaf_08381
  | 82, _, _ => exact leaf_08382
  | 83, _, _ => exact leaf_08383
  | 84, _, _ => exact leaf_08384
  | 85, _, _ => exact leaf_08385
  | 86, _, _ => exact leaf_08386
  | 87, _, _ => exact leaf_08387
  | 88, _, _ => exact leaf_08388
  | 89, _, _ => exact leaf_08389
  | 90, _, _ => exact leaf_08390
  | 91, _, _ => exact leaf_08391
  | 92, _, _ => exact leaf_08392
  | 93, _, _ => exact leaf_08393
  | 94, _, _ => exact leaf_08394
  | 95, _, _ => exact leaf_08395
  | 96, _, _ => exact leaf_08396
  | 97, _, _ => exact leaf_08397
  | 98, _, _ => exact leaf_08398
  | 99, _, _ => exact leaf_08399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
