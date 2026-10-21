import TUK.Leaf06100
import TUK.Leaf06101
import TUK.Leaf06102
import TUK.Leaf06103
import TUK.Leaf06104
import TUK.Leaf06105
import TUK.Leaf06106
import TUK.Leaf06107
import TUK.Leaf06108
import TUK.Leaf06109
import TUK.Leaf06110
import TUK.Leaf06111
import TUK.Leaf06112
import TUK.Leaf06113
import TUK.Leaf06114
import TUK.Leaf06115
import TUK.Leaf06116
import TUK.Leaf06117
import TUK.Leaf06118
import TUK.Leaf06119
import TUK.Leaf06120
import TUK.Leaf06121
import TUK.Leaf06122
import TUK.Leaf06123
import TUK.Leaf06124
import TUK.Leaf06125
import TUK.Leaf06126
import TUK.Leaf06127
import TUK.Leaf06128
import TUK.Leaf06129
import TUK.Leaf06130
import TUK.Leaf06131
import TUK.Leaf06132
import TUK.Leaf06133
import TUK.Leaf06134
import TUK.Leaf06135
import TUK.Leaf06136
import TUK.Leaf06137
import TUK.Leaf06138
import TUK.Leaf06139
import TUK.Leaf06140
import TUK.Leaf06141
import TUK.Leaf06142
import TUK.Leaf06143
import TUK.Leaf06144
import TUK.Leaf06145
import TUK.Leaf06146
import TUK.Leaf06147
import TUK.Leaf06148
import TUK.Leaf06149
import TUK.Leaf06150
import TUK.Leaf06151
import TUK.Leaf06152
import TUK.Leaf06153
import TUK.Leaf06154
import TUK.Leaf06155
import TUK.Leaf06156
import TUK.Leaf06157
import TUK.Leaf06158
import TUK.Leaf06159
import TUK.Leaf06160
import TUK.Leaf06161
import TUK.Leaf06162
import TUK.Leaf06163
import TUK.Leaf06164
import TUK.Leaf06165
import TUK.Leaf06166
import TUK.Leaf06167
import TUK.Leaf06168
import TUK.Leaf06169
import TUK.Leaf06170
import TUK.Leaf06171
import TUK.Leaf06172
import TUK.Leaf06173
import TUK.Leaf06174
import TUK.Leaf06175
import TUK.Leaf06176
import TUK.Leaf06177
import TUK.Leaf06178
import TUK.Leaf06179
import TUK.Leaf06180
import TUK.Leaf06181
import TUK.Leaf06182
import TUK.Leaf06183
import TUK.Leaf06184
import TUK.Leaf06185
import TUK.Leaf06186
import TUK.Leaf06187
import TUK.Leaf06188
import TUK.Leaf06189
import TUK.Leaf06190
import TUK.Leaf06191
import TUK.Leaf06192
import TUK.Leaf06193
import TUK.Leaf06194
import TUK.Leaf06195
import TUK.Leaf06196
import TUK.Leaf06197
import TUK.Leaf06198
import TUK.Leaf06199

/-! Leaves 6100 .. 6199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_61 : ∀ j < 100, 100 * 61 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 61 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_06100
  | 1, _, _ => exact leaf_06101
  | 2, _, _ => exact leaf_06102
  | 3, _, _ => exact leaf_06103
  | 4, _, _ => exact leaf_06104
  | 5, _, _ => exact leaf_06105
  | 6, _, _ => exact leaf_06106
  | 7, _, _ => exact leaf_06107
  | 8, _, _ => exact leaf_06108
  | 9, _, _ => exact leaf_06109
  | 10, _, _ => exact leaf_06110
  | 11, _, _ => exact leaf_06111
  | 12, _, _ => exact leaf_06112
  | 13, _, _ => exact leaf_06113
  | 14, _, _ => exact leaf_06114
  | 15, _, _ => exact leaf_06115
  | 16, _, _ => exact leaf_06116
  | 17, _, _ => exact leaf_06117
  | 18, _, _ => exact leaf_06118
  | 19, _, _ => exact leaf_06119
  | 20, _, _ => exact leaf_06120
  | 21, _, _ => exact leaf_06121
  | 22, _, _ => exact leaf_06122
  | 23, _, _ => exact leaf_06123
  | 24, _, _ => exact leaf_06124
  | 25, _, _ => exact leaf_06125
  | 26, _, _ => exact leaf_06126
  | 27, _, _ => exact leaf_06127
  | 28, _, _ => exact leaf_06128
  | 29, _, _ => exact leaf_06129
  | 30, _, _ => exact leaf_06130
  | 31, _, _ => exact leaf_06131
  | 32, _, _ => exact leaf_06132
  | 33, _, _ => exact leaf_06133
  | 34, _, _ => exact leaf_06134
  | 35, _, _ => exact leaf_06135
  | 36, _, _ => exact leaf_06136
  | 37, _, _ => exact leaf_06137
  | 38, _, _ => exact leaf_06138
  | 39, _, _ => exact leaf_06139
  | 40, _, _ => exact leaf_06140
  | 41, _, _ => exact leaf_06141
  | 42, _, _ => exact leaf_06142
  | 43, _, _ => exact leaf_06143
  | 44, _, _ => exact leaf_06144
  | 45, _, _ => exact leaf_06145
  | 46, _, _ => exact leaf_06146
  | 47, _, _ => exact leaf_06147
  | 48, _, _ => exact leaf_06148
  | 49, _, _ => exact leaf_06149
  | 50, _, _ => exact leaf_06150
  | 51, _, _ => exact leaf_06151
  | 52, _, _ => exact leaf_06152
  | 53, _, _ => exact leaf_06153
  | 54, _, _ => exact leaf_06154
  | 55, _, _ => exact leaf_06155
  | 56, _, _ => exact leaf_06156
  | 57, _, _ => exact leaf_06157
  | 58, _, _ => exact leaf_06158
  | 59, _, _ => exact leaf_06159
  | 60, _, _ => exact leaf_06160
  | 61, _, _ => exact leaf_06161
  | 62, _, _ => exact leaf_06162
  | 63, _, _ => exact leaf_06163
  | 64, _, _ => exact leaf_06164
  | 65, _, _ => exact leaf_06165
  | 66, _, _ => exact leaf_06166
  | 67, _, _ => exact leaf_06167
  | 68, _, _ => exact leaf_06168
  | 69, _, _ => exact leaf_06169
  | 70, _, _ => exact leaf_06170
  | 71, _, _ => exact leaf_06171
  | 72, _, _ => exact leaf_06172
  | 73, _, _ => exact leaf_06173
  | 74, _, _ => exact leaf_06174
  | 75, _, _ => exact leaf_06175
  | 76, _, _ => exact leaf_06176
  | 77, _, _ => exact leaf_06177
  | 78, _, _ => exact leaf_06178
  | 79, _, _ => exact leaf_06179
  | 80, _, _ => exact leaf_06180
  | 81, _, _ => exact leaf_06181
  | 82, _, _ => exact leaf_06182
  | 83, _, _ => exact leaf_06183
  | 84, _, _ => exact leaf_06184
  | 85, _, _ => exact leaf_06185
  | 86, _, _ => exact leaf_06186
  | 87, _, _ => exact leaf_06187
  | 88, _, _ => exact leaf_06188
  | 89, _, _ => exact leaf_06189
  | 90, _, _ => exact leaf_06190
  | 91, _, _ => exact leaf_06191
  | 92, _, _ => exact leaf_06192
  | 93, _, _ => exact leaf_06193
  | 94, _, _ => exact leaf_06194
  | 95, _, _ => exact leaf_06195
  | 96, _, _ => exact leaf_06196
  | 97, _, _ => exact leaf_06197
  | 98, _, _ => exact leaf_06198
  | 99, _, _ => exact leaf_06199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
