import TUK.Leaf10100
import TUK.Leaf10101
import TUK.Leaf10102
import TUK.Leaf10103
import TUK.Leaf10104
import TUK.Leaf10105
import TUK.Leaf10106
import TUK.Leaf10107
import TUK.Leaf10108
import TUK.Leaf10109
import TUK.Leaf10110
import TUK.Leaf10111
import TUK.Leaf10112
import TUK.Leaf10113
import TUK.Leaf10114
import TUK.Leaf10115
import TUK.Leaf10116
import TUK.Leaf10117
import TUK.Leaf10118
import TUK.Leaf10119
import TUK.Leaf10120
import TUK.Leaf10121
import TUK.Leaf10122
import TUK.Leaf10123
import TUK.Leaf10124
import TUK.Leaf10125
import TUK.Leaf10126
import TUK.Leaf10127
import TUK.Leaf10128
import TUK.Leaf10129
import TUK.Leaf10130
import TUK.Leaf10131
import TUK.Leaf10132
import TUK.Leaf10133
import TUK.Leaf10134
import TUK.Leaf10135
import TUK.Leaf10136
import TUK.Leaf10137
import TUK.Leaf10138
import TUK.Leaf10139
import TUK.Leaf10140
import TUK.Leaf10141
import TUK.Leaf10142
import TUK.Leaf10143
import TUK.Leaf10144
import TUK.Leaf10145
import TUK.Leaf10146
import TUK.Leaf10147
import TUK.Leaf10148
import TUK.Leaf10149
import TUK.Leaf10150
import TUK.Leaf10151
import TUK.Leaf10152
import TUK.Leaf10153
import TUK.Leaf10154
import TUK.Leaf10155
import TUK.Leaf10156
import TUK.Leaf10157
import TUK.Leaf10158
import TUK.Leaf10159
import TUK.Leaf10160
import TUK.Leaf10161
import TUK.Leaf10162
import TUK.Leaf10163
import TUK.Leaf10164
import TUK.Leaf10165
import TUK.Leaf10166
import TUK.Leaf10167
import TUK.Leaf10168
import TUK.Leaf10169
import TUK.Leaf10170
import TUK.Leaf10171
import TUK.Leaf10172
import TUK.Leaf10173
import TUK.Leaf10174
import TUK.Leaf10175
import TUK.Leaf10176
import TUK.Leaf10177
import TUK.Leaf10178
import TUK.Leaf10179
import TUK.Leaf10180
import TUK.Leaf10181
import TUK.Leaf10182
import TUK.Leaf10183
import TUK.Leaf10184
import TUK.Leaf10185
import TUK.Leaf10186
import TUK.Leaf10187
import TUK.Leaf10188
import TUK.Leaf10189
import TUK.Leaf10190
import TUK.Leaf10191
import TUK.Leaf10192
import TUK.Leaf10193
import TUK.Leaf10194
import TUK.Leaf10195
import TUK.Leaf10196
import TUK.Leaf10197
import TUK.Leaf10198
import TUK.Leaf10199

/-! Leaves 10100 .. 10199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_101 : ∀ j < 100, 100 * 101 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 101 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_10100
  | 1, _, _ => exact leaf_10101
  | 2, _, _ => exact leaf_10102
  | 3, _, _ => exact leaf_10103
  | 4, _, _ => exact leaf_10104
  | 5, _, _ => exact leaf_10105
  | 6, _, _ => exact leaf_10106
  | 7, _, _ => exact leaf_10107
  | 8, _, _ => exact leaf_10108
  | 9, _, _ => exact leaf_10109
  | 10, _, _ => exact leaf_10110
  | 11, _, _ => exact leaf_10111
  | 12, _, _ => exact leaf_10112
  | 13, _, _ => exact leaf_10113
  | 14, _, _ => exact leaf_10114
  | 15, _, _ => exact leaf_10115
  | 16, _, _ => exact leaf_10116
  | 17, _, _ => exact leaf_10117
  | 18, _, _ => exact leaf_10118
  | 19, _, _ => exact leaf_10119
  | 20, _, _ => exact leaf_10120
  | 21, _, _ => exact leaf_10121
  | 22, _, _ => exact leaf_10122
  | 23, _, _ => exact leaf_10123
  | 24, _, _ => exact leaf_10124
  | 25, _, _ => exact leaf_10125
  | 26, _, _ => exact leaf_10126
  | 27, _, _ => exact leaf_10127
  | 28, _, _ => exact leaf_10128
  | 29, _, _ => exact leaf_10129
  | 30, _, _ => exact leaf_10130
  | 31, _, _ => exact leaf_10131
  | 32, _, _ => exact leaf_10132
  | 33, _, _ => exact leaf_10133
  | 34, _, _ => exact leaf_10134
  | 35, _, _ => exact leaf_10135
  | 36, _, _ => exact leaf_10136
  | 37, _, _ => exact leaf_10137
  | 38, _, _ => exact leaf_10138
  | 39, _, _ => exact leaf_10139
  | 40, _, _ => exact leaf_10140
  | 41, _, _ => exact leaf_10141
  | 42, _, _ => exact leaf_10142
  | 43, _, _ => exact leaf_10143
  | 44, _, _ => exact leaf_10144
  | 45, _, _ => exact leaf_10145
  | 46, _, _ => exact leaf_10146
  | 47, _, _ => exact leaf_10147
  | 48, _, _ => exact leaf_10148
  | 49, _, _ => exact leaf_10149
  | 50, _, _ => exact leaf_10150
  | 51, _, _ => exact leaf_10151
  | 52, _, _ => exact leaf_10152
  | 53, _, _ => exact leaf_10153
  | 54, _, _ => exact leaf_10154
  | 55, _, _ => exact leaf_10155
  | 56, _, _ => exact leaf_10156
  | 57, _, _ => exact leaf_10157
  | 58, _, _ => exact leaf_10158
  | 59, _, _ => exact leaf_10159
  | 60, _, _ => exact leaf_10160
  | 61, _, _ => exact leaf_10161
  | 62, _, _ => exact leaf_10162
  | 63, _, _ => exact leaf_10163
  | 64, _, _ => exact leaf_10164
  | 65, _, _ => exact leaf_10165
  | 66, _, _ => exact leaf_10166
  | 67, _, _ => exact leaf_10167
  | 68, _, _ => exact leaf_10168
  | 69, _, _ => exact leaf_10169
  | 70, _, _ => exact leaf_10170
  | 71, _, _ => exact leaf_10171
  | 72, _, _ => exact leaf_10172
  | 73, _, _ => exact leaf_10173
  | 74, _, _ => exact leaf_10174
  | 75, _, _ => exact leaf_10175
  | 76, _, _ => exact leaf_10176
  | 77, _, _ => exact leaf_10177
  | 78, _, _ => exact leaf_10178
  | 79, _, _ => exact leaf_10179
  | 80, _, _ => exact leaf_10180
  | 81, _, _ => exact leaf_10181
  | 82, _, _ => exact leaf_10182
  | 83, _, _ => exact leaf_10183
  | 84, _, _ => exact leaf_10184
  | 85, _, _ => exact leaf_10185
  | 86, _, _ => exact leaf_10186
  | 87, _, _ => exact leaf_10187
  | 88, _, _ => exact leaf_10188
  | 89, _, _ => exact leaf_10189
  | 90, _, _ => exact leaf_10190
  | 91, _, _ => exact leaf_10191
  | 92, _, _ => exact leaf_10192
  | 93, _, _ => exact leaf_10193
  | 94, _, _ => exact leaf_10194
  | 95, _, _ => exact leaf_10195
  | 96, _, _ => exact leaf_10196
  | 97, _, _ => exact leaf_10197
  | 98, _, _ => exact leaf_10198
  | 99, _, _ => exact leaf_10199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
