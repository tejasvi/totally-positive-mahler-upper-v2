import TUK.Leaf01300
import TUK.Leaf01301
import TUK.Leaf01302
import TUK.Leaf01303
import TUK.Leaf01304
import TUK.Leaf01305
import TUK.Leaf01306
import TUK.Leaf01307
import TUK.Leaf01308
import TUK.Leaf01309
import TUK.Leaf01310
import TUK.Leaf01311
import TUK.Leaf01312
import TUK.Leaf01313
import TUK.Leaf01314
import TUK.Leaf01315
import TUK.Leaf01316
import TUK.Leaf01317
import TUK.Leaf01318
import TUK.Leaf01319
import TUK.Leaf01320
import TUK.Leaf01321
import TUK.Leaf01322
import TUK.Leaf01323
import TUK.Leaf01324
import TUK.Leaf01325
import TUK.Leaf01326
import TUK.Leaf01327
import TUK.Leaf01328
import TUK.Leaf01329
import TUK.Leaf01330
import TUK.Leaf01331
import TUK.Leaf01332
import TUK.Leaf01333
import TUK.Leaf01334
import TUK.Leaf01335
import TUK.Leaf01336
import TUK.Leaf01337
import TUK.Leaf01338
import TUK.Leaf01339
import TUK.Leaf01340
import TUK.Leaf01341
import TUK.Leaf01342
import TUK.Leaf01343
import TUK.Leaf01344
import TUK.Leaf01345
import TUK.Leaf01346
import TUK.Leaf01347
import TUK.Leaf01348
import TUK.Leaf01349
import TUK.Leaf01350
import TUK.Leaf01351
import TUK.Leaf01352
import TUK.Leaf01353
import TUK.Leaf01354
import TUK.Leaf01355
import TUK.Leaf01356
import TUK.Leaf01357
import TUK.Leaf01358
import TUK.Leaf01359
import TUK.Leaf01360
import TUK.Leaf01361
import TUK.Leaf01362
import TUK.Leaf01363
import TUK.Leaf01364
import TUK.Leaf01365
import TUK.Leaf01366
import TUK.Leaf01367
import TUK.Leaf01368
import TUK.Leaf01369
import TUK.Leaf01370
import TUK.Leaf01371
import TUK.Leaf01372
import TUK.Leaf01373
import TUK.Leaf01374
import TUK.Leaf01375
import TUK.Leaf01376
import TUK.Leaf01377
import TUK.Leaf01378
import TUK.Leaf01379
import TUK.Leaf01380
import TUK.Leaf01381
import TUK.Leaf01382
import TUK.Leaf01383
import TUK.Leaf01384
import TUK.Leaf01385
import TUK.Leaf01386
import TUK.Leaf01387
import TUK.Leaf01388
import TUK.Leaf01389
import TUK.Leaf01390
import TUK.Leaf01391
import TUK.Leaf01392
import TUK.Leaf01393
import TUK.Leaf01394
import TUK.Leaf01395
import TUK.Leaf01396
import TUK.Leaf01397
import TUK.Leaf01398
import TUK.Leaf01399

/-! Leaves 1300 .. 1399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_13 : ∀ j < 100, 100 * 13 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 13 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_01300
  | 1, _, _ => exact leaf_01301
  | 2, _, _ => exact leaf_01302
  | 3, _, _ => exact leaf_01303
  | 4, _, _ => exact leaf_01304
  | 5, _, _ => exact leaf_01305
  | 6, _, _ => exact leaf_01306
  | 7, _, _ => exact leaf_01307
  | 8, _, _ => exact leaf_01308
  | 9, _, _ => exact leaf_01309
  | 10, _, _ => exact leaf_01310
  | 11, _, _ => exact leaf_01311
  | 12, _, _ => exact leaf_01312
  | 13, _, _ => exact leaf_01313
  | 14, _, _ => exact leaf_01314
  | 15, _, _ => exact leaf_01315
  | 16, _, _ => exact leaf_01316
  | 17, _, _ => exact leaf_01317
  | 18, _, _ => exact leaf_01318
  | 19, _, _ => exact leaf_01319
  | 20, _, _ => exact leaf_01320
  | 21, _, _ => exact leaf_01321
  | 22, _, _ => exact leaf_01322
  | 23, _, _ => exact leaf_01323
  | 24, _, _ => exact leaf_01324
  | 25, _, _ => exact leaf_01325
  | 26, _, _ => exact leaf_01326
  | 27, _, _ => exact leaf_01327
  | 28, _, _ => exact leaf_01328
  | 29, _, _ => exact leaf_01329
  | 30, _, _ => exact leaf_01330
  | 31, _, _ => exact leaf_01331
  | 32, _, _ => exact leaf_01332
  | 33, _, _ => exact leaf_01333
  | 34, _, _ => exact leaf_01334
  | 35, _, _ => exact leaf_01335
  | 36, _, _ => exact leaf_01336
  | 37, _, _ => exact leaf_01337
  | 38, _, _ => exact leaf_01338
  | 39, _, _ => exact leaf_01339
  | 40, _, _ => exact leaf_01340
  | 41, _, _ => exact leaf_01341
  | 42, _, _ => exact leaf_01342
  | 43, _, _ => exact leaf_01343
  | 44, _, _ => exact leaf_01344
  | 45, _, _ => exact leaf_01345
  | 46, _, _ => exact leaf_01346
  | 47, _, _ => exact leaf_01347
  | 48, _, _ => exact leaf_01348
  | 49, _, _ => exact leaf_01349
  | 50, _, _ => exact leaf_01350
  | 51, _, _ => exact leaf_01351
  | 52, _, _ => exact leaf_01352
  | 53, _, _ => exact leaf_01353
  | 54, _, _ => exact leaf_01354
  | 55, _, _ => exact leaf_01355
  | 56, _, _ => exact leaf_01356
  | 57, _, _ => exact leaf_01357
  | 58, _, _ => exact leaf_01358
  | 59, _, _ => exact leaf_01359
  | 60, _, _ => exact leaf_01360
  | 61, _, _ => exact leaf_01361
  | 62, _, _ => exact leaf_01362
  | 63, _, _ => exact leaf_01363
  | 64, _, _ => exact leaf_01364
  | 65, _, _ => exact leaf_01365
  | 66, _, _ => exact leaf_01366
  | 67, _, _ => exact leaf_01367
  | 68, _, _ => exact leaf_01368
  | 69, _, _ => exact leaf_01369
  | 70, _, _ => exact leaf_01370
  | 71, _, _ => exact leaf_01371
  | 72, _, _ => exact leaf_01372
  | 73, _, _ => exact leaf_01373
  | 74, _, _ => exact leaf_01374
  | 75, _, _ => exact leaf_01375
  | 76, _, _ => exact leaf_01376
  | 77, _, _ => exact leaf_01377
  | 78, _, _ => exact leaf_01378
  | 79, _, _ => exact leaf_01379
  | 80, _, _ => exact leaf_01380
  | 81, _, _ => exact leaf_01381
  | 82, _, _ => exact leaf_01382
  | 83, _, _ => exact leaf_01383
  | 84, _, _ => exact leaf_01384
  | 85, _, _ => exact leaf_01385
  | 86, _, _ => exact leaf_01386
  | 87, _, _ => exact leaf_01387
  | 88, _, _ => exact leaf_01388
  | 89, _, _ => exact leaf_01389
  | 90, _, _ => exact leaf_01390
  | 91, _, _ => exact leaf_01391
  | 92, _, _ => exact leaf_01392
  | 93, _, _ => exact leaf_01393
  | 94, _, _ => exact leaf_01394
  | 95, _, _ => exact leaf_01395
  | 96, _, _ => exact leaf_01396
  | 97, _, _ => exact leaf_01397
  | 98, _, _ => exact leaf_01398
  | 99, _, _ => exact leaf_01399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
