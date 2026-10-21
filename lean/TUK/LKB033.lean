import TUK.Leaf03300
import TUK.Leaf03301
import TUK.Leaf03302
import TUK.Leaf03303
import TUK.Leaf03304
import TUK.Leaf03305
import TUK.Leaf03306
import TUK.Leaf03307
import TUK.Leaf03308
import TUK.Leaf03309
import TUK.Leaf03310
import TUK.Leaf03311
import TUK.Leaf03312
import TUK.Leaf03313
import TUK.Leaf03314
import TUK.Leaf03315
import TUK.Leaf03316
import TUK.Leaf03317
import TUK.Leaf03318
import TUK.Leaf03319
import TUK.Leaf03320
import TUK.Leaf03321
import TUK.Leaf03322
import TUK.Leaf03323
import TUK.Leaf03324
import TUK.Leaf03325
import TUK.Leaf03326
import TUK.Leaf03327
import TUK.Leaf03328
import TUK.Leaf03329
import TUK.Leaf03330
import TUK.Leaf03331
import TUK.Leaf03332
import TUK.Leaf03333
import TUK.Leaf03334
import TUK.Leaf03335
import TUK.Leaf03336
import TUK.Leaf03337
import TUK.Leaf03338
import TUK.Leaf03339
import TUK.Leaf03340
import TUK.Leaf03341
import TUK.Leaf03342
import TUK.Leaf03343
import TUK.Leaf03344
import TUK.Leaf03345
import TUK.Leaf03346
import TUK.Leaf03347
import TUK.Leaf03348
import TUK.Leaf03349
import TUK.Leaf03350
import TUK.Leaf03351
import TUK.Leaf03352
import TUK.Leaf03353
import TUK.Leaf03354
import TUK.Leaf03355
import TUK.Leaf03356
import TUK.Leaf03357
import TUK.Leaf03358
import TUK.Leaf03359
import TUK.Leaf03360
import TUK.Leaf03361
import TUK.Leaf03362
import TUK.Leaf03363
import TUK.Leaf03364
import TUK.Leaf03365
import TUK.Leaf03366
import TUK.Leaf03367
import TUK.Leaf03368
import TUK.Leaf03369
import TUK.Leaf03370
import TUK.Leaf03371
import TUK.Leaf03372
import TUK.Leaf03373
import TUK.Leaf03374
import TUK.Leaf03375
import TUK.Leaf03376
import TUK.Leaf03377
import TUK.Leaf03378
import TUK.Leaf03379
import TUK.Leaf03380
import TUK.Leaf03381
import TUK.Leaf03382
import TUK.Leaf03383
import TUK.Leaf03384
import TUK.Leaf03385
import TUK.Leaf03386
import TUK.Leaf03387
import TUK.Leaf03388
import TUK.Leaf03389
import TUK.Leaf03390
import TUK.Leaf03391
import TUK.Leaf03392
import TUK.Leaf03393
import TUK.Leaf03394
import TUK.Leaf03395
import TUK.Leaf03396
import TUK.Leaf03397
import TUK.Leaf03398
import TUK.Leaf03399

/-! Leaves 3300 .. 3399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_33 : ∀ j < 100, 100 * 33 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 33 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_03300
  | 1, _, _ => exact leaf_03301
  | 2, _, _ => exact leaf_03302
  | 3, _, _ => exact leaf_03303
  | 4, _, _ => exact leaf_03304
  | 5, _, _ => exact leaf_03305
  | 6, _, _ => exact leaf_03306
  | 7, _, _ => exact leaf_03307
  | 8, _, _ => exact leaf_03308
  | 9, _, _ => exact leaf_03309
  | 10, _, _ => exact leaf_03310
  | 11, _, _ => exact leaf_03311
  | 12, _, _ => exact leaf_03312
  | 13, _, _ => exact leaf_03313
  | 14, _, _ => exact leaf_03314
  | 15, _, _ => exact leaf_03315
  | 16, _, _ => exact leaf_03316
  | 17, _, _ => exact leaf_03317
  | 18, _, _ => exact leaf_03318
  | 19, _, _ => exact leaf_03319
  | 20, _, _ => exact leaf_03320
  | 21, _, _ => exact leaf_03321
  | 22, _, _ => exact leaf_03322
  | 23, _, _ => exact leaf_03323
  | 24, _, _ => exact leaf_03324
  | 25, _, _ => exact leaf_03325
  | 26, _, _ => exact leaf_03326
  | 27, _, _ => exact leaf_03327
  | 28, _, _ => exact leaf_03328
  | 29, _, _ => exact leaf_03329
  | 30, _, _ => exact leaf_03330
  | 31, _, _ => exact leaf_03331
  | 32, _, _ => exact leaf_03332
  | 33, _, _ => exact leaf_03333
  | 34, _, _ => exact leaf_03334
  | 35, _, _ => exact leaf_03335
  | 36, _, _ => exact leaf_03336
  | 37, _, _ => exact leaf_03337
  | 38, _, _ => exact leaf_03338
  | 39, _, _ => exact leaf_03339
  | 40, _, _ => exact leaf_03340
  | 41, _, _ => exact leaf_03341
  | 42, _, _ => exact leaf_03342
  | 43, _, _ => exact leaf_03343
  | 44, _, _ => exact leaf_03344
  | 45, _, _ => exact leaf_03345
  | 46, _, _ => exact leaf_03346
  | 47, _, _ => exact leaf_03347
  | 48, _, _ => exact leaf_03348
  | 49, _, _ => exact leaf_03349
  | 50, _, _ => exact leaf_03350
  | 51, _, _ => exact leaf_03351
  | 52, _, _ => exact leaf_03352
  | 53, _, _ => exact leaf_03353
  | 54, _, _ => exact leaf_03354
  | 55, _, _ => exact leaf_03355
  | 56, _, _ => exact leaf_03356
  | 57, _, _ => exact leaf_03357
  | 58, _, _ => exact leaf_03358
  | 59, _, _ => exact leaf_03359
  | 60, _, _ => exact leaf_03360
  | 61, _, _ => exact leaf_03361
  | 62, _, _ => exact leaf_03362
  | 63, _, _ => exact leaf_03363
  | 64, _, _ => exact leaf_03364
  | 65, _, _ => exact leaf_03365
  | 66, _, _ => exact leaf_03366
  | 67, _, _ => exact leaf_03367
  | 68, _, _ => exact leaf_03368
  | 69, _, _ => exact leaf_03369
  | 70, _, _ => exact leaf_03370
  | 71, _, _ => exact leaf_03371
  | 72, _, _ => exact leaf_03372
  | 73, _, _ => exact leaf_03373
  | 74, _, _ => exact leaf_03374
  | 75, _, _ => exact leaf_03375
  | 76, _, _ => exact leaf_03376
  | 77, _, _ => exact leaf_03377
  | 78, _, _ => exact leaf_03378
  | 79, _, _ => exact leaf_03379
  | 80, _, _ => exact leaf_03380
  | 81, _, _ => exact leaf_03381
  | 82, _, _ => exact leaf_03382
  | 83, _, _ => exact leaf_03383
  | 84, _, _ => exact leaf_03384
  | 85, _, _ => exact leaf_03385
  | 86, _, _ => exact leaf_03386
  | 87, _, _ => exact leaf_03387
  | 88, _, _ => exact leaf_03388
  | 89, _, _ => exact leaf_03389
  | 90, _, _ => exact leaf_03390
  | 91, _, _ => exact leaf_03391
  | 92, _, _ => exact leaf_03392
  | 93, _, _ => exact leaf_03393
  | 94, _, _ => exact leaf_03394
  | 95, _, _ => exact leaf_03395
  | 96, _, _ => exact leaf_03396
  | 97, _, _ => exact leaf_03397
  | 98, _, _ => exact leaf_03398
  | 99, _, _ => exact leaf_03399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
