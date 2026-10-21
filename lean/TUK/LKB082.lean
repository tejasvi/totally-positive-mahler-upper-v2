import TUK.Leaf08200
import TUK.Leaf08201
import TUK.Leaf08202
import TUK.Leaf08203
import TUK.Leaf08204
import TUK.Leaf08205
import TUK.Leaf08206
import TUK.Leaf08207
import TUK.Leaf08208
import TUK.Leaf08209
import TUK.Leaf08210
import TUK.Leaf08211
import TUK.Leaf08212
import TUK.Leaf08213
import TUK.Leaf08214
import TUK.Leaf08215
import TUK.Leaf08216
import TUK.Leaf08217
import TUK.Leaf08218
import TUK.Leaf08219
import TUK.Leaf08220
import TUK.Leaf08221
import TUK.Leaf08222
import TUK.Leaf08223
import TUK.Leaf08224
import TUK.Leaf08225
import TUK.Leaf08226
import TUK.Leaf08227
import TUK.Leaf08228
import TUK.Leaf08229
import TUK.Leaf08230
import TUK.Leaf08231
import TUK.Leaf08232
import TUK.Leaf08233
import TUK.Leaf08234
import TUK.Leaf08235
import TUK.Leaf08236
import TUK.Leaf08237
import TUK.Leaf08238
import TUK.Leaf08239
import TUK.Leaf08240
import TUK.Leaf08241
import TUK.Leaf08242
import TUK.Leaf08243
import TUK.Leaf08244
import TUK.Leaf08245
import TUK.Leaf08246
import TUK.Leaf08247
import TUK.Leaf08248
import TUK.Leaf08249
import TUK.Leaf08250
import TUK.Leaf08251
import TUK.Leaf08252
import TUK.Leaf08253
import TUK.Leaf08254
import TUK.Leaf08255
import TUK.Leaf08256
import TUK.Leaf08257
import TUK.Leaf08258
import TUK.Leaf08259
import TUK.Leaf08260
import TUK.Leaf08261
import TUK.Leaf08262
import TUK.Leaf08263
import TUK.Leaf08264
import TUK.Leaf08265
import TUK.Leaf08266
import TUK.Leaf08267
import TUK.Leaf08268
import TUK.Leaf08269
import TUK.Leaf08270
import TUK.Leaf08271
import TUK.Leaf08272
import TUK.Leaf08273
import TUK.Leaf08274
import TUK.Leaf08275
import TUK.Leaf08276
import TUK.Leaf08277
import TUK.Leaf08278
import TUK.Leaf08279
import TUK.Leaf08280
import TUK.Leaf08281
import TUK.Leaf08282
import TUK.Leaf08283
import TUK.Leaf08284
import TUK.Leaf08285
import TUK.Leaf08286
import TUK.Leaf08287
import TUK.Leaf08288
import TUK.Leaf08289
import TUK.Leaf08290
import TUK.Leaf08291
import TUK.Leaf08292
import TUK.Leaf08293
import TUK.Leaf08294
import TUK.Leaf08295
import TUK.Leaf08296
import TUK.Leaf08297
import TUK.Leaf08298
import TUK.Leaf08299

/-! Leaves 8200 .. 8299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_82 : ∀ j < 100, 100 * 82 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 82 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_08200
  | 1, _, _ => exact leaf_08201
  | 2, _, _ => exact leaf_08202
  | 3, _, _ => exact leaf_08203
  | 4, _, _ => exact leaf_08204
  | 5, _, _ => exact leaf_08205
  | 6, _, _ => exact leaf_08206
  | 7, _, _ => exact leaf_08207
  | 8, _, _ => exact leaf_08208
  | 9, _, _ => exact leaf_08209
  | 10, _, _ => exact leaf_08210
  | 11, _, _ => exact leaf_08211
  | 12, _, _ => exact leaf_08212
  | 13, _, _ => exact leaf_08213
  | 14, _, _ => exact leaf_08214
  | 15, _, _ => exact leaf_08215
  | 16, _, _ => exact leaf_08216
  | 17, _, _ => exact leaf_08217
  | 18, _, _ => exact leaf_08218
  | 19, _, _ => exact leaf_08219
  | 20, _, _ => exact leaf_08220
  | 21, _, _ => exact leaf_08221
  | 22, _, _ => exact leaf_08222
  | 23, _, _ => exact leaf_08223
  | 24, _, _ => exact leaf_08224
  | 25, _, _ => exact leaf_08225
  | 26, _, _ => exact leaf_08226
  | 27, _, _ => exact leaf_08227
  | 28, _, _ => exact leaf_08228
  | 29, _, _ => exact leaf_08229
  | 30, _, _ => exact leaf_08230
  | 31, _, _ => exact leaf_08231
  | 32, _, _ => exact leaf_08232
  | 33, _, _ => exact leaf_08233
  | 34, _, _ => exact leaf_08234
  | 35, _, _ => exact leaf_08235
  | 36, _, _ => exact leaf_08236
  | 37, _, _ => exact leaf_08237
  | 38, _, _ => exact leaf_08238
  | 39, _, _ => exact leaf_08239
  | 40, _, _ => exact leaf_08240
  | 41, _, _ => exact leaf_08241
  | 42, _, _ => exact leaf_08242
  | 43, _, _ => exact leaf_08243
  | 44, _, _ => exact leaf_08244
  | 45, _, _ => exact leaf_08245
  | 46, _, _ => exact leaf_08246
  | 47, _, _ => exact leaf_08247
  | 48, _, _ => exact leaf_08248
  | 49, _, _ => exact leaf_08249
  | 50, _, _ => exact leaf_08250
  | 51, _, _ => exact leaf_08251
  | 52, _, _ => exact leaf_08252
  | 53, _, _ => exact leaf_08253
  | 54, _, _ => exact leaf_08254
  | 55, _, _ => exact leaf_08255
  | 56, _, _ => exact leaf_08256
  | 57, _, _ => exact leaf_08257
  | 58, _, _ => exact leaf_08258
  | 59, _, _ => exact leaf_08259
  | 60, _, _ => exact leaf_08260
  | 61, _, _ => exact leaf_08261
  | 62, _, _ => exact leaf_08262
  | 63, _, _ => exact leaf_08263
  | 64, _, _ => exact leaf_08264
  | 65, _, _ => exact leaf_08265
  | 66, _, _ => exact leaf_08266
  | 67, _, _ => exact leaf_08267
  | 68, _, _ => exact leaf_08268
  | 69, _, _ => exact leaf_08269
  | 70, _, _ => exact leaf_08270
  | 71, _, _ => exact leaf_08271
  | 72, _, _ => exact leaf_08272
  | 73, _, _ => exact leaf_08273
  | 74, _, _ => exact leaf_08274
  | 75, _, _ => exact leaf_08275
  | 76, _, _ => exact leaf_08276
  | 77, _, _ => exact leaf_08277
  | 78, _, _ => exact leaf_08278
  | 79, _, _ => exact leaf_08279
  | 80, _, _ => exact leaf_08280
  | 81, _, _ => exact leaf_08281
  | 82, _, _ => exact leaf_08282
  | 83, _, _ => exact leaf_08283
  | 84, _, _ => exact leaf_08284
  | 85, _, _ => exact leaf_08285
  | 86, _, _ => exact leaf_08286
  | 87, _, _ => exact leaf_08287
  | 88, _, _ => exact leaf_08288
  | 89, _, _ => exact leaf_08289
  | 90, _, _ => exact leaf_08290
  | 91, _, _ => exact leaf_08291
  | 92, _, _ => exact leaf_08292
  | 93, _, _ => exact leaf_08293
  | 94, _, _ => exact leaf_08294
  | 95, _, _ => exact leaf_08295
  | 96, _, _ => exact leaf_08296
  | 97, _, _ => exact leaf_08297
  | 98, _, _ => exact leaf_08298
  | 99, _, _ => exact leaf_08299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
