import TUK.Leaf05200
import TUK.Leaf05201
import TUK.Leaf05202
import TUK.Leaf05203
import TUK.Leaf05204
import TUK.Leaf05205
import TUK.Leaf05206
import TUK.Leaf05207
import TUK.Leaf05208
import TUK.Leaf05209
import TUK.Leaf05210
import TUK.Leaf05211
import TUK.Leaf05212
import TUK.Leaf05213
import TUK.Leaf05214
import TUK.Leaf05215
import TUK.Leaf05216
import TUK.Leaf05217
import TUK.Leaf05218
import TUK.Leaf05219
import TUK.Leaf05220
import TUK.Leaf05221
import TUK.Leaf05222
import TUK.Leaf05223
import TUK.Leaf05224
import TUK.Leaf05225
import TUK.Leaf05226
import TUK.Leaf05227
import TUK.Leaf05228
import TUK.Leaf05229
import TUK.Leaf05230
import TUK.Leaf05231
import TUK.Leaf05232
import TUK.Leaf05233
import TUK.Leaf05234
import TUK.Leaf05235
import TUK.Leaf05236
import TUK.Leaf05237
import TUK.Leaf05238
import TUK.Leaf05239
import TUK.Leaf05240
import TUK.Leaf05241
import TUK.Leaf05242
import TUK.Leaf05243
import TUK.Leaf05244
import TUK.Leaf05245
import TUK.Leaf05246
import TUK.Leaf05247
import TUK.Leaf05248
import TUK.Leaf05249
import TUK.Leaf05250
import TUK.Leaf05251
import TUK.Leaf05252
import TUK.Leaf05253
import TUK.Leaf05254
import TUK.Leaf05255
import TUK.Leaf05256
import TUK.Leaf05257
import TUK.Leaf05258
import TUK.Leaf05259
import TUK.Leaf05260
import TUK.Leaf05261
import TUK.Leaf05262
import TUK.Leaf05263
import TUK.Leaf05264
import TUK.Leaf05265
import TUK.Leaf05266
import TUK.Leaf05267
import TUK.Leaf05268
import TUK.Leaf05269
import TUK.Leaf05270
import TUK.Leaf05271
import TUK.Leaf05272
import TUK.Leaf05273
import TUK.Leaf05274
import TUK.Leaf05275
import TUK.Leaf05276
import TUK.Leaf05277
import TUK.Leaf05278
import TUK.Leaf05279
import TUK.Leaf05280
import TUK.Leaf05281
import TUK.Leaf05282
import TUK.Leaf05283
import TUK.Leaf05284
import TUK.Leaf05285
import TUK.Leaf05286
import TUK.Leaf05287
import TUK.Leaf05288
import TUK.Leaf05289
import TUK.Leaf05290
import TUK.Leaf05291
import TUK.Leaf05292
import TUK.Leaf05293
import TUK.Leaf05294
import TUK.Leaf05295
import TUK.Leaf05296
import TUK.Leaf05297
import TUK.Leaf05298
import TUK.Leaf05299

/-! Leaves 5200 .. 5299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_52 : ∀ j < 100, 100 * 52 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 52 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_05200
  | 1, _, _ => exact leaf_05201
  | 2, _, _ => exact leaf_05202
  | 3, _, _ => exact leaf_05203
  | 4, _, _ => exact leaf_05204
  | 5, _, _ => exact leaf_05205
  | 6, _, _ => exact leaf_05206
  | 7, _, _ => exact leaf_05207
  | 8, _, _ => exact leaf_05208
  | 9, _, _ => exact leaf_05209
  | 10, _, _ => exact leaf_05210
  | 11, _, _ => exact leaf_05211
  | 12, _, _ => exact leaf_05212
  | 13, _, _ => exact leaf_05213
  | 14, _, _ => exact leaf_05214
  | 15, _, _ => exact leaf_05215
  | 16, _, _ => exact leaf_05216
  | 17, _, _ => exact leaf_05217
  | 18, _, _ => exact leaf_05218
  | 19, _, _ => exact leaf_05219
  | 20, _, _ => exact leaf_05220
  | 21, _, _ => exact leaf_05221
  | 22, _, _ => exact leaf_05222
  | 23, _, _ => exact leaf_05223
  | 24, _, _ => exact leaf_05224
  | 25, _, _ => exact leaf_05225
  | 26, _, _ => exact leaf_05226
  | 27, _, _ => exact leaf_05227
  | 28, _, _ => exact leaf_05228
  | 29, _, _ => exact leaf_05229
  | 30, _, _ => exact leaf_05230
  | 31, _, _ => exact leaf_05231
  | 32, _, _ => exact leaf_05232
  | 33, _, _ => exact leaf_05233
  | 34, _, _ => exact leaf_05234
  | 35, _, _ => exact leaf_05235
  | 36, _, _ => exact leaf_05236
  | 37, _, _ => exact leaf_05237
  | 38, _, _ => exact leaf_05238
  | 39, _, _ => exact leaf_05239
  | 40, _, _ => exact leaf_05240
  | 41, _, _ => exact leaf_05241
  | 42, _, _ => exact leaf_05242
  | 43, _, _ => exact leaf_05243
  | 44, _, _ => exact leaf_05244
  | 45, _, _ => exact leaf_05245
  | 46, _, _ => exact leaf_05246
  | 47, _, _ => exact leaf_05247
  | 48, _, _ => exact leaf_05248
  | 49, _, _ => exact leaf_05249
  | 50, _, _ => exact leaf_05250
  | 51, _, _ => exact leaf_05251
  | 52, _, _ => exact leaf_05252
  | 53, _, _ => exact leaf_05253
  | 54, _, _ => exact leaf_05254
  | 55, _, _ => exact leaf_05255
  | 56, _, _ => exact leaf_05256
  | 57, _, _ => exact leaf_05257
  | 58, _, _ => exact leaf_05258
  | 59, _, _ => exact leaf_05259
  | 60, _, _ => exact leaf_05260
  | 61, _, _ => exact leaf_05261
  | 62, _, _ => exact leaf_05262
  | 63, _, _ => exact leaf_05263
  | 64, _, _ => exact leaf_05264
  | 65, _, _ => exact leaf_05265
  | 66, _, _ => exact leaf_05266
  | 67, _, _ => exact leaf_05267
  | 68, _, _ => exact leaf_05268
  | 69, _, _ => exact leaf_05269
  | 70, _, _ => exact leaf_05270
  | 71, _, _ => exact leaf_05271
  | 72, _, _ => exact leaf_05272
  | 73, _, _ => exact leaf_05273
  | 74, _, _ => exact leaf_05274
  | 75, _, _ => exact leaf_05275
  | 76, _, _ => exact leaf_05276
  | 77, _, _ => exact leaf_05277
  | 78, _, _ => exact leaf_05278
  | 79, _, _ => exact leaf_05279
  | 80, _, _ => exact leaf_05280
  | 81, _, _ => exact leaf_05281
  | 82, _, _ => exact leaf_05282
  | 83, _, _ => exact leaf_05283
  | 84, _, _ => exact leaf_05284
  | 85, _, _ => exact leaf_05285
  | 86, _, _ => exact leaf_05286
  | 87, _, _ => exact leaf_05287
  | 88, _, _ => exact leaf_05288
  | 89, _, _ => exact leaf_05289
  | 90, _, _ => exact leaf_05290
  | 91, _, _ => exact leaf_05291
  | 92, _, _ => exact leaf_05292
  | 93, _, _ => exact leaf_05293
  | 94, _, _ => exact leaf_05294
  | 95, _, _ => exact leaf_05295
  | 96, _, _ => exact leaf_05296
  | 97, _, _ => exact leaf_05297
  | 98, _, _ => exact leaf_05298
  | 99, _, _ => exact leaf_05299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
