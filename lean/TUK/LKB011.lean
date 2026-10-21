import TUK.Leaf01100
import TUK.Leaf01101
import TUK.Leaf01102
import TUK.Leaf01103
import TUK.Leaf01104
import TUK.Leaf01105
import TUK.Leaf01106
import TUK.Leaf01107
import TUK.Leaf01108
import TUK.Leaf01109
import TUK.Leaf01110
import TUK.Leaf01111
import TUK.Leaf01112
import TUK.Leaf01113
import TUK.Leaf01114
import TUK.Leaf01115
import TUK.Leaf01116
import TUK.Leaf01117
import TUK.Leaf01118
import TUK.Leaf01119
import TUK.Leaf01120
import TUK.Leaf01121
import TUK.Leaf01122
import TUK.Leaf01123
import TUK.Leaf01124
import TUK.Leaf01125
import TUK.Leaf01126
import TUK.Leaf01127
import TUK.Leaf01128
import TUK.Leaf01129
import TUK.Leaf01130
import TUK.Leaf01131
import TUK.Leaf01132
import TUK.Leaf01133
import TUK.Leaf01134
import TUK.Leaf01135
import TUK.Leaf01136
import TUK.Leaf01137
import TUK.Leaf01138
import TUK.Leaf01139
import TUK.Leaf01140
import TUK.Leaf01141
import TUK.Leaf01142
import TUK.Leaf01143
import TUK.Leaf01144
import TUK.Leaf01145
import TUK.Leaf01146
import TUK.Leaf01147
import TUK.Leaf01148
import TUK.Leaf01149
import TUK.Leaf01150
import TUK.Leaf01151
import TUK.Leaf01152
import TUK.Leaf01153
import TUK.Leaf01154
import TUK.Leaf01155
import TUK.Leaf01156
import TUK.Leaf01157
import TUK.Leaf01158
import TUK.Leaf01159
import TUK.Leaf01160
import TUK.Leaf01161
import TUK.Leaf01162
import TUK.Leaf01163
import TUK.Leaf01164
import TUK.Leaf01165
import TUK.Leaf01166
import TUK.Leaf01167
import TUK.Leaf01168
import TUK.Leaf01169
import TUK.Leaf01170
import TUK.Leaf01171
import TUK.Leaf01172
import TUK.Leaf01173
import TUK.Leaf01174
import TUK.Leaf01175
import TUK.Leaf01176
import TUK.Leaf01177
import TUK.Leaf01178
import TUK.Leaf01179
import TUK.Leaf01180
import TUK.Leaf01181
import TUK.Leaf01182
import TUK.Leaf01183
import TUK.Leaf01184
import TUK.Leaf01185
import TUK.Leaf01186
import TUK.Leaf01187
import TUK.Leaf01188
import TUK.Leaf01189
import TUK.Leaf01190
import TUK.Leaf01191
import TUK.Leaf01192
import TUK.Leaf01193
import TUK.Leaf01194
import TUK.Leaf01195
import TUK.Leaf01196
import TUK.Leaf01197
import TUK.Leaf01198
import TUK.Leaf01199

/-! Leaves 1100 .. 1199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_11 : ∀ j < 100, 100 * 11 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 11 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_01100
  | 1, _, _ => exact leaf_01101
  | 2, _, _ => exact leaf_01102
  | 3, _, _ => exact leaf_01103
  | 4, _, _ => exact leaf_01104
  | 5, _, _ => exact leaf_01105
  | 6, _, _ => exact leaf_01106
  | 7, _, _ => exact leaf_01107
  | 8, _, _ => exact leaf_01108
  | 9, _, _ => exact leaf_01109
  | 10, _, _ => exact leaf_01110
  | 11, _, _ => exact leaf_01111
  | 12, _, _ => exact leaf_01112
  | 13, _, _ => exact leaf_01113
  | 14, _, _ => exact leaf_01114
  | 15, _, _ => exact leaf_01115
  | 16, _, _ => exact leaf_01116
  | 17, _, _ => exact leaf_01117
  | 18, _, _ => exact leaf_01118
  | 19, _, _ => exact leaf_01119
  | 20, _, _ => exact leaf_01120
  | 21, _, _ => exact leaf_01121
  | 22, _, _ => exact leaf_01122
  | 23, _, _ => exact leaf_01123
  | 24, _, _ => exact leaf_01124
  | 25, _, _ => exact leaf_01125
  | 26, _, _ => exact leaf_01126
  | 27, _, _ => exact leaf_01127
  | 28, _, _ => exact leaf_01128
  | 29, _, _ => exact leaf_01129
  | 30, _, _ => exact leaf_01130
  | 31, _, _ => exact leaf_01131
  | 32, _, _ => exact leaf_01132
  | 33, _, _ => exact leaf_01133
  | 34, _, _ => exact leaf_01134
  | 35, _, _ => exact leaf_01135
  | 36, _, _ => exact leaf_01136
  | 37, _, _ => exact leaf_01137
  | 38, _, _ => exact leaf_01138
  | 39, _, _ => exact leaf_01139
  | 40, _, _ => exact leaf_01140
  | 41, _, _ => exact leaf_01141
  | 42, _, _ => exact leaf_01142
  | 43, _, _ => exact leaf_01143
  | 44, _, _ => exact leaf_01144
  | 45, _, _ => exact leaf_01145
  | 46, _, _ => exact leaf_01146
  | 47, _, _ => exact leaf_01147
  | 48, _, _ => exact leaf_01148
  | 49, _, _ => exact leaf_01149
  | 50, _, _ => exact leaf_01150
  | 51, _, _ => exact leaf_01151
  | 52, _, _ => exact leaf_01152
  | 53, _, _ => exact leaf_01153
  | 54, _, _ => exact leaf_01154
  | 55, _, _ => exact leaf_01155
  | 56, _, _ => exact leaf_01156
  | 57, _, _ => exact leaf_01157
  | 58, _, _ => exact leaf_01158
  | 59, _, _ => exact leaf_01159
  | 60, _, _ => exact leaf_01160
  | 61, _, _ => exact leaf_01161
  | 62, _, _ => exact leaf_01162
  | 63, _, _ => exact leaf_01163
  | 64, _, _ => exact leaf_01164
  | 65, _, _ => exact leaf_01165
  | 66, _, _ => exact leaf_01166
  | 67, _, _ => exact leaf_01167
  | 68, _, _ => exact leaf_01168
  | 69, _, _ => exact leaf_01169
  | 70, _, _ => exact leaf_01170
  | 71, _, _ => exact leaf_01171
  | 72, _, _ => exact leaf_01172
  | 73, _, _ => exact leaf_01173
  | 74, _, _ => exact leaf_01174
  | 75, _, _ => exact leaf_01175
  | 76, _, _ => exact leaf_01176
  | 77, _, _ => exact leaf_01177
  | 78, _, _ => exact leaf_01178
  | 79, _, _ => exact leaf_01179
  | 80, _, _ => exact leaf_01180
  | 81, _, _ => exact leaf_01181
  | 82, _, _ => exact leaf_01182
  | 83, _, _ => exact leaf_01183
  | 84, _, _ => exact leaf_01184
  | 85, _, _ => exact leaf_01185
  | 86, _, _ => exact leaf_01186
  | 87, _, _ => exact leaf_01187
  | 88, _, _ => exact leaf_01188
  | 89, _, _ => exact leaf_01189
  | 90, _, _ => exact leaf_01190
  | 91, _, _ => exact leaf_01191
  | 92, _, _ => exact leaf_01192
  | 93, _, _ => exact leaf_01193
  | 94, _, _ => exact leaf_01194
  | 95, _, _ => exact leaf_01195
  | 96, _, _ => exact leaf_01196
  | 97, _, _ => exact leaf_01197
  | 98, _, _ => exact leaf_01198
  | 99, _, _ => exact leaf_01199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
