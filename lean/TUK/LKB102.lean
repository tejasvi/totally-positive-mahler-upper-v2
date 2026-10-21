import TUK.Leaf10200
import TUK.Leaf10201
import TUK.Leaf10202
import TUK.Leaf10203
import TUK.Leaf10204
import TUK.Leaf10205
import TUK.Leaf10206
import TUK.Leaf10207
import TUK.Leaf10208
import TUK.Leaf10209
import TUK.Leaf10210
import TUK.Leaf10211
import TUK.Leaf10212
import TUK.Leaf10213
import TUK.Leaf10214
import TUK.Leaf10215
import TUK.Leaf10216
import TUK.Leaf10217
import TUK.Leaf10218
import TUK.Leaf10219
import TUK.Leaf10220
import TUK.Leaf10221
import TUK.Leaf10222
import TUK.Leaf10223
import TUK.Leaf10224
import TUK.Leaf10225
import TUK.Leaf10226
import TUK.Leaf10227
import TUK.Leaf10228
import TUK.Leaf10229
import TUK.Leaf10230
import TUK.Leaf10231
import TUK.Leaf10232
import TUK.Leaf10233
import TUK.Leaf10234
import TUK.Leaf10235
import TUK.Leaf10236
import TUK.Leaf10237
import TUK.Leaf10238
import TUK.Leaf10239
import TUK.Leaf10240
import TUK.Leaf10241
import TUK.Leaf10242
import TUK.Leaf10243
import TUK.Leaf10244
import TUK.Leaf10245
import TUK.Leaf10246
import TUK.Leaf10247
import TUK.Leaf10248
import TUK.Leaf10249
import TUK.Leaf10250
import TUK.Leaf10251
import TUK.Leaf10252
import TUK.Leaf10253
import TUK.Leaf10254
import TUK.Leaf10255
import TUK.Leaf10256
import TUK.Leaf10257
import TUK.Leaf10258
import TUK.Leaf10259
import TUK.Leaf10260
import TUK.Leaf10261
import TUK.Leaf10262
import TUK.Leaf10263
import TUK.Leaf10264
import TUK.Leaf10265
import TUK.Leaf10266
import TUK.Leaf10267
import TUK.Leaf10268
import TUK.Leaf10269
import TUK.Leaf10270
import TUK.Leaf10271
import TUK.Leaf10272
import TUK.Leaf10273
import TUK.Leaf10274
import TUK.Leaf10275
import TUK.Leaf10276
import TUK.Leaf10277
import TUK.Leaf10278
import TUK.Leaf10279
import TUK.Leaf10280
import TUK.Leaf10281
import TUK.Leaf10282
import TUK.Leaf10283
import TUK.Leaf10284
import TUK.Leaf10285
import TUK.Leaf10286
import TUK.Leaf10287
import TUK.Leaf10288
import TUK.Leaf10289
import TUK.Leaf10290
import TUK.Leaf10291
import TUK.Leaf10292
import TUK.Leaf10293
import TUK.Leaf10294
import TUK.Leaf10295
import TUK.Leaf10296
import TUK.Leaf10297
import TUK.Leaf10298
import TUK.Leaf10299

/-! Leaves 10200 .. 10299 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_102 : ∀ j < 100, 100 * 102 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 102 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_10200
  | 1, _, _ => exact leaf_10201
  | 2, _, _ => exact leaf_10202
  | 3, _, _ => exact leaf_10203
  | 4, _, _ => exact leaf_10204
  | 5, _, _ => exact leaf_10205
  | 6, _, _ => exact leaf_10206
  | 7, _, _ => exact leaf_10207
  | 8, _, _ => exact leaf_10208
  | 9, _, _ => exact leaf_10209
  | 10, _, _ => exact leaf_10210
  | 11, _, _ => exact leaf_10211
  | 12, _, _ => exact leaf_10212
  | 13, _, _ => exact leaf_10213
  | 14, _, _ => exact leaf_10214
  | 15, _, _ => exact leaf_10215
  | 16, _, _ => exact leaf_10216
  | 17, _, _ => exact leaf_10217
  | 18, _, _ => exact leaf_10218
  | 19, _, _ => exact leaf_10219
  | 20, _, _ => exact leaf_10220
  | 21, _, _ => exact leaf_10221
  | 22, _, _ => exact leaf_10222
  | 23, _, _ => exact leaf_10223
  | 24, _, _ => exact leaf_10224
  | 25, _, _ => exact leaf_10225
  | 26, _, _ => exact leaf_10226
  | 27, _, _ => exact leaf_10227
  | 28, _, _ => exact leaf_10228
  | 29, _, _ => exact leaf_10229
  | 30, _, _ => exact leaf_10230
  | 31, _, _ => exact leaf_10231
  | 32, _, _ => exact leaf_10232
  | 33, _, _ => exact leaf_10233
  | 34, _, _ => exact leaf_10234
  | 35, _, _ => exact leaf_10235
  | 36, _, _ => exact leaf_10236
  | 37, _, _ => exact leaf_10237
  | 38, _, _ => exact leaf_10238
  | 39, _, _ => exact leaf_10239
  | 40, _, _ => exact leaf_10240
  | 41, _, _ => exact leaf_10241
  | 42, _, _ => exact leaf_10242
  | 43, _, _ => exact leaf_10243
  | 44, _, _ => exact leaf_10244
  | 45, _, _ => exact leaf_10245
  | 46, _, _ => exact leaf_10246
  | 47, _, _ => exact leaf_10247
  | 48, _, _ => exact leaf_10248
  | 49, _, _ => exact leaf_10249
  | 50, _, _ => exact leaf_10250
  | 51, _, _ => exact leaf_10251
  | 52, _, _ => exact leaf_10252
  | 53, _, _ => exact leaf_10253
  | 54, _, _ => exact leaf_10254
  | 55, _, _ => exact leaf_10255
  | 56, _, _ => exact leaf_10256
  | 57, _, _ => exact leaf_10257
  | 58, _, _ => exact leaf_10258
  | 59, _, _ => exact leaf_10259
  | 60, _, _ => exact leaf_10260
  | 61, _, _ => exact leaf_10261
  | 62, _, _ => exact leaf_10262
  | 63, _, _ => exact leaf_10263
  | 64, _, _ => exact leaf_10264
  | 65, _, _ => exact leaf_10265
  | 66, _, _ => exact leaf_10266
  | 67, _, _ => exact leaf_10267
  | 68, _, _ => exact leaf_10268
  | 69, _, _ => exact leaf_10269
  | 70, _, _ => exact leaf_10270
  | 71, _, _ => exact leaf_10271
  | 72, _, _ => exact leaf_10272
  | 73, _, _ => exact leaf_10273
  | 74, _, _ => exact leaf_10274
  | 75, _, _ => exact leaf_10275
  | 76, _, _ => exact leaf_10276
  | 77, _, _ => exact leaf_10277
  | 78, _, _ => exact leaf_10278
  | 79, _, _ => exact leaf_10279
  | 80, _, _ => exact leaf_10280
  | 81, _, _ => exact leaf_10281
  | 82, _, _ => exact leaf_10282
  | 83, _, _ => exact leaf_10283
  | 84, _, _ => exact leaf_10284
  | 85, _, _ => exact leaf_10285
  | 86, _, _ => exact leaf_10286
  | 87, _, _ => exact leaf_10287
  | 88, _, _ => exact leaf_10288
  | 89, _, _ => exact leaf_10289
  | 90, _, _ => exact leaf_10290
  | 91, _, _ => exact leaf_10291
  | 92, _, _ => exact leaf_10292
  | 93, _, _ => exact leaf_10293
  | 94, _, _ => exact leaf_10294
  | 95, _, _ => exact leaf_10295
  | 96, _, _ => exact leaf_10296
  | 97, _, _ => exact leaf_10297
  | 98, _, _ => exact leaf_10298
  | 99, _, _ => exact leaf_10299
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
