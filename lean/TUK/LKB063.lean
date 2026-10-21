import TUK.Leaf06300
import TUK.Leaf06301
import TUK.Leaf06302
import TUK.Leaf06303
import TUK.Leaf06304
import TUK.Leaf06305
import TUK.Leaf06306
import TUK.Leaf06307
import TUK.Leaf06308
import TUK.Leaf06309
import TUK.Leaf06310
import TUK.Leaf06311
import TUK.Leaf06312
import TUK.Leaf06313
import TUK.Leaf06314
import TUK.Leaf06315
import TUK.Leaf06316
import TUK.Leaf06317
import TUK.Leaf06318
import TUK.Leaf06319
import TUK.Leaf06320
import TUK.Leaf06321
import TUK.Leaf06322
import TUK.Leaf06323
import TUK.Leaf06324
import TUK.Leaf06325
import TUK.Leaf06326
import TUK.Leaf06327
import TUK.Leaf06328
import TUK.Leaf06329
import TUK.Leaf06330
import TUK.Leaf06331
import TUK.Leaf06332
import TUK.Leaf06333
import TUK.Leaf06334
import TUK.Leaf06335
import TUK.Leaf06336
import TUK.Leaf06337
import TUK.Leaf06338
import TUK.Leaf06339
import TUK.Leaf06340
import TUK.Leaf06341
import TUK.Leaf06342
import TUK.Leaf06343
import TUK.Leaf06344
import TUK.Leaf06345
import TUK.Leaf06346
import TUK.Leaf06347
import TUK.Leaf06348
import TUK.Leaf06349
import TUK.Leaf06350
import TUK.Leaf06351
import TUK.Leaf06352
import TUK.Leaf06353
import TUK.Leaf06354
import TUK.Leaf06355
import TUK.Leaf06356
import TUK.Leaf06357
import TUK.Leaf06358
import TUK.Leaf06359
import TUK.Leaf06360
import TUK.Leaf06361
import TUK.Leaf06362
import TUK.Leaf06363
import TUK.Leaf06364
import TUK.Leaf06365
import TUK.Leaf06366
import TUK.Leaf06367
import TUK.Leaf06368
import TUK.Leaf06369
import TUK.Leaf06370
import TUK.Leaf06371
import TUK.Leaf06372
import TUK.Leaf06373
import TUK.Leaf06374
import TUK.Leaf06375
import TUK.Leaf06376
import TUK.Leaf06377
import TUK.Leaf06378
import TUK.Leaf06379
import TUK.Leaf06380
import TUK.Leaf06381
import TUK.Leaf06382
import TUK.Leaf06383
import TUK.Leaf06384
import TUK.Leaf06385
import TUK.Leaf06386
import TUK.Leaf06387
import TUK.Leaf06388
import TUK.Leaf06389
import TUK.Leaf06390
import TUK.Leaf06391
import TUK.Leaf06392
import TUK.Leaf06393
import TUK.Leaf06394
import TUK.Leaf06395
import TUK.Leaf06396
import TUK.Leaf06397
import TUK.Leaf06398
import TUK.Leaf06399

/-! Leaves 6300 .. 6399 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_63 : ∀ j < 100, 100 * 63 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 63 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_06300
  | 1, _, _ => exact leaf_06301
  | 2, _, _ => exact leaf_06302
  | 3, _, _ => exact leaf_06303
  | 4, _, _ => exact leaf_06304
  | 5, _, _ => exact leaf_06305
  | 6, _, _ => exact leaf_06306
  | 7, _, _ => exact leaf_06307
  | 8, _, _ => exact leaf_06308
  | 9, _, _ => exact leaf_06309
  | 10, _, _ => exact leaf_06310
  | 11, _, _ => exact leaf_06311
  | 12, _, _ => exact leaf_06312
  | 13, _, _ => exact leaf_06313
  | 14, _, _ => exact leaf_06314
  | 15, _, _ => exact leaf_06315
  | 16, _, _ => exact leaf_06316
  | 17, _, _ => exact leaf_06317
  | 18, _, _ => exact leaf_06318
  | 19, _, _ => exact leaf_06319
  | 20, _, _ => exact leaf_06320
  | 21, _, _ => exact leaf_06321
  | 22, _, _ => exact leaf_06322
  | 23, _, _ => exact leaf_06323
  | 24, _, _ => exact leaf_06324
  | 25, _, _ => exact leaf_06325
  | 26, _, _ => exact leaf_06326
  | 27, _, _ => exact leaf_06327
  | 28, _, _ => exact leaf_06328
  | 29, _, _ => exact leaf_06329
  | 30, _, _ => exact leaf_06330
  | 31, _, _ => exact leaf_06331
  | 32, _, _ => exact leaf_06332
  | 33, _, _ => exact leaf_06333
  | 34, _, _ => exact leaf_06334
  | 35, _, _ => exact leaf_06335
  | 36, _, _ => exact leaf_06336
  | 37, _, _ => exact leaf_06337
  | 38, _, _ => exact leaf_06338
  | 39, _, _ => exact leaf_06339
  | 40, _, _ => exact leaf_06340
  | 41, _, _ => exact leaf_06341
  | 42, _, _ => exact leaf_06342
  | 43, _, _ => exact leaf_06343
  | 44, _, _ => exact leaf_06344
  | 45, _, _ => exact leaf_06345
  | 46, _, _ => exact leaf_06346
  | 47, _, _ => exact leaf_06347
  | 48, _, _ => exact leaf_06348
  | 49, _, _ => exact leaf_06349
  | 50, _, _ => exact leaf_06350
  | 51, _, _ => exact leaf_06351
  | 52, _, _ => exact leaf_06352
  | 53, _, _ => exact leaf_06353
  | 54, _, _ => exact leaf_06354
  | 55, _, _ => exact leaf_06355
  | 56, _, _ => exact leaf_06356
  | 57, _, _ => exact leaf_06357
  | 58, _, _ => exact leaf_06358
  | 59, _, _ => exact leaf_06359
  | 60, _, _ => exact leaf_06360
  | 61, _, _ => exact leaf_06361
  | 62, _, _ => exact leaf_06362
  | 63, _, _ => exact leaf_06363
  | 64, _, _ => exact leaf_06364
  | 65, _, _ => exact leaf_06365
  | 66, _, _ => exact leaf_06366
  | 67, _, _ => exact leaf_06367
  | 68, _, _ => exact leaf_06368
  | 69, _, _ => exact leaf_06369
  | 70, _, _ => exact leaf_06370
  | 71, _, _ => exact leaf_06371
  | 72, _, _ => exact leaf_06372
  | 73, _, _ => exact leaf_06373
  | 74, _, _ => exact leaf_06374
  | 75, _, _ => exact leaf_06375
  | 76, _, _ => exact leaf_06376
  | 77, _, _ => exact leaf_06377
  | 78, _, _ => exact leaf_06378
  | 79, _, _ => exact leaf_06379
  | 80, _, _ => exact leaf_06380
  | 81, _, _ => exact leaf_06381
  | 82, _, _ => exact leaf_06382
  | 83, _, _ => exact leaf_06383
  | 84, _, _ => exact leaf_06384
  | 85, _, _ => exact leaf_06385
  | 86, _, _ => exact leaf_06386
  | 87, _, _ => exact leaf_06387
  | 88, _, _ => exact leaf_06388
  | 89, _, _ => exact leaf_06389
  | 90, _, _ => exact leaf_06390
  | 91, _, _ => exact leaf_06391
  | 92, _, _ => exact leaf_06392
  | 93, _, _ => exact leaf_06393
  | 94, _, _ => exact leaf_06394
  | 95, _, _ => exact leaf_06395
  | 96, _, _ => exact leaf_06396
  | 97, _, _ => exact leaf_06397
  | 98, _, _ => exact leaf_06398
  | 99, _, _ => exact leaf_06399
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
