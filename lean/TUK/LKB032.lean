import TUK.Leaf03200
import TUK.Leaf03201
import TUK.Leaf03202
import TUK.Leaf03203
import TUK.Leaf03204
import TUK.Leaf03205
import TUK.Leaf03206
import TUK.Leaf03207
import TUK.Leaf03208
import TUK.Leaf03209
import TUK.Leaf03210
import TUK.Leaf03211
import TUK.Leaf03212
import TUK.Leaf03213
import TUK.Leaf03214
import TUK.Leaf03215
import TUK.Leaf03216
import TUK.Leaf03217
import TUK.Leaf03218
import TUK.Leaf03219
import TUK.Leaf03220
import TUK.Leaf03221
import TUK.Leaf03222
import TUK.Leaf03223
import TUK.Leaf03224
import TUK.Leaf03225
import TUK.Leaf03226
import TUK.Leaf03227
import TUK.Leaf03228
import TUK.Leaf03229
import TUK.Leaf03230
import TUK.Leaf03231
import TUK.Leaf03232
import TUK.Leaf03233
import TUK.Leaf03234
import TUK.Leaf03235
import TUK.Leaf03236
import TUK.Leaf03237
import TUK.Leaf03238
import TUK.Leaf03239
import TUK.Leaf03240
import TUK.Leaf03241
import TUK.Leaf03242
import TUK.Leaf03243
import TUK.Leaf03244
import TUK.Leaf03245
import TUK.Leaf03246
import TUK.Leaf03247
import TUK.Leaf03248
import TUK.Leaf03249
import TUK.Leaf03250
import TUK.Leaf03251
import TUK.Leaf03252
import TUK.Leaf03253
import TUK.Leaf03254
import TUK.Leaf03255
import TUK.Leaf03256
import TUK.Leaf03257
import TUK.Leaf03258
import TUK.Leaf03259
import TUK.Leaf03260
import TUK.Leaf03261
import TUK.Leaf03262
import TUK.Leaf03263
import TUK.Leaf03264
import TUK.Leaf03265
import TUK.Leaf03266
import TUK.Leaf03267
import TUK.Leaf03268
import TUK.Leaf03269
import TUK.Leaf03270
import TUK.Leaf03271
import TUK.Leaf03272
import TUK.Leaf03273
import TUK.Leaf03274
import TUK.Leaf03275
import TUK.Leaf03276
import TUK.Leaf03277
import TUK.Leaf03278
import TUK.Leaf03279
import TUK.Leaf03280
import TUK.Leaf03281
import TUK.Leaf03282
import TUK.Leaf03283
import TUK.Leaf03284
import TUK.Leaf03285
import TUK.Leaf03286
import TUK.Leaf03287
import TUK.Leaf03288
import TUK.Leaf03289
import TUK.Leaf03290
import TUK.Leaf03291
import TUK.Leaf03292
import TUK.Leaf03293
import TUK.Leaf03294
import TUK.Leaf03295
import TUK.Leaf03296
import TUK.Leaf03297
import TUK.Leaf03298
import TUK.Leaf03299

/-! Leaves 3200 .. 3299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_32 : ∀ j < 100, 100 * 32 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 32 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_03200
  | 1, _, _ => exact leaf_03201
  | 2, _, _ => exact leaf_03202
  | 3, _, _ => exact leaf_03203
  | 4, _, _ => exact leaf_03204
  | 5, _, _ => exact leaf_03205
  | 6, _, _ => exact leaf_03206
  | 7, _, _ => exact leaf_03207
  | 8, _, _ => exact leaf_03208
  | 9, _, _ => exact leaf_03209
  | 10, _, _ => exact leaf_03210
  | 11, _, _ => exact leaf_03211
  | 12, _, _ => exact leaf_03212
  | 13, _, _ => exact leaf_03213
  | 14, _, _ => exact leaf_03214
  | 15, _, _ => exact leaf_03215
  | 16, _, _ => exact leaf_03216
  | 17, _, _ => exact leaf_03217
  | 18, _, _ => exact leaf_03218
  | 19, _, _ => exact leaf_03219
  | 20, _, _ => exact leaf_03220
  | 21, _, _ => exact leaf_03221
  | 22, _, _ => exact leaf_03222
  | 23, _, _ => exact leaf_03223
  | 24, _, _ => exact leaf_03224
  | 25, _, _ => exact leaf_03225
  | 26, _, _ => exact leaf_03226
  | 27, _, _ => exact leaf_03227
  | 28, _, _ => exact leaf_03228
  | 29, _, _ => exact leaf_03229
  | 30, _, _ => exact leaf_03230
  | 31, _, _ => exact leaf_03231
  | 32, _, _ => exact leaf_03232
  | 33, _, _ => exact leaf_03233
  | 34, _, _ => exact leaf_03234
  | 35, _, _ => exact leaf_03235
  | 36, _, _ => exact leaf_03236
  | 37, _, _ => exact leaf_03237
  | 38, _, _ => exact leaf_03238
  | 39, _, _ => exact leaf_03239
  | 40, _, _ => exact leaf_03240
  | 41, _, _ => exact leaf_03241
  | 42, _, _ => exact leaf_03242
  | 43, _, _ => exact leaf_03243
  | 44, _, _ => exact leaf_03244
  | 45, _, _ => exact leaf_03245
  | 46, _, _ => exact leaf_03246
  | 47, _, _ => exact leaf_03247
  | 48, _, _ => exact leaf_03248
  | 49, _, _ => exact leaf_03249
  | 50, _, _ => exact leaf_03250
  | 51, _, _ => exact leaf_03251
  | 52, _, _ => exact leaf_03252
  | 53, _, _ => exact leaf_03253
  | 54, _, _ => exact leaf_03254
  | 55, _, _ => exact leaf_03255
  | 56, _, _ => exact leaf_03256
  | 57, _, _ => exact leaf_03257
  | 58, _, _ => exact leaf_03258
  | 59, _, _ => exact leaf_03259
  | 60, _, _ => exact leaf_03260
  | 61, _, _ => exact leaf_03261
  | 62, _, _ => exact leaf_03262
  | 63, _, _ => exact leaf_03263
  | 64, _, _ => exact leaf_03264
  | 65, _, _ => exact leaf_03265
  | 66, _, _ => exact leaf_03266
  | 67, _, _ => exact leaf_03267
  | 68, _, _ => exact leaf_03268
  | 69, _, _ => exact leaf_03269
  | 70, _, _ => exact leaf_03270
  | 71, _, _ => exact leaf_03271
  | 72, _, _ => exact leaf_03272
  | 73, _, _ => exact leaf_03273
  | 74, _, _ => exact leaf_03274
  | 75, _, _ => exact leaf_03275
  | 76, _, _ => exact leaf_03276
  | 77, _, _ => exact leaf_03277
  | 78, _, _ => exact leaf_03278
  | 79, _, _ => exact leaf_03279
  | 80, _, _ => exact leaf_03280
  | 81, _, _ => exact leaf_03281
  | 82, _, _ => exact leaf_03282
  | 83, _, _ => exact leaf_03283
  | 84, _, _ => exact leaf_03284
  | 85, _, _ => exact leaf_03285
  | 86, _, _ => exact leaf_03286
  | 87, _, _ => exact leaf_03287
  | 88, _, _ => exact leaf_03288
  | 89, _, _ => exact leaf_03289
  | 90, _, _ => exact leaf_03290
  | 91, _, _ => exact leaf_03291
  | 92, _, _ => exact leaf_03292
  | 93, _, _ => exact leaf_03293
  | 94, _, _ => exact leaf_03294
  | 95, _, _ => exact leaf_03295
  | 96, _, _ => exact leaf_03296
  | 97, _, _ => exact leaf_03297
  | 98, _, _ => exact leaf_03298
  | 99, _, _ => exact leaf_03299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
