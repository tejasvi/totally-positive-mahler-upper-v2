import TUK.Leaf09200
import TUK.Leaf09201
import TUK.Leaf09202
import TUK.Leaf09203
import TUK.Leaf09204
import TUK.Leaf09205
import TUK.Leaf09206
import TUK.Leaf09207
import TUK.Leaf09208
import TUK.Leaf09209
import TUK.Leaf09210
import TUK.Leaf09211
import TUK.Leaf09212
import TUK.Leaf09213
import TUK.Leaf09214
import TUK.Leaf09215
import TUK.Leaf09216
import TUK.Leaf09217
import TUK.Leaf09218
import TUK.Leaf09219
import TUK.Leaf09220
import TUK.Leaf09221
import TUK.Leaf09222
import TUK.Leaf09223
import TUK.Leaf09224
import TUK.Leaf09225
import TUK.Leaf09226
import TUK.Leaf09227
import TUK.Leaf09228
import TUK.Leaf09229
import TUK.Leaf09230
import TUK.Leaf09231
import TUK.Leaf09232
import TUK.Leaf09233
import TUK.Leaf09234
import TUK.Leaf09235
import TUK.Leaf09236
import TUK.Leaf09237
import TUK.Leaf09238
import TUK.Leaf09239
import TUK.Leaf09240
import TUK.Leaf09241
import TUK.Leaf09242
import TUK.Leaf09243
import TUK.Leaf09244
import TUK.Leaf09245
import TUK.Leaf09246
import TUK.Leaf09247
import TUK.Leaf09248
import TUK.Leaf09249
import TUK.Leaf09250
import TUK.Leaf09251
import TUK.Leaf09252
import TUK.Leaf09253
import TUK.Leaf09254
import TUK.Leaf09255
import TUK.Leaf09256
import TUK.Leaf09257
import TUK.Leaf09258
import TUK.Leaf09259
import TUK.Leaf09260
import TUK.Leaf09261
import TUK.Leaf09262
import TUK.Leaf09263
import TUK.Leaf09264
import TUK.Leaf09265
import TUK.Leaf09266
import TUK.Leaf09267
import TUK.Leaf09268
import TUK.Leaf09269
import TUK.Leaf09270
import TUK.Leaf09271
import TUK.Leaf09272
import TUK.Leaf09273
import TUK.Leaf09274
import TUK.Leaf09275
import TUK.Leaf09276
import TUK.Leaf09277
import TUK.Leaf09278
import TUK.Leaf09279
import TUK.Leaf09280
import TUK.Leaf09281
import TUK.Leaf09282
import TUK.Leaf09283
import TUK.Leaf09284
import TUK.Leaf09285
import TUK.Leaf09286
import TUK.Leaf09287
import TUK.Leaf09288
import TUK.Leaf09289
import TUK.Leaf09290
import TUK.Leaf09291
import TUK.Leaf09292
import TUK.Leaf09293
import TUK.Leaf09294
import TUK.Leaf09295
import TUK.Leaf09296
import TUK.Leaf09297
import TUK.Leaf09298
import TUK.Leaf09299

/-! Leaves 9200 .. 9299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_92 : ∀ j < 100, 100 * 92 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 92 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_09200
  | 1, _, _ => exact leaf_09201
  | 2, _, _ => exact leaf_09202
  | 3, _, _ => exact leaf_09203
  | 4, _, _ => exact leaf_09204
  | 5, _, _ => exact leaf_09205
  | 6, _, _ => exact leaf_09206
  | 7, _, _ => exact leaf_09207
  | 8, _, _ => exact leaf_09208
  | 9, _, _ => exact leaf_09209
  | 10, _, _ => exact leaf_09210
  | 11, _, _ => exact leaf_09211
  | 12, _, _ => exact leaf_09212
  | 13, _, _ => exact leaf_09213
  | 14, _, _ => exact leaf_09214
  | 15, _, _ => exact leaf_09215
  | 16, _, _ => exact leaf_09216
  | 17, _, _ => exact leaf_09217
  | 18, _, _ => exact leaf_09218
  | 19, _, _ => exact leaf_09219
  | 20, _, _ => exact leaf_09220
  | 21, _, _ => exact leaf_09221
  | 22, _, _ => exact leaf_09222
  | 23, _, _ => exact leaf_09223
  | 24, _, _ => exact leaf_09224
  | 25, _, _ => exact leaf_09225
  | 26, _, _ => exact leaf_09226
  | 27, _, _ => exact leaf_09227
  | 28, _, _ => exact leaf_09228
  | 29, _, _ => exact leaf_09229
  | 30, _, _ => exact leaf_09230
  | 31, _, _ => exact leaf_09231
  | 32, _, _ => exact leaf_09232
  | 33, _, _ => exact leaf_09233
  | 34, _, _ => exact leaf_09234
  | 35, _, _ => exact leaf_09235
  | 36, _, _ => exact leaf_09236
  | 37, _, _ => exact leaf_09237
  | 38, _, _ => exact leaf_09238
  | 39, _, _ => exact leaf_09239
  | 40, _, _ => exact leaf_09240
  | 41, _, _ => exact leaf_09241
  | 42, _, _ => exact leaf_09242
  | 43, _, _ => exact leaf_09243
  | 44, _, _ => exact leaf_09244
  | 45, _, _ => exact leaf_09245
  | 46, _, _ => exact leaf_09246
  | 47, _, _ => exact leaf_09247
  | 48, _, _ => exact leaf_09248
  | 49, _, _ => exact leaf_09249
  | 50, _, _ => exact leaf_09250
  | 51, _, _ => exact leaf_09251
  | 52, _, _ => exact leaf_09252
  | 53, _, _ => exact leaf_09253
  | 54, _, _ => exact leaf_09254
  | 55, _, _ => exact leaf_09255
  | 56, _, _ => exact leaf_09256
  | 57, _, _ => exact leaf_09257
  | 58, _, _ => exact leaf_09258
  | 59, _, _ => exact leaf_09259
  | 60, _, _ => exact leaf_09260
  | 61, _, _ => exact leaf_09261
  | 62, _, _ => exact leaf_09262
  | 63, _, _ => exact leaf_09263
  | 64, _, _ => exact leaf_09264
  | 65, _, _ => exact leaf_09265
  | 66, _, _ => exact leaf_09266
  | 67, _, _ => exact leaf_09267
  | 68, _, _ => exact leaf_09268
  | 69, _, _ => exact leaf_09269
  | 70, _, _ => exact leaf_09270
  | 71, _, _ => exact leaf_09271
  | 72, _, _ => exact leaf_09272
  | 73, _, _ => exact leaf_09273
  | 74, _, _ => exact leaf_09274
  | 75, _, _ => exact leaf_09275
  | 76, _, _ => exact leaf_09276
  | 77, _, _ => exact leaf_09277
  | 78, _, _ => exact leaf_09278
  | 79, _, _ => exact leaf_09279
  | 80, _, _ => exact leaf_09280
  | 81, _, _ => exact leaf_09281
  | 82, _, _ => exact leaf_09282
  | 83, _, _ => exact leaf_09283
  | 84, _, _ => exact leaf_09284
  | 85, _, _ => exact leaf_09285
  | 86, _, _ => exact leaf_09286
  | 87, _, _ => exact leaf_09287
  | 88, _, _ => exact leaf_09288
  | 89, _, _ => exact leaf_09289
  | 90, _, _ => exact leaf_09290
  | 91, _, _ => exact leaf_09291
  | 92, _, _ => exact leaf_09292
  | 93, _, _ => exact leaf_09293
  | 94, _, _ => exact leaf_09294
  | 95, _, _ => exact leaf_09295
  | 96, _, _ => exact leaf_09296
  | 97, _, _ => exact leaf_09297
  | 98, _, _ => exact leaf_09298
  | 99, _, _ => exact leaf_09299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
