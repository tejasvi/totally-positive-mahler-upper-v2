import TUK.Leaf05100
import TUK.Leaf05101
import TUK.Leaf05102
import TUK.Leaf05103
import TUK.Leaf05104
import TUK.Leaf05105
import TUK.Leaf05106
import TUK.Leaf05107
import TUK.Leaf05108
import TUK.Leaf05109
import TUK.Leaf05110
import TUK.Leaf05111
import TUK.Leaf05112
import TUK.Leaf05113
import TUK.Leaf05114
import TUK.Leaf05115
import TUK.Leaf05116
import TUK.Leaf05117
import TUK.Leaf05118
import TUK.Leaf05119
import TUK.Leaf05120
import TUK.Leaf05121
import TUK.Leaf05122
import TUK.Leaf05123
import TUK.Leaf05124
import TUK.Leaf05125
import TUK.Leaf05126
import TUK.Leaf05127
import TUK.Leaf05128
import TUK.Leaf05129
import TUK.Leaf05130
import TUK.Leaf05131
import TUK.Leaf05132
import TUK.Leaf05133
import TUK.Leaf05134
import TUK.Leaf05135
import TUK.Leaf05136
import TUK.Leaf05137
import TUK.Leaf05138
import TUK.Leaf05139
import TUK.Leaf05140
import TUK.Leaf05141
import TUK.Leaf05142
import TUK.Leaf05143
import TUK.Leaf05144
import TUK.Leaf05145
import TUK.Leaf05146
import TUK.Leaf05147
import TUK.Leaf05148
import TUK.Leaf05149
import TUK.Leaf05150
import TUK.Leaf05151
import TUK.Leaf05152
import TUK.Leaf05153
import TUK.Leaf05154
import TUK.Leaf05155
import TUK.Leaf05156
import TUK.Leaf05157
import TUK.Leaf05158
import TUK.Leaf05159
import TUK.Leaf05160
import TUK.Leaf05161
import TUK.Leaf05162
import TUK.Leaf05163
import TUK.Leaf05164
import TUK.Leaf05165
import TUK.Leaf05166
import TUK.Leaf05167
import TUK.Leaf05168
import TUK.Leaf05169
import TUK.Leaf05170
import TUK.Leaf05171
import TUK.Leaf05172
import TUK.Leaf05173
import TUK.Leaf05174
import TUK.Leaf05175
import TUK.Leaf05176
import TUK.Leaf05177
import TUK.Leaf05178
import TUK.Leaf05179
import TUK.Leaf05180
import TUK.Leaf05181
import TUK.Leaf05182
import TUK.Leaf05183
import TUK.Leaf05184
import TUK.Leaf05185
import TUK.Leaf05186
import TUK.Leaf05187
import TUK.Leaf05188
import TUK.Leaf05189
import TUK.Leaf05190
import TUK.Leaf05191
import TUK.Leaf05192
import TUK.Leaf05193
import TUK.Leaf05194
import TUK.Leaf05195
import TUK.Leaf05196
import TUK.Leaf05197
import TUK.Leaf05198
import TUK.Leaf05199

/-! Leaves 5100 .. 5199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_51 : ∀ j < 100, 100 * 51 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 51 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_05100
  | 1, _, _ => exact leaf_05101
  | 2, _, _ => exact leaf_05102
  | 3, _, _ => exact leaf_05103
  | 4, _, _ => exact leaf_05104
  | 5, _, _ => exact leaf_05105
  | 6, _, _ => exact leaf_05106
  | 7, _, _ => exact leaf_05107
  | 8, _, _ => exact leaf_05108
  | 9, _, _ => exact leaf_05109
  | 10, _, _ => exact leaf_05110
  | 11, _, _ => exact leaf_05111
  | 12, _, _ => exact leaf_05112
  | 13, _, _ => exact leaf_05113
  | 14, _, _ => exact leaf_05114
  | 15, _, _ => exact leaf_05115
  | 16, _, _ => exact leaf_05116
  | 17, _, _ => exact leaf_05117
  | 18, _, _ => exact leaf_05118
  | 19, _, _ => exact leaf_05119
  | 20, _, _ => exact leaf_05120
  | 21, _, _ => exact leaf_05121
  | 22, _, _ => exact leaf_05122
  | 23, _, _ => exact leaf_05123
  | 24, _, _ => exact leaf_05124
  | 25, _, _ => exact leaf_05125
  | 26, _, _ => exact leaf_05126
  | 27, _, _ => exact leaf_05127
  | 28, _, _ => exact leaf_05128
  | 29, _, _ => exact leaf_05129
  | 30, _, _ => exact leaf_05130
  | 31, _, _ => exact leaf_05131
  | 32, _, _ => exact leaf_05132
  | 33, _, _ => exact leaf_05133
  | 34, _, _ => exact leaf_05134
  | 35, _, _ => exact leaf_05135
  | 36, _, _ => exact leaf_05136
  | 37, _, _ => exact leaf_05137
  | 38, _, _ => exact leaf_05138
  | 39, _, _ => exact leaf_05139
  | 40, _, _ => exact leaf_05140
  | 41, _, _ => exact leaf_05141
  | 42, _, _ => exact leaf_05142
  | 43, _, _ => exact leaf_05143
  | 44, _, _ => exact leaf_05144
  | 45, _, _ => exact leaf_05145
  | 46, _, _ => exact leaf_05146
  | 47, _, _ => exact leaf_05147
  | 48, _, _ => exact leaf_05148
  | 49, _, _ => exact leaf_05149
  | 50, _, _ => exact leaf_05150
  | 51, _, _ => exact leaf_05151
  | 52, _, _ => exact leaf_05152
  | 53, _, _ => exact leaf_05153
  | 54, _, _ => exact leaf_05154
  | 55, _, _ => exact leaf_05155
  | 56, _, _ => exact leaf_05156
  | 57, _, _ => exact leaf_05157
  | 58, _, _ => exact leaf_05158
  | 59, _, _ => exact leaf_05159
  | 60, _, _ => exact leaf_05160
  | 61, _, _ => exact leaf_05161
  | 62, _, _ => exact leaf_05162
  | 63, _, _ => exact leaf_05163
  | 64, _, _ => exact leaf_05164
  | 65, _, _ => exact leaf_05165
  | 66, _, _ => exact leaf_05166
  | 67, _, _ => exact leaf_05167
  | 68, _, _ => exact leaf_05168
  | 69, _, _ => exact leaf_05169
  | 70, _, _ => exact leaf_05170
  | 71, _, _ => exact leaf_05171
  | 72, _, _ => exact leaf_05172
  | 73, _, _ => exact leaf_05173
  | 74, _, _ => exact leaf_05174
  | 75, _, _ => exact leaf_05175
  | 76, _, _ => exact leaf_05176
  | 77, _, _ => exact leaf_05177
  | 78, _, _ => exact leaf_05178
  | 79, _, _ => exact leaf_05179
  | 80, _, _ => exact leaf_05180
  | 81, _, _ => exact leaf_05181
  | 82, _, _ => exact leaf_05182
  | 83, _, _ => exact leaf_05183
  | 84, _, _ => exact leaf_05184
  | 85, _, _ => exact leaf_05185
  | 86, _, _ => exact leaf_05186
  | 87, _, _ => exact leaf_05187
  | 88, _, _ => exact leaf_05188
  | 89, _, _ => exact leaf_05189
  | 90, _, _ => exact leaf_05190
  | 91, _, _ => exact leaf_05191
  | 92, _, _ => exact leaf_05192
  | 93, _, _ => exact leaf_05193
  | 94, _, _ => exact leaf_05194
  | 95, _, _ => exact leaf_05195
  | 96, _, _ => exact leaf_05196
  | 97, _, _ => exact leaf_05197
  | 98, _, _ => exact leaf_05198
  | 99, _, _ => exact leaf_05199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
