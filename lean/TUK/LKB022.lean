import TUK.Leaf02200
import TUK.Leaf02201
import TUK.Leaf02202
import TUK.Leaf02203
import TUK.Leaf02204
import TUK.Leaf02205
import TUK.Leaf02206
import TUK.Leaf02207
import TUK.Leaf02208
import TUK.Leaf02209
import TUK.Leaf02210
import TUK.Leaf02211
import TUK.Leaf02212
import TUK.Leaf02213
import TUK.Leaf02214
import TUK.Leaf02215
import TUK.Leaf02216
import TUK.Leaf02217
import TUK.Leaf02218
import TUK.Leaf02219
import TUK.Leaf02220
import TUK.Leaf02221
import TUK.Leaf02222
import TUK.Leaf02223
import TUK.Leaf02224
import TUK.Leaf02225
import TUK.Leaf02226
import TUK.Leaf02227
import TUK.Leaf02228
import TUK.Leaf02229
import TUK.Leaf02230
import TUK.Leaf02231
import TUK.Leaf02232
import TUK.Leaf02233
import TUK.Leaf02234
import TUK.Leaf02235
import TUK.Leaf02236
import TUK.Leaf02237
import TUK.Leaf02238
import TUK.Leaf02239
import TUK.Leaf02240
import TUK.Leaf02241
import TUK.Leaf02242
import TUK.Leaf02243
import TUK.Leaf02244
import TUK.Leaf02245
import TUK.Leaf02246
import TUK.Leaf02247
import TUK.Leaf02248
import TUK.Leaf02249
import TUK.Leaf02250
import TUK.Leaf02251
import TUK.Leaf02252
import TUK.Leaf02253
import TUK.Leaf02254
import TUK.Leaf02255
import TUK.Leaf02256
import TUK.Leaf02257
import TUK.Leaf02258
import TUK.Leaf02259
import TUK.Leaf02260
import TUK.Leaf02261
import TUK.Leaf02262
import TUK.Leaf02263
import TUK.Leaf02264
import TUK.Leaf02265
import TUK.Leaf02266
import TUK.Leaf02267
import TUK.Leaf02268
import TUK.Leaf02269
import TUK.Leaf02270
import TUK.Leaf02271
import TUK.Leaf02272
import TUK.Leaf02273
import TUK.Leaf02274
import TUK.Leaf02275
import TUK.Leaf02276
import TUK.Leaf02277
import TUK.Leaf02278
import TUK.Leaf02279
import TUK.Leaf02280
import TUK.Leaf02281
import TUK.Leaf02282
import TUK.Leaf02283
import TUK.Leaf02284
import TUK.Leaf02285
import TUK.Leaf02286
import TUK.Leaf02287
import TUK.Leaf02288
import TUK.Leaf02289
import TUK.Leaf02290
import TUK.Leaf02291
import TUK.Leaf02292
import TUK.Leaf02293
import TUK.Leaf02294
import TUK.Leaf02295
import TUK.Leaf02296
import TUK.Leaf02297
import TUK.Leaf02298
import TUK.Leaf02299

/-! Leaves 2200 .. 2299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_22 : ∀ j < 100, 100 * 22 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 22 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_02200
  | 1, _, _ => exact leaf_02201
  | 2, _, _ => exact leaf_02202
  | 3, _, _ => exact leaf_02203
  | 4, _, _ => exact leaf_02204
  | 5, _, _ => exact leaf_02205
  | 6, _, _ => exact leaf_02206
  | 7, _, _ => exact leaf_02207
  | 8, _, _ => exact leaf_02208
  | 9, _, _ => exact leaf_02209
  | 10, _, _ => exact leaf_02210
  | 11, _, _ => exact leaf_02211
  | 12, _, _ => exact leaf_02212
  | 13, _, _ => exact leaf_02213
  | 14, _, _ => exact leaf_02214
  | 15, _, _ => exact leaf_02215
  | 16, _, _ => exact leaf_02216
  | 17, _, _ => exact leaf_02217
  | 18, _, _ => exact leaf_02218
  | 19, _, _ => exact leaf_02219
  | 20, _, _ => exact leaf_02220
  | 21, _, _ => exact leaf_02221
  | 22, _, _ => exact leaf_02222
  | 23, _, _ => exact leaf_02223
  | 24, _, _ => exact leaf_02224
  | 25, _, _ => exact leaf_02225
  | 26, _, _ => exact leaf_02226
  | 27, _, _ => exact leaf_02227
  | 28, _, _ => exact leaf_02228
  | 29, _, _ => exact leaf_02229
  | 30, _, _ => exact leaf_02230
  | 31, _, _ => exact leaf_02231
  | 32, _, _ => exact leaf_02232
  | 33, _, _ => exact leaf_02233
  | 34, _, _ => exact leaf_02234
  | 35, _, _ => exact leaf_02235
  | 36, _, _ => exact leaf_02236
  | 37, _, _ => exact leaf_02237
  | 38, _, _ => exact leaf_02238
  | 39, _, _ => exact leaf_02239
  | 40, _, _ => exact leaf_02240
  | 41, _, _ => exact leaf_02241
  | 42, _, _ => exact leaf_02242
  | 43, _, _ => exact leaf_02243
  | 44, _, _ => exact leaf_02244
  | 45, _, _ => exact leaf_02245
  | 46, _, _ => exact leaf_02246
  | 47, _, _ => exact leaf_02247
  | 48, _, _ => exact leaf_02248
  | 49, _, _ => exact leaf_02249
  | 50, _, _ => exact leaf_02250
  | 51, _, _ => exact leaf_02251
  | 52, _, _ => exact leaf_02252
  | 53, _, _ => exact leaf_02253
  | 54, _, _ => exact leaf_02254
  | 55, _, _ => exact leaf_02255
  | 56, _, _ => exact leaf_02256
  | 57, _, _ => exact leaf_02257
  | 58, _, _ => exact leaf_02258
  | 59, _, _ => exact leaf_02259
  | 60, _, _ => exact leaf_02260
  | 61, _, _ => exact leaf_02261
  | 62, _, _ => exact leaf_02262
  | 63, _, _ => exact leaf_02263
  | 64, _, _ => exact leaf_02264
  | 65, _, _ => exact leaf_02265
  | 66, _, _ => exact leaf_02266
  | 67, _, _ => exact leaf_02267
  | 68, _, _ => exact leaf_02268
  | 69, _, _ => exact leaf_02269
  | 70, _, _ => exact leaf_02270
  | 71, _, _ => exact leaf_02271
  | 72, _, _ => exact leaf_02272
  | 73, _, _ => exact leaf_02273
  | 74, _, _ => exact leaf_02274
  | 75, _, _ => exact leaf_02275
  | 76, _, _ => exact leaf_02276
  | 77, _, _ => exact leaf_02277
  | 78, _, _ => exact leaf_02278
  | 79, _, _ => exact leaf_02279
  | 80, _, _ => exact leaf_02280
  | 81, _, _ => exact leaf_02281
  | 82, _, _ => exact leaf_02282
  | 83, _, _ => exact leaf_02283
  | 84, _, _ => exact leaf_02284
  | 85, _, _ => exact leaf_02285
  | 86, _, _ => exact leaf_02286
  | 87, _, _ => exact leaf_02287
  | 88, _, _ => exact leaf_02288
  | 89, _, _ => exact leaf_02289
  | 90, _, _ => exact leaf_02290
  | 91, _, _ => exact leaf_02291
  | 92, _, _ => exact leaf_02292
  | 93, _, _ => exact leaf_02293
  | 94, _, _ => exact leaf_02294
  | 95, _, _ => exact leaf_02295
  | 96, _, _ => exact leaf_02296
  | 97, _, _ => exact leaf_02297
  | 98, _, _ => exact leaf_02298
  | 99, _, _ => exact leaf_02299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
