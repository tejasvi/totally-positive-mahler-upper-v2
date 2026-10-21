import TUK.Leaf04200
import TUK.Leaf04201
import TUK.Leaf04202
import TUK.Leaf04203
import TUK.Leaf04204
import TUK.Leaf04205
import TUK.Leaf04206
import TUK.Leaf04207
import TUK.Leaf04208
import TUK.Leaf04209
import TUK.Leaf04210
import TUK.Leaf04211
import TUK.Leaf04212
import TUK.Leaf04213
import TUK.Leaf04214
import TUK.Leaf04215
import TUK.Leaf04216
import TUK.Leaf04217
import TUK.Leaf04218
import TUK.Leaf04219
import TUK.Leaf04220
import TUK.Leaf04221
import TUK.Leaf04222
import TUK.Leaf04223
import TUK.Leaf04224
import TUK.Leaf04225
import TUK.Leaf04226
import TUK.Leaf04227
import TUK.Leaf04228
import TUK.Leaf04229
import TUK.Leaf04230
import TUK.Leaf04231
import TUK.Leaf04232
import TUK.Leaf04233
import TUK.Leaf04234
import TUK.Leaf04235
import TUK.Leaf04236
import TUK.Leaf04237
import TUK.Leaf04238
import TUK.Leaf04239
import TUK.Leaf04240
import TUK.Leaf04241
import TUK.Leaf04242
import TUK.Leaf04243
import TUK.Leaf04244
import TUK.Leaf04245
import TUK.Leaf04246
import TUK.Leaf04247
import TUK.Leaf04248
import TUK.Leaf04249
import TUK.Leaf04250
import TUK.Leaf04251
import TUK.Leaf04252
import TUK.Leaf04253
import TUK.Leaf04254
import TUK.Leaf04255
import TUK.Leaf04256
import TUK.Leaf04257
import TUK.Leaf04258
import TUK.Leaf04259
import TUK.Leaf04260
import TUK.Leaf04261
import TUK.Leaf04262
import TUK.Leaf04263
import TUK.Leaf04264
import TUK.Leaf04265
import TUK.Leaf04266
import TUK.Leaf04267
import TUK.Leaf04268
import TUK.Leaf04269
import TUK.Leaf04270
import TUK.Leaf04271
import TUK.Leaf04272
import TUK.Leaf04273
import TUK.Leaf04274
import TUK.Leaf04275
import TUK.Leaf04276
import TUK.Leaf04277
import TUK.Leaf04278
import TUK.Leaf04279
import TUK.Leaf04280
import TUK.Leaf04281
import TUK.Leaf04282
import TUK.Leaf04283
import TUK.Leaf04284
import TUK.Leaf04285
import TUK.Leaf04286
import TUK.Leaf04287
import TUK.Leaf04288
import TUK.Leaf04289
import TUK.Leaf04290
import TUK.Leaf04291
import TUK.Leaf04292
import TUK.Leaf04293
import TUK.Leaf04294
import TUK.Leaf04295
import TUK.Leaf04296
import TUK.Leaf04297
import TUK.Leaf04298
import TUK.Leaf04299

/-! Leaves 4200 .. 4299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_42 : ∀ j < 100, 100 * 42 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 42 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_04200
  | 1, _, _ => exact leaf_04201
  | 2, _, _ => exact leaf_04202
  | 3, _, _ => exact leaf_04203
  | 4, _, _ => exact leaf_04204
  | 5, _, _ => exact leaf_04205
  | 6, _, _ => exact leaf_04206
  | 7, _, _ => exact leaf_04207
  | 8, _, _ => exact leaf_04208
  | 9, _, _ => exact leaf_04209
  | 10, _, _ => exact leaf_04210
  | 11, _, _ => exact leaf_04211
  | 12, _, _ => exact leaf_04212
  | 13, _, _ => exact leaf_04213
  | 14, _, _ => exact leaf_04214
  | 15, _, _ => exact leaf_04215
  | 16, _, _ => exact leaf_04216
  | 17, _, _ => exact leaf_04217
  | 18, _, _ => exact leaf_04218
  | 19, _, _ => exact leaf_04219
  | 20, _, _ => exact leaf_04220
  | 21, _, _ => exact leaf_04221
  | 22, _, _ => exact leaf_04222
  | 23, _, _ => exact leaf_04223
  | 24, _, _ => exact leaf_04224
  | 25, _, _ => exact leaf_04225
  | 26, _, _ => exact leaf_04226
  | 27, _, _ => exact leaf_04227
  | 28, _, _ => exact leaf_04228
  | 29, _, _ => exact leaf_04229
  | 30, _, _ => exact leaf_04230
  | 31, _, _ => exact leaf_04231
  | 32, _, _ => exact leaf_04232
  | 33, _, _ => exact leaf_04233
  | 34, _, _ => exact leaf_04234
  | 35, _, _ => exact leaf_04235
  | 36, _, _ => exact leaf_04236
  | 37, _, _ => exact leaf_04237
  | 38, _, _ => exact leaf_04238
  | 39, _, _ => exact leaf_04239
  | 40, _, _ => exact leaf_04240
  | 41, _, _ => exact leaf_04241
  | 42, _, _ => exact leaf_04242
  | 43, _, _ => exact leaf_04243
  | 44, _, _ => exact leaf_04244
  | 45, _, _ => exact leaf_04245
  | 46, _, _ => exact leaf_04246
  | 47, _, _ => exact leaf_04247
  | 48, _, _ => exact leaf_04248
  | 49, _, _ => exact leaf_04249
  | 50, _, _ => exact leaf_04250
  | 51, _, _ => exact leaf_04251
  | 52, _, _ => exact leaf_04252
  | 53, _, _ => exact leaf_04253
  | 54, _, _ => exact leaf_04254
  | 55, _, _ => exact leaf_04255
  | 56, _, _ => exact leaf_04256
  | 57, _, _ => exact leaf_04257
  | 58, _, _ => exact leaf_04258
  | 59, _, _ => exact leaf_04259
  | 60, _, _ => exact leaf_04260
  | 61, _, _ => exact leaf_04261
  | 62, _, _ => exact leaf_04262
  | 63, _, _ => exact leaf_04263
  | 64, _, _ => exact leaf_04264
  | 65, _, _ => exact leaf_04265
  | 66, _, _ => exact leaf_04266
  | 67, _, _ => exact leaf_04267
  | 68, _, _ => exact leaf_04268
  | 69, _, _ => exact leaf_04269
  | 70, _, _ => exact leaf_04270
  | 71, _, _ => exact leaf_04271
  | 72, _, _ => exact leaf_04272
  | 73, _, _ => exact leaf_04273
  | 74, _, _ => exact leaf_04274
  | 75, _, _ => exact leaf_04275
  | 76, _, _ => exact leaf_04276
  | 77, _, _ => exact leaf_04277
  | 78, _, _ => exact leaf_04278
  | 79, _, _ => exact leaf_04279
  | 80, _, _ => exact leaf_04280
  | 81, _, _ => exact leaf_04281
  | 82, _, _ => exact leaf_04282
  | 83, _, _ => exact leaf_04283
  | 84, _, _ => exact leaf_04284
  | 85, _, _ => exact leaf_04285
  | 86, _, _ => exact leaf_04286
  | 87, _, _ => exact leaf_04287
  | 88, _, _ => exact leaf_04288
  | 89, _, _ => exact leaf_04289
  | 90, _, _ => exact leaf_04290
  | 91, _, _ => exact leaf_04291
  | 92, _, _ => exact leaf_04292
  | 93, _, _ => exact leaf_04293
  | 94, _, _ => exact leaf_04294
  | 95, _, _ => exact leaf_04295
  | 96, _, _ => exact leaf_04296
  | 97, _, _ => exact leaf_04297
  | 98, _, _ => exact leaf_04298
  | 99, _, _ => exact leaf_04299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
