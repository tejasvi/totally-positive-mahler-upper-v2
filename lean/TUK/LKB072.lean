import TUK.Leaf07200
import TUK.Leaf07201
import TUK.Leaf07202
import TUK.Leaf07203
import TUK.Leaf07204
import TUK.Leaf07205
import TUK.Leaf07206
import TUK.Leaf07207
import TUK.Leaf07208
import TUK.Leaf07209
import TUK.Leaf07210
import TUK.Leaf07211
import TUK.Leaf07212
import TUK.Leaf07213
import TUK.Leaf07214
import TUK.Leaf07215
import TUK.Leaf07216
import TUK.Leaf07217
import TUK.Leaf07218
import TUK.Leaf07219
import TUK.Leaf07220
import TUK.Leaf07221
import TUK.Leaf07222
import TUK.Leaf07223
import TUK.Leaf07224
import TUK.Leaf07225
import TUK.Leaf07226
import TUK.Leaf07227
import TUK.Leaf07228
import TUK.Leaf07229
import TUK.Leaf07230
import TUK.Leaf07231
import TUK.Leaf07232
import TUK.Leaf07233
import TUK.Leaf07234
import TUK.Leaf07235
import TUK.Leaf07236
import TUK.Leaf07237
import TUK.Leaf07238
import TUK.Leaf07239
import TUK.Leaf07240
import TUK.Leaf07241
import TUK.Leaf07242
import TUK.Leaf07243
import TUK.Leaf07244
import TUK.Leaf07245
import TUK.Leaf07246
import TUK.Leaf07247
import TUK.Leaf07248
import TUK.Leaf07249
import TUK.Leaf07250
import TUK.Leaf07251
import TUK.Leaf07252
import TUK.Leaf07253
import TUK.Leaf07254
import TUK.Leaf07255
import TUK.Leaf07256
import TUK.Leaf07257
import TUK.Leaf07258
import TUK.Leaf07259
import TUK.Leaf07260
import TUK.Leaf07261
import TUK.Leaf07262
import TUK.Leaf07263
import TUK.Leaf07264
import TUK.Leaf07265
import TUK.Leaf07266
import TUK.Leaf07267
import TUK.Leaf07268
import TUK.Leaf07269
import TUK.Leaf07270
import TUK.Leaf07271
import TUK.Leaf07272
import TUK.Leaf07273
import TUK.Leaf07274
import TUK.Leaf07275
import TUK.Leaf07276
import TUK.Leaf07277
import TUK.Leaf07278
import TUK.Leaf07279
import TUK.Leaf07280
import TUK.Leaf07281
import TUK.Leaf07282
import TUK.Leaf07283
import TUK.Leaf07284
import TUK.Leaf07285
import TUK.Leaf07286
import TUK.Leaf07287
import TUK.Leaf07288
import TUK.Leaf07289
import TUK.Leaf07290
import TUK.Leaf07291
import TUK.Leaf07292
import TUK.Leaf07293
import TUK.Leaf07294
import TUK.Leaf07295
import TUK.Leaf07296
import TUK.Leaf07297
import TUK.Leaf07298
import TUK.Leaf07299

/-! Leaves 7200 .. 7299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_72 : ∀ j < 100, 100 * 72 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 72 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_07200
  | 1, _, _ => exact leaf_07201
  | 2, _, _ => exact leaf_07202
  | 3, _, _ => exact leaf_07203
  | 4, _, _ => exact leaf_07204
  | 5, _, _ => exact leaf_07205
  | 6, _, _ => exact leaf_07206
  | 7, _, _ => exact leaf_07207
  | 8, _, _ => exact leaf_07208
  | 9, _, _ => exact leaf_07209
  | 10, _, _ => exact leaf_07210
  | 11, _, _ => exact leaf_07211
  | 12, _, _ => exact leaf_07212
  | 13, _, _ => exact leaf_07213
  | 14, _, _ => exact leaf_07214
  | 15, _, _ => exact leaf_07215
  | 16, _, _ => exact leaf_07216
  | 17, _, _ => exact leaf_07217
  | 18, _, _ => exact leaf_07218
  | 19, _, _ => exact leaf_07219
  | 20, _, _ => exact leaf_07220
  | 21, _, _ => exact leaf_07221
  | 22, _, _ => exact leaf_07222
  | 23, _, _ => exact leaf_07223
  | 24, _, _ => exact leaf_07224
  | 25, _, _ => exact leaf_07225
  | 26, _, _ => exact leaf_07226
  | 27, _, _ => exact leaf_07227
  | 28, _, _ => exact leaf_07228
  | 29, _, _ => exact leaf_07229
  | 30, _, _ => exact leaf_07230
  | 31, _, _ => exact leaf_07231
  | 32, _, _ => exact leaf_07232
  | 33, _, _ => exact leaf_07233
  | 34, _, _ => exact leaf_07234
  | 35, _, _ => exact leaf_07235
  | 36, _, _ => exact leaf_07236
  | 37, _, _ => exact leaf_07237
  | 38, _, _ => exact leaf_07238
  | 39, _, _ => exact leaf_07239
  | 40, _, _ => exact leaf_07240
  | 41, _, _ => exact leaf_07241
  | 42, _, _ => exact leaf_07242
  | 43, _, _ => exact leaf_07243
  | 44, _, _ => exact leaf_07244
  | 45, _, _ => exact leaf_07245
  | 46, _, _ => exact leaf_07246
  | 47, _, _ => exact leaf_07247
  | 48, _, _ => exact leaf_07248
  | 49, _, _ => exact leaf_07249
  | 50, _, _ => exact leaf_07250
  | 51, _, _ => exact leaf_07251
  | 52, _, _ => exact leaf_07252
  | 53, _, _ => exact leaf_07253
  | 54, _, _ => exact leaf_07254
  | 55, _, _ => exact leaf_07255
  | 56, _, _ => exact leaf_07256
  | 57, _, _ => exact leaf_07257
  | 58, _, _ => exact leaf_07258
  | 59, _, _ => exact leaf_07259
  | 60, _, _ => exact leaf_07260
  | 61, _, _ => exact leaf_07261
  | 62, _, _ => exact leaf_07262
  | 63, _, _ => exact leaf_07263
  | 64, _, _ => exact leaf_07264
  | 65, _, _ => exact leaf_07265
  | 66, _, _ => exact leaf_07266
  | 67, _, _ => exact leaf_07267
  | 68, _, _ => exact leaf_07268
  | 69, _, _ => exact leaf_07269
  | 70, _, _ => exact leaf_07270
  | 71, _, _ => exact leaf_07271
  | 72, _, _ => exact leaf_07272
  | 73, _, _ => exact leaf_07273
  | 74, _, _ => exact leaf_07274
  | 75, _, _ => exact leaf_07275
  | 76, _, _ => exact leaf_07276
  | 77, _, _ => exact leaf_07277
  | 78, _, _ => exact leaf_07278
  | 79, _, _ => exact leaf_07279
  | 80, _, _ => exact leaf_07280
  | 81, _, _ => exact leaf_07281
  | 82, _, _ => exact leaf_07282
  | 83, _, _ => exact leaf_07283
  | 84, _, _ => exact leaf_07284
  | 85, _, _ => exact leaf_07285
  | 86, _, _ => exact leaf_07286
  | 87, _, _ => exact leaf_07287
  | 88, _, _ => exact leaf_07288
  | 89, _, _ => exact leaf_07289
  | 90, _, _ => exact leaf_07290
  | 91, _, _ => exact leaf_07291
  | 92, _, _ => exact leaf_07292
  | 93, _, _ => exact leaf_07293
  | 94, _, _ => exact leaf_07294
  | 95, _, _ => exact leaf_07295
  | 96, _, _ => exact leaf_07296
  | 97, _, _ => exact leaf_07297
  | 98, _, _ => exact leaf_07298
  | 99, _, _ => exact leaf_07299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
