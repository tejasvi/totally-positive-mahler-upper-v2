import TUK.Leaf11200
import TUK.Leaf11201
import TUK.Leaf11202
import TUK.Leaf11203
import TUK.Leaf11204
import TUK.Leaf11205
import TUK.Leaf11206
import TUK.Leaf11207
import TUK.Leaf11208
import TUK.Leaf11209
import TUK.Leaf11210
import TUK.Leaf11211
import TUK.Leaf11212
import TUK.Leaf11213
import TUK.Leaf11214
import TUK.Leaf11215
import TUK.Leaf11216
import TUK.Leaf11217
import TUK.Leaf11218
import TUK.Leaf11219
import TUK.Leaf11220
import TUK.Leaf11221
import TUK.Leaf11222
import TUK.Leaf11223
import TUK.Leaf11224
import TUK.Leaf11225
import TUK.Leaf11226
import TUK.Leaf11227
import TUK.Leaf11228
import TUK.Leaf11229
import TUK.Leaf11230
import TUK.Leaf11231
import TUK.Leaf11232
import TUK.Leaf11233
import TUK.Leaf11234
import TUK.Leaf11235
import TUK.Leaf11236
import TUK.Leaf11237
import TUK.Leaf11238
import TUK.Leaf11239
import TUK.Leaf11240
import TUK.Leaf11241
import TUK.Leaf11242
import TUK.Leaf11243
import TUK.Leaf11244
import TUK.Leaf11245
import TUK.Leaf11246
import TUK.Leaf11247
import TUK.Leaf11248
import TUK.Leaf11249
import TUK.Leaf11250
import TUK.Leaf11251
import TUK.Leaf11252
import TUK.Leaf11253
import TUK.Leaf11254
import TUK.Leaf11255
import TUK.Leaf11256
import TUK.Leaf11257
import TUK.Leaf11258
import TUK.Leaf11259
import TUK.Leaf11260
import TUK.Leaf11261
import TUK.Leaf11262
import TUK.Leaf11263
import TUK.Leaf11264
import TUK.Leaf11265
import TUK.Leaf11266
import TUK.Leaf11267
import TUK.Leaf11268
import TUK.Leaf11269
import TUK.Leaf11270
import TUK.Leaf11271
import TUK.Leaf11272
import TUK.Leaf11273
import TUK.Leaf11274
import TUK.Leaf11275
import TUK.Leaf11276
import TUK.Leaf11277
import TUK.Leaf11278
import TUK.Leaf11279
import TUK.Leaf11280
import TUK.Leaf11281
import TUK.Leaf11282
import TUK.Leaf11283
import TUK.Leaf11284
import TUK.Leaf11285
import TUK.Leaf11286
import TUK.Leaf11287
import TUK.Leaf11288
import TUK.Leaf11289
import TUK.Leaf11290
import TUK.Leaf11291
import TUK.Leaf11292
import TUK.Leaf11293
import TUK.Leaf11294
import TUK.Leaf11295
import TUK.Leaf11296
import TUK.Leaf11297
import TUK.Leaf11298
import TUK.Leaf11299

/-! Leaves 11200 .. 11299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_112 : ∀ j < 100, 100 * 112 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 112 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_11200
  | 1, _, _ => exact leaf_11201
  | 2, _, _ => exact leaf_11202
  | 3, _, _ => exact leaf_11203
  | 4, _, _ => exact leaf_11204
  | 5, _, _ => exact leaf_11205
  | 6, _, _ => exact leaf_11206
  | 7, _, _ => exact leaf_11207
  | 8, _, _ => exact leaf_11208
  | 9, _, _ => exact leaf_11209
  | 10, _, _ => exact leaf_11210
  | 11, _, _ => exact leaf_11211
  | 12, _, _ => exact leaf_11212
  | 13, _, _ => exact leaf_11213
  | 14, _, _ => exact leaf_11214
  | 15, _, _ => exact leaf_11215
  | 16, _, _ => exact leaf_11216
  | 17, _, _ => exact leaf_11217
  | 18, _, _ => exact leaf_11218
  | 19, _, _ => exact leaf_11219
  | 20, _, _ => exact leaf_11220
  | 21, _, _ => exact leaf_11221
  | 22, _, _ => exact leaf_11222
  | 23, _, _ => exact leaf_11223
  | 24, _, _ => exact leaf_11224
  | 25, _, _ => exact leaf_11225
  | 26, _, _ => exact leaf_11226
  | 27, _, _ => exact leaf_11227
  | 28, _, _ => exact leaf_11228
  | 29, _, _ => exact leaf_11229
  | 30, _, _ => exact leaf_11230
  | 31, _, _ => exact leaf_11231
  | 32, _, _ => exact leaf_11232
  | 33, _, _ => exact leaf_11233
  | 34, _, _ => exact leaf_11234
  | 35, _, _ => exact leaf_11235
  | 36, _, _ => exact leaf_11236
  | 37, _, _ => exact leaf_11237
  | 38, _, _ => exact leaf_11238
  | 39, _, _ => exact leaf_11239
  | 40, _, _ => exact leaf_11240
  | 41, _, _ => exact leaf_11241
  | 42, _, _ => exact leaf_11242
  | 43, _, _ => exact leaf_11243
  | 44, _, _ => exact leaf_11244
  | 45, _, _ => exact leaf_11245
  | 46, _, _ => exact leaf_11246
  | 47, _, _ => exact leaf_11247
  | 48, _, _ => exact leaf_11248
  | 49, _, _ => exact leaf_11249
  | 50, _, _ => exact leaf_11250
  | 51, _, _ => exact leaf_11251
  | 52, _, _ => exact leaf_11252
  | 53, _, _ => exact leaf_11253
  | 54, _, _ => exact leaf_11254
  | 55, _, _ => exact leaf_11255
  | 56, _, _ => exact leaf_11256
  | 57, _, _ => exact leaf_11257
  | 58, _, _ => exact leaf_11258
  | 59, _, _ => exact leaf_11259
  | 60, _, _ => exact leaf_11260
  | 61, _, _ => exact leaf_11261
  | 62, _, _ => exact leaf_11262
  | 63, _, _ => exact leaf_11263
  | 64, _, _ => exact leaf_11264
  | 65, _, _ => exact leaf_11265
  | 66, _, _ => exact leaf_11266
  | 67, _, _ => exact leaf_11267
  | 68, _, _ => exact leaf_11268
  | 69, _, _ => exact leaf_11269
  | 70, _, _ => exact leaf_11270
  | 71, _, _ => exact leaf_11271
  | 72, _, _ => exact leaf_11272
  | 73, _, _ => exact leaf_11273
  | 74, _, _ => exact leaf_11274
  | 75, _, _ => exact leaf_11275
  | 76, _, _ => exact leaf_11276
  | 77, _, _ => exact leaf_11277
  | 78, _, _ => exact leaf_11278
  | 79, _, _ => exact leaf_11279
  | 80, _, _ => exact leaf_11280
  | 81, _, _ => exact leaf_11281
  | 82, _, _ => exact leaf_11282
  | 83, _, _ => exact leaf_11283
  | 84, _, _ => exact leaf_11284
  | 85, _, _ => exact leaf_11285
  | 86, _, _ => exact leaf_11286
  | 87, _, _ => exact leaf_11287
  | 88, _, _ => exact leaf_11288
  | 89, _, _ => exact leaf_11289
  | 90, _, _ => exact leaf_11290
  | 91, _, _ => exact leaf_11291
  | 92, _, _ => exact leaf_11292
  | 93, _, _ => exact leaf_11293
  | 94, _, _ => exact leaf_11294
  | 95, _, _ => exact leaf_11295
  | 96, _, _ => exact leaf_11296
  | 97, _, _ => exact leaf_11297
  | 98, _, _ => exact leaf_11298
  | 99, _, _ => exact leaf_11299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
