import TUK.Leaf01200
import TUK.Leaf01201
import TUK.Leaf01202
import TUK.Leaf01203
import TUK.Leaf01204
import TUK.Leaf01205
import TUK.Leaf01206
import TUK.Leaf01207
import TUK.Leaf01208
import TUK.Leaf01209
import TUK.Leaf01210
import TUK.Leaf01211
import TUK.Leaf01212
import TUK.Leaf01213
import TUK.Leaf01214
import TUK.Leaf01215
import TUK.Leaf01216
import TUK.Leaf01217
import TUK.Leaf01218
import TUK.Leaf01219
import TUK.Leaf01220
import TUK.Leaf01221
import TUK.Leaf01222
import TUK.Leaf01223
import TUK.Leaf01224
import TUK.Leaf01225
import TUK.Leaf01226
import TUK.Leaf01227
import TUK.Leaf01228
import TUK.Leaf01229
import TUK.Leaf01230
import TUK.Leaf01231
import TUK.Leaf01232
import TUK.Leaf01233
import TUK.Leaf01234
import TUK.Leaf01235
import TUK.Leaf01236
import TUK.Leaf01237
import TUK.Leaf01238
import TUK.Leaf01239
import TUK.Leaf01240
import TUK.Leaf01241
import TUK.Leaf01242
import TUK.Leaf01243
import TUK.Leaf01244
import TUK.Leaf01245
import TUK.Leaf01246
import TUK.Leaf01247
import TUK.Leaf01248
import TUK.Leaf01249
import TUK.Leaf01250
import TUK.Leaf01251
import TUK.Leaf01252
import TUK.Leaf01253
import TUK.Leaf01254
import TUK.Leaf01255
import TUK.Leaf01256
import TUK.Leaf01257
import TUK.Leaf01258
import TUK.Leaf01259
import TUK.Leaf01260
import TUK.Leaf01261
import TUK.Leaf01262
import TUK.Leaf01263
import TUK.Leaf01264
import TUK.Leaf01265
import TUK.Leaf01266
import TUK.Leaf01267
import TUK.Leaf01268
import TUK.Leaf01269
import TUK.Leaf01270
import TUK.Leaf01271
import TUK.Leaf01272
import TUK.Leaf01273
import TUK.Leaf01274
import TUK.Leaf01275
import TUK.Leaf01276
import TUK.Leaf01277
import TUK.Leaf01278
import TUK.Leaf01279
import TUK.Leaf01280
import TUK.Leaf01281
import TUK.Leaf01282
import TUK.Leaf01283
import TUK.Leaf01284
import TUK.Leaf01285
import TUK.Leaf01286
import TUK.Leaf01287
import TUK.Leaf01288
import TUK.Leaf01289
import TUK.Leaf01290
import TUK.Leaf01291
import TUK.Leaf01292
import TUK.Leaf01293
import TUK.Leaf01294
import TUK.Leaf01295
import TUK.Leaf01296
import TUK.Leaf01297
import TUK.Leaf01298
import TUK.Leaf01299

/-! Leaves 1200 .. 1299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_12 : ∀ j < 100, 100 * 12 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 12 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_01200
  | 1, _, _ => exact leaf_01201
  | 2, _, _ => exact leaf_01202
  | 3, _, _ => exact leaf_01203
  | 4, _, _ => exact leaf_01204
  | 5, _, _ => exact leaf_01205
  | 6, _, _ => exact leaf_01206
  | 7, _, _ => exact leaf_01207
  | 8, _, _ => exact leaf_01208
  | 9, _, _ => exact leaf_01209
  | 10, _, _ => exact leaf_01210
  | 11, _, _ => exact leaf_01211
  | 12, _, _ => exact leaf_01212
  | 13, _, _ => exact leaf_01213
  | 14, _, _ => exact leaf_01214
  | 15, _, _ => exact leaf_01215
  | 16, _, _ => exact leaf_01216
  | 17, _, _ => exact leaf_01217
  | 18, _, _ => exact leaf_01218
  | 19, _, _ => exact leaf_01219
  | 20, _, _ => exact leaf_01220
  | 21, _, _ => exact leaf_01221
  | 22, _, _ => exact leaf_01222
  | 23, _, _ => exact leaf_01223
  | 24, _, _ => exact leaf_01224
  | 25, _, _ => exact leaf_01225
  | 26, _, _ => exact leaf_01226
  | 27, _, _ => exact leaf_01227
  | 28, _, _ => exact leaf_01228
  | 29, _, _ => exact leaf_01229
  | 30, _, _ => exact leaf_01230
  | 31, _, _ => exact leaf_01231
  | 32, _, _ => exact leaf_01232
  | 33, _, _ => exact leaf_01233
  | 34, _, _ => exact leaf_01234
  | 35, _, _ => exact leaf_01235
  | 36, _, _ => exact leaf_01236
  | 37, _, _ => exact leaf_01237
  | 38, _, _ => exact leaf_01238
  | 39, _, _ => exact leaf_01239
  | 40, _, _ => exact leaf_01240
  | 41, _, _ => exact leaf_01241
  | 42, _, _ => exact leaf_01242
  | 43, _, _ => exact leaf_01243
  | 44, _, _ => exact leaf_01244
  | 45, _, _ => exact leaf_01245
  | 46, _, _ => exact leaf_01246
  | 47, _, _ => exact leaf_01247
  | 48, _, _ => exact leaf_01248
  | 49, _, _ => exact leaf_01249
  | 50, _, _ => exact leaf_01250
  | 51, _, _ => exact leaf_01251
  | 52, _, _ => exact leaf_01252
  | 53, _, _ => exact leaf_01253
  | 54, _, _ => exact leaf_01254
  | 55, _, _ => exact leaf_01255
  | 56, _, _ => exact leaf_01256
  | 57, _, _ => exact leaf_01257
  | 58, _, _ => exact leaf_01258
  | 59, _, _ => exact leaf_01259
  | 60, _, _ => exact leaf_01260
  | 61, _, _ => exact leaf_01261
  | 62, _, _ => exact leaf_01262
  | 63, _, _ => exact leaf_01263
  | 64, _, _ => exact leaf_01264
  | 65, _, _ => exact leaf_01265
  | 66, _, _ => exact leaf_01266
  | 67, _, _ => exact leaf_01267
  | 68, _, _ => exact leaf_01268
  | 69, _, _ => exact leaf_01269
  | 70, _, _ => exact leaf_01270
  | 71, _, _ => exact leaf_01271
  | 72, _, _ => exact leaf_01272
  | 73, _, _ => exact leaf_01273
  | 74, _, _ => exact leaf_01274
  | 75, _, _ => exact leaf_01275
  | 76, _, _ => exact leaf_01276
  | 77, _, _ => exact leaf_01277
  | 78, _, _ => exact leaf_01278
  | 79, _, _ => exact leaf_01279
  | 80, _, _ => exact leaf_01280
  | 81, _, _ => exact leaf_01281
  | 82, _, _ => exact leaf_01282
  | 83, _, _ => exact leaf_01283
  | 84, _, _ => exact leaf_01284
  | 85, _, _ => exact leaf_01285
  | 86, _, _ => exact leaf_01286
  | 87, _, _ => exact leaf_01287
  | 88, _, _ => exact leaf_01288
  | 89, _, _ => exact leaf_01289
  | 90, _, _ => exact leaf_01290
  | 91, _, _ => exact leaf_01291
  | 92, _, _ => exact leaf_01292
  | 93, _, _ => exact leaf_01293
  | 94, _, _ => exact leaf_01294
  | 95, _, _ => exact leaf_01295
  | 96, _, _ => exact leaf_01296
  | 97, _, _ => exact leaf_01297
  | 98, _, _ => exact leaf_01298
  | 99, _, _ => exact leaf_01299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
