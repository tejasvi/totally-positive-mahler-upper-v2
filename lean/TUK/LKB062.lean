import TUK.Leaf06200
import TUK.Leaf06201
import TUK.Leaf06202
import TUK.Leaf06203
import TUK.Leaf06204
import TUK.Leaf06205
import TUK.Leaf06206
import TUK.Leaf06207
import TUK.Leaf06208
import TUK.Leaf06209
import TUK.Leaf06210
import TUK.Leaf06211
import TUK.Leaf06212
import TUK.Leaf06213
import TUK.Leaf06214
import TUK.Leaf06215
import TUK.Leaf06216
import TUK.Leaf06217
import TUK.Leaf06218
import TUK.Leaf06219
import TUK.Leaf06220
import TUK.Leaf06221
import TUK.Leaf06222
import TUK.Leaf06223
import TUK.Leaf06224
import TUK.Leaf06225
import TUK.Leaf06226
import TUK.Leaf06227
import TUK.Leaf06228
import TUK.Leaf06229
import TUK.Leaf06230
import TUK.Leaf06231
import TUK.Leaf06232
import TUK.Leaf06233
import TUK.Leaf06234
import TUK.Leaf06235
import TUK.Leaf06236
import TUK.Leaf06237
import TUK.Leaf06238
import TUK.Leaf06239
import TUK.Leaf06240
import TUK.Leaf06241
import TUK.Leaf06242
import TUK.Leaf06243
import TUK.Leaf06244
import TUK.Leaf06245
import TUK.Leaf06246
import TUK.Leaf06247
import TUK.Leaf06248
import TUK.Leaf06249
import TUK.Leaf06250
import TUK.Leaf06251
import TUK.Leaf06252
import TUK.Leaf06253
import TUK.Leaf06254
import TUK.Leaf06255
import TUK.Leaf06256
import TUK.Leaf06257
import TUK.Leaf06258
import TUK.Leaf06259
import TUK.Leaf06260
import TUK.Leaf06261
import TUK.Leaf06262
import TUK.Leaf06263
import TUK.Leaf06264
import TUK.Leaf06265
import TUK.Leaf06266
import TUK.Leaf06267
import TUK.Leaf06268
import TUK.Leaf06269
import TUK.Leaf06270
import TUK.Leaf06271
import TUK.Leaf06272
import TUK.Leaf06273
import TUK.Leaf06274
import TUK.Leaf06275
import TUK.Leaf06276
import TUK.Leaf06277
import TUK.Leaf06278
import TUK.Leaf06279
import TUK.Leaf06280
import TUK.Leaf06281
import TUK.Leaf06282
import TUK.Leaf06283
import TUK.Leaf06284
import TUK.Leaf06285
import TUK.Leaf06286
import TUK.Leaf06287
import TUK.Leaf06288
import TUK.Leaf06289
import TUK.Leaf06290
import TUK.Leaf06291
import TUK.Leaf06292
import TUK.Leaf06293
import TUK.Leaf06294
import TUK.Leaf06295
import TUK.Leaf06296
import TUK.Leaf06297
import TUK.Leaf06298
import TUK.Leaf06299

/-! Leaves 6200 .. 6299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_62 : ∀ j < 100, 100 * 62 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 62 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_06200
  | 1, _, _ => exact leaf_06201
  | 2, _, _ => exact leaf_06202
  | 3, _, _ => exact leaf_06203
  | 4, _, _ => exact leaf_06204
  | 5, _, _ => exact leaf_06205
  | 6, _, _ => exact leaf_06206
  | 7, _, _ => exact leaf_06207
  | 8, _, _ => exact leaf_06208
  | 9, _, _ => exact leaf_06209
  | 10, _, _ => exact leaf_06210
  | 11, _, _ => exact leaf_06211
  | 12, _, _ => exact leaf_06212
  | 13, _, _ => exact leaf_06213
  | 14, _, _ => exact leaf_06214
  | 15, _, _ => exact leaf_06215
  | 16, _, _ => exact leaf_06216
  | 17, _, _ => exact leaf_06217
  | 18, _, _ => exact leaf_06218
  | 19, _, _ => exact leaf_06219
  | 20, _, _ => exact leaf_06220
  | 21, _, _ => exact leaf_06221
  | 22, _, _ => exact leaf_06222
  | 23, _, _ => exact leaf_06223
  | 24, _, _ => exact leaf_06224
  | 25, _, _ => exact leaf_06225
  | 26, _, _ => exact leaf_06226
  | 27, _, _ => exact leaf_06227
  | 28, _, _ => exact leaf_06228
  | 29, _, _ => exact leaf_06229
  | 30, _, _ => exact leaf_06230
  | 31, _, _ => exact leaf_06231
  | 32, _, _ => exact leaf_06232
  | 33, _, _ => exact leaf_06233
  | 34, _, _ => exact leaf_06234
  | 35, _, _ => exact leaf_06235
  | 36, _, _ => exact leaf_06236
  | 37, _, _ => exact leaf_06237
  | 38, _, _ => exact leaf_06238
  | 39, _, _ => exact leaf_06239
  | 40, _, _ => exact leaf_06240
  | 41, _, _ => exact leaf_06241
  | 42, _, _ => exact leaf_06242
  | 43, _, _ => exact leaf_06243
  | 44, _, _ => exact leaf_06244
  | 45, _, _ => exact leaf_06245
  | 46, _, _ => exact leaf_06246
  | 47, _, _ => exact leaf_06247
  | 48, _, _ => exact leaf_06248
  | 49, _, _ => exact leaf_06249
  | 50, _, _ => exact leaf_06250
  | 51, _, _ => exact leaf_06251
  | 52, _, _ => exact leaf_06252
  | 53, _, _ => exact leaf_06253
  | 54, _, _ => exact leaf_06254
  | 55, _, _ => exact leaf_06255
  | 56, _, _ => exact leaf_06256
  | 57, _, _ => exact leaf_06257
  | 58, _, _ => exact leaf_06258
  | 59, _, _ => exact leaf_06259
  | 60, _, _ => exact leaf_06260
  | 61, _, _ => exact leaf_06261
  | 62, _, _ => exact leaf_06262
  | 63, _, _ => exact leaf_06263
  | 64, _, _ => exact leaf_06264
  | 65, _, _ => exact leaf_06265
  | 66, _, _ => exact leaf_06266
  | 67, _, _ => exact leaf_06267
  | 68, _, _ => exact leaf_06268
  | 69, _, _ => exact leaf_06269
  | 70, _, _ => exact leaf_06270
  | 71, _, _ => exact leaf_06271
  | 72, _, _ => exact leaf_06272
  | 73, _, _ => exact leaf_06273
  | 74, _, _ => exact leaf_06274
  | 75, _, _ => exact leaf_06275
  | 76, _, _ => exact leaf_06276
  | 77, _, _ => exact leaf_06277
  | 78, _, _ => exact leaf_06278
  | 79, _, _ => exact leaf_06279
  | 80, _, _ => exact leaf_06280
  | 81, _, _ => exact leaf_06281
  | 82, _, _ => exact leaf_06282
  | 83, _, _ => exact leaf_06283
  | 84, _, _ => exact leaf_06284
  | 85, _, _ => exact leaf_06285
  | 86, _, _ => exact leaf_06286
  | 87, _, _ => exact leaf_06287
  | 88, _, _ => exact leaf_06288
  | 89, _, _ => exact leaf_06289
  | 90, _, _ => exact leaf_06290
  | 91, _, _ => exact leaf_06291
  | 92, _, _ => exact leaf_06292
  | 93, _, _ => exact leaf_06293
  | 94, _, _ => exact leaf_06294
  | 95, _, _ => exact leaf_06295
  | 96, _, _ => exact leaf_06296
  | 97, _, _ => exact leaf_06297
  | 98, _, _ => exact leaf_06298
  | 99, _, _ => exact leaf_06299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
