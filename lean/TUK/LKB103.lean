import TUK.Leaf10300
import TUK.Leaf10301
import TUK.Leaf10302
import TUK.Leaf10303
import TUK.Leaf10304
import TUK.Leaf10305
import TUK.Leaf10306
import TUK.Leaf10307
import TUK.Leaf10308
import TUK.Leaf10309
import TUK.Leaf10310
import TUK.Leaf10311
import TUK.Leaf10312
import TUK.Leaf10313
import TUK.Leaf10314
import TUK.Leaf10315
import TUK.Leaf10316
import TUK.Leaf10317
import TUK.Leaf10318
import TUK.Leaf10319
import TUK.Leaf10320
import TUK.Leaf10321
import TUK.Leaf10322
import TUK.Leaf10323
import TUK.Leaf10324
import TUK.Leaf10325
import TUK.Leaf10326
import TUK.Leaf10327
import TUK.Leaf10328
import TUK.Leaf10329
import TUK.Leaf10330
import TUK.Leaf10331
import TUK.Leaf10332
import TUK.Leaf10333
import TUK.Leaf10334
import TUK.Leaf10335
import TUK.Leaf10336
import TUK.Leaf10337
import TUK.Leaf10338
import TUK.Leaf10339
import TUK.Leaf10340
import TUK.Leaf10341
import TUK.Leaf10342
import TUK.Leaf10343
import TUK.Leaf10344
import TUK.Leaf10345
import TUK.Leaf10346
import TUK.Leaf10347
import TUK.Leaf10348
import TUK.Leaf10349
import TUK.Leaf10350
import TUK.Leaf10351
import TUK.Leaf10352
import TUK.Leaf10353
import TUK.Leaf10354
import TUK.Leaf10355
import TUK.Leaf10356
import TUK.Leaf10357
import TUK.Leaf10358
import TUK.Leaf10359
import TUK.Leaf10360
import TUK.Leaf10361
import TUK.Leaf10362
import TUK.Leaf10363
import TUK.Leaf10364
import TUK.Leaf10365
import TUK.Leaf10366
import TUK.Leaf10367
import TUK.Leaf10368
import TUK.Leaf10369
import TUK.Leaf10370
import TUK.Leaf10371
import TUK.Leaf10372
import TUK.Leaf10373
import TUK.Leaf10374
import TUK.Leaf10375
import TUK.Leaf10376
import TUK.Leaf10377
import TUK.Leaf10378
import TUK.Leaf10379
import TUK.Leaf10380
import TUK.Leaf10381
import TUK.Leaf10382
import TUK.Leaf10383
import TUK.Leaf10384
import TUK.Leaf10385
import TUK.Leaf10386
import TUK.Leaf10387
import TUK.Leaf10388
import TUK.Leaf10389
import TUK.Leaf10390
import TUK.Leaf10391
import TUK.Leaf10392
import TUK.Leaf10393
import TUK.Leaf10394
import TUK.Leaf10395
import TUK.Leaf10396
import TUK.Leaf10397
import TUK.Leaf10398
import TUK.Leaf10399

/-! Leaves 10300 .. 10399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_103 : ∀ j < 100, 100 * 103 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 103 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_10300
  | 1, _, _ => exact leaf_10301
  | 2, _, _ => exact leaf_10302
  | 3, _, _ => exact leaf_10303
  | 4, _, _ => exact leaf_10304
  | 5, _, _ => exact leaf_10305
  | 6, _, _ => exact leaf_10306
  | 7, _, _ => exact leaf_10307
  | 8, _, _ => exact leaf_10308
  | 9, _, _ => exact leaf_10309
  | 10, _, _ => exact leaf_10310
  | 11, _, _ => exact leaf_10311
  | 12, _, _ => exact leaf_10312
  | 13, _, _ => exact leaf_10313
  | 14, _, _ => exact leaf_10314
  | 15, _, _ => exact leaf_10315
  | 16, _, _ => exact leaf_10316
  | 17, _, _ => exact leaf_10317
  | 18, _, _ => exact leaf_10318
  | 19, _, _ => exact leaf_10319
  | 20, _, _ => exact leaf_10320
  | 21, _, _ => exact leaf_10321
  | 22, _, _ => exact leaf_10322
  | 23, _, _ => exact leaf_10323
  | 24, _, _ => exact leaf_10324
  | 25, _, _ => exact leaf_10325
  | 26, _, _ => exact leaf_10326
  | 27, _, _ => exact leaf_10327
  | 28, _, _ => exact leaf_10328
  | 29, _, _ => exact leaf_10329
  | 30, _, _ => exact leaf_10330
  | 31, _, _ => exact leaf_10331
  | 32, _, _ => exact leaf_10332
  | 33, _, _ => exact leaf_10333
  | 34, _, _ => exact leaf_10334
  | 35, _, _ => exact leaf_10335
  | 36, _, _ => exact leaf_10336
  | 37, _, _ => exact leaf_10337
  | 38, _, _ => exact leaf_10338
  | 39, _, _ => exact leaf_10339
  | 40, _, _ => exact leaf_10340
  | 41, _, _ => exact leaf_10341
  | 42, _, _ => exact leaf_10342
  | 43, _, _ => exact leaf_10343
  | 44, _, _ => exact leaf_10344
  | 45, _, _ => exact leaf_10345
  | 46, _, _ => exact leaf_10346
  | 47, _, _ => exact leaf_10347
  | 48, _, _ => exact leaf_10348
  | 49, _, _ => exact leaf_10349
  | 50, _, _ => exact leaf_10350
  | 51, _, _ => exact leaf_10351
  | 52, _, _ => exact leaf_10352
  | 53, _, _ => exact leaf_10353
  | 54, _, _ => exact leaf_10354
  | 55, _, _ => exact leaf_10355
  | 56, _, _ => exact leaf_10356
  | 57, _, _ => exact leaf_10357
  | 58, _, _ => exact leaf_10358
  | 59, _, _ => exact leaf_10359
  | 60, _, _ => exact leaf_10360
  | 61, _, _ => exact leaf_10361
  | 62, _, _ => exact leaf_10362
  | 63, _, _ => exact leaf_10363
  | 64, _, _ => exact leaf_10364
  | 65, _, _ => exact leaf_10365
  | 66, _, _ => exact leaf_10366
  | 67, _, _ => exact leaf_10367
  | 68, _, _ => exact leaf_10368
  | 69, _, _ => exact leaf_10369
  | 70, _, _ => exact leaf_10370
  | 71, _, _ => exact leaf_10371
  | 72, _, _ => exact leaf_10372
  | 73, _, _ => exact leaf_10373
  | 74, _, _ => exact leaf_10374
  | 75, _, _ => exact leaf_10375
  | 76, _, _ => exact leaf_10376
  | 77, _, _ => exact leaf_10377
  | 78, _, _ => exact leaf_10378
  | 79, _, _ => exact leaf_10379
  | 80, _, _ => exact leaf_10380
  | 81, _, _ => exact leaf_10381
  | 82, _, _ => exact leaf_10382
  | 83, _, _ => exact leaf_10383
  | 84, _, _ => exact leaf_10384
  | 85, _, _ => exact leaf_10385
  | 86, _, _ => exact leaf_10386
  | 87, _, _ => exact leaf_10387
  | 88, _, _ => exact leaf_10388
  | 89, _, _ => exact leaf_10389
  | 90, _, _ => exact leaf_10390
  | 91, _, _ => exact leaf_10391
  | 92, _, _ => exact leaf_10392
  | 93, _, _ => exact leaf_10393
  | 94, _, _ => exact leaf_10394
  | 95, _, _ => exact leaf_10395
  | 96, _, _ => exact leaf_10396
  | 97, _, _ => exact leaf_10397
  | 98, _, _ => exact leaf_10398
  | 99, _, _ => exact leaf_10399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
