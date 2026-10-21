import TUK.Leaf00200
import TUK.Leaf00201
import TUK.Leaf00202
import TUK.Leaf00203
import TUK.Leaf00204
import TUK.Leaf00205
import TUK.Leaf00206
import TUK.Leaf00207
import TUK.Leaf00208
import TUK.Leaf00209
import TUK.Leaf00210
import TUK.Leaf00211
import TUK.Leaf00212
import TUK.Leaf00213
import TUK.Leaf00214
import TUK.Leaf00215
import TUK.Leaf00216
import TUK.Leaf00217
import TUK.Leaf00218
import TUK.Leaf00219
import TUK.Leaf00220
import TUK.Leaf00221
import TUK.Leaf00222
import TUK.Leaf00223
import TUK.Leaf00224
import TUK.Leaf00225
import TUK.Leaf00226
import TUK.Leaf00227
import TUK.Leaf00228
import TUK.Leaf00229
import TUK.Leaf00230
import TUK.Leaf00231
import TUK.Leaf00232
import TUK.Leaf00233
import TUK.Leaf00234
import TUK.Leaf00235
import TUK.Leaf00236
import TUK.Leaf00237
import TUK.Leaf00238
import TUK.Leaf00239
import TUK.Leaf00240
import TUK.Leaf00241
import TUK.Leaf00242
import TUK.Leaf00243
import TUK.Leaf00244
import TUK.Leaf00245
import TUK.Leaf00246
import TUK.Leaf00247
import TUK.Leaf00248
import TUK.Leaf00249
import TUK.Leaf00250
import TUK.Leaf00251
import TUK.Leaf00252
import TUK.Leaf00253
import TUK.Leaf00254
import TUK.Leaf00255
import TUK.Leaf00256
import TUK.Leaf00257
import TUK.Leaf00258
import TUK.Leaf00259
import TUK.Leaf00260
import TUK.Leaf00261
import TUK.Leaf00262
import TUK.Leaf00263
import TUK.Leaf00264
import TUK.Leaf00265
import TUK.Leaf00266
import TUK.Leaf00267
import TUK.Leaf00268
import TUK.Leaf00269
import TUK.Leaf00270
import TUK.Leaf00271
import TUK.Leaf00272
import TUK.Leaf00273
import TUK.Leaf00274
import TUK.Leaf00275
import TUK.Leaf00276
import TUK.Leaf00277
import TUK.Leaf00278
import TUK.Leaf00279
import TUK.Leaf00280
import TUK.Leaf00281
import TUK.Leaf00282
import TUK.Leaf00283
import TUK.Leaf00284
import TUK.Leaf00285
import TUK.Leaf00286
import TUK.Leaf00287
import TUK.Leaf00288
import TUK.Leaf00289
import TUK.Leaf00290
import TUK.Leaf00291
import TUK.Leaf00292
import TUK.Leaf00293
import TUK.Leaf00294
import TUK.Leaf00295
import TUK.Leaf00296
import TUK.Leaf00297
import TUK.Leaf00298
import TUK.Leaf00299

/-! Leaves 200 .. 299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_2 : ∀ j < 100, 100 * 2 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 2 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_00200
  | 1, _, _ => exact leaf_00201
  | 2, _, _ => exact leaf_00202
  | 3, _, _ => exact leaf_00203
  | 4, _, _ => exact leaf_00204
  | 5, _, _ => exact leaf_00205
  | 6, _, _ => exact leaf_00206
  | 7, _, _ => exact leaf_00207
  | 8, _, _ => exact leaf_00208
  | 9, _, _ => exact leaf_00209
  | 10, _, _ => exact leaf_00210
  | 11, _, _ => exact leaf_00211
  | 12, _, _ => exact leaf_00212
  | 13, _, _ => exact leaf_00213
  | 14, _, _ => exact leaf_00214
  | 15, _, _ => exact leaf_00215
  | 16, _, _ => exact leaf_00216
  | 17, _, _ => exact leaf_00217
  | 18, _, _ => exact leaf_00218
  | 19, _, _ => exact leaf_00219
  | 20, _, _ => exact leaf_00220
  | 21, _, _ => exact leaf_00221
  | 22, _, _ => exact leaf_00222
  | 23, _, _ => exact leaf_00223
  | 24, _, _ => exact leaf_00224
  | 25, _, _ => exact leaf_00225
  | 26, _, _ => exact leaf_00226
  | 27, _, _ => exact leaf_00227
  | 28, _, _ => exact leaf_00228
  | 29, _, _ => exact leaf_00229
  | 30, _, _ => exact leaf_00230
  | 31, _, _ => exact leaf_00231
  | 32, _, _ => exact leaf_00232
  | 33, _, _ => exact leaf_00233
  | 34, _, _ => exact leaf_00234
  | 35, _, _ => exact leaf_00235
  | 36, _, _ => exact leaf_00236
  | 37, _, _ => exact leaf_00237
  | 38, _, _ => exact leaf_00238
  | 39, _, _ => exact leaf_00239
  | 40, _, _ => exact leaf_00240
  | 41, _, _ => exact leaf_00241
  | 42, _, _ => exact leaf_00242
  | 43, _, _ => exact leaf_00243
  | 44, _, _ => exact leaf_00244
  | 45, _, _ => exact leaf_00245
  | 46, _, _ => exact leaf_00246
  | 47, _, _ => exact leaf_00247
  | 48, _, _ => exact leaf_00248
  | 49, _, _ => exact leaf_00249
  | 50, _, _ => exact leaf_00250
  | 51, _, _ => exact leaf_00251
  | 52, _, _ => exact leaf_00252
  | 53, _, _ => exact leaf_00253
  | 54, _, _ => exact leaf_00254
  | 55, _, _ => exact leaf_00255
  | 56, _, _ => exact leaf_00256
  | 57, _, _ => exact leaf_00257
  | 58, _, _ => exact leaf_00258
  | 59, _, _ => exact leaf_00259
  | 60, _, _ => exact leaf_00260
  | 61, _, _ => exact leaf_00261
  | 62, _, _ => exact leaf_00262
  | 63, _, _ => exact leaf_00263
  | 64, _, _ => exact leaf_00264
  | 65, _, _ => exact leaf_00265
  | 66, _, _ => exact leaf_00266
  | 67, _, _ => exact leaf_00267
  | 68, _, _ => exact leaf_00268
  | 69, _, _ => exact leaf_00269
  | 70, _, _ => exact leaf_00270
  | 71, _, _ => exact leaf_00271
  | 72, _, _ => exact leaf_00272
  | 73, _, _ => exact leaf_00273
  | 74, _, _ => exact leaf_00274
  | 75, _, _ => exact leaf_00275
  | 76, _, _ => exact leaf_00276
  | 77, _, _ => exact leaf_00277
  | 78, _, _ => exact leaf_00278
  | 79, _, _ => exact leaf_00279
  | 80, _, _ => exact leaf_00280
  | 81, _, _ => exact leaf_00281
  | 82, _, _ => exact leaf_00282
  | 83, _, _ => exact leaf_00283
  | 84, _, _ => exact leaf_00284
  | 85, _, _ => exact leaf_00285
  | 86, _, _ => exact leaf_00286
  | 87, _, _ => exact leaf_00287
  | 88, _, _ => exact leaf_00288
  | 89, _, _ => exact leaf_00289
  | 90, _, _ => exact leaf_00290
  | 91, _, _ => exact leaf_00291
  | 92, _, _ => exact leaf_00292
  | 93, _, _ => exact leaf_00293
  | 94, _, _ => exact leaf_00294
  | 95, _, _ => exact leaf_00295
  | 96, _, _ => exact leaf_00296
  | 97, _, _ => exact leaf_00297
  | 98, _, _ => exact leaf_00298
  | 99, _, _ => exact leaf_00299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
