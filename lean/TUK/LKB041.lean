import TUK.Leaf04100
import TUK.Leaf04101
import TUK.Leaf04102
import TUK.Leaf04103
import TUK.Leaf04104
import TUK.Leaf04105
import TUK.Leaf04106
import TUK.Leaf04107
import TUK.Leaf04108
import TUK.Leaf04109
import TUK.Leaf04110
import TUK.Leaf04111
import TUK.Leaf04112
import TUK.Leaf04113
import TUK.Leaf04114
import TUK.Leaf04115
import TUK.Leaf04116
import TUK.Leaf04117
import TUK.Leaf04118
import TUK.Leaf04119
import TUK.Leaf04120
import TUK.Leaf04121
import TUK.Leaf04122
import TUK.Leaf04123
import TUK.Leaf04124
import TUK.Leaf04125
import TUK.Leaf04126
import TUK.Leaf04127
import TUK.Leaf04128
import TUK.Leaf04129
import TUK.Leaf04130
import TUK.Leaf04131
import TUK.Leaf04132
import TUK.Leaf04133
import TUK.Leaf04134
import TUK.Leaf04135
import TUK.Leaf04136
import TUK.Leaf04137
import TUK.Leaf04138
import TUK.Leaf04139
import TUK.Leaf04140
import TUK.Leaf04141
import TUK.Leaf04142
import TUK.Leaf04143
import TUK.Leaf04144
import TUK.Leaf04145
import TUK.Leaf04146
import TUK.Leaf04147
import TUK.Leaf04148
import TUK.Leaf04149
import TUK.Leaf04150
import TUK.Leaf04151
import TUK.Leaf04152
import TUK.Leaf04153
import TUK.Leaf04154
import TUK.Leaf04155
import TUK.Leaf04156
import TUK.Leaf04157
import TUK.Leaf04158
import TUK.Leaf04159
import TUK.Leaf04160
import TUK.Leaf04161
import TUK.Leaf04162
import TUK.Leaf04163
import TUK.Leaf04164
import TUK.Leaf04165
import TUK.Leaf04166
import TUK.Leaf04167
import TUK.Leaf04168
import TUK.Leaf04169
import TUK.Leaf04170
import TUK.Leaf04171
import TUK.Leaf04172
import TUK.Leaf04173
import TUK.Leaf04174
import TUK.Leaf04175
import TUK.Leaf04176
import TUK.Leaf04177
import TUK.Leaf04178
import TUK.Leaf04179
import TUK.Leaf04180
import TUK.Leaf04181
import TUK.Leaf04182
import TUK.Leaf04183
import TUK.Leaf04184
import TUK.Leaf04185
import TUK.Leaf04186
import TUK.Leaf04187
import TUK.Leaf04188
import TUK.Leaf04189
import TUK.Leaf04190
import TUK.Leaf04191
import TUK.Leaf04192
import TUK.Leaf04193
import TUK.Leaf04194
import TUK.Leaf04195
import TUK.Leaf04196
import TUK.Leaf04197
import TUK.Leaf04198
import TUK.Leaf04199

/-! Leaves 4100 .. 4199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_41 : ∀ j < 100, 100 * 41 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 41 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_04100
  | 1, _, _ => exact leaf_04101
  | 2, _, _ => exact leaf_04102
  | 3, _, _ => exact leaf_04103
  | 4, _, _ => exact leaf_04104
  | 5, _, _ => exact leaf_04105
  | 6, _, _ => exact leaf_04106
  | 7, _, _ => exact leaf_04107
  | 8, _, _ => exact leaf_04108
  | 9, _, _ => exact leaf_04109
  | 10, _, _ => exact leaf_04110
  | 11, _, _ => exact leaf_04111
  | 12, _, _ => exact leaf_04112
  | 13, _, _ => exact leaf_04113
  | 14, _, _ => exact leaf_04114
  | 15, _, _ => exact leaf_04115
  | 16, _, _ => exact leaf_04116
  | 17, _, _ => exact leaf_04117
  | 18, _, _ => exact leaf_04118
  | 19, _, _ => exact leaf_04119
  | 20, _, _ => exact leaf_04120
  | 21, _, _ => exact leaf_04121
  | 22, _, _ => exact leaf_04122
  | 23, _, _ => exact leaf_04123
  | 24, _, _ => exact leaf_04124
  | 25, _, _ => exact leaf_04125
  | 26, _, _ => exact leaf_04126
  | 27, _, _ => exact leaf_04127
  | 28, _, _ => exact leaf_04128
  | 29, _, _ => exact leaf_04129
  | 30, _, _ => exact leaf_04130
  | 31, _, _ => exact leaf_04131
  | 32, _, _ => exact leaf_04132
  | 33, _, _ => exact leaf_04133
  | 34, _, _ => exact leaf_04134
  | 35, _, _ => exact leaf_04135
  | 36, _, _ => exact leaf_04136
  | 37, _, _ => exact leaf_04137
  | 38, _, _ => exact leaf_04138
  | 39, _, _ => exact leaf_04139
  | 40, _, _ => exact leaf_04140
  | 41, _, _ => exact leaf_04141
  | 42, _, _ => exact leaf_04142
  | 43, _, _ => exact leaf_04143
  | 44, _, _ => exact leaf_04144
  | 45, _, _ => exact leaf_04145
  | 46, _, _ => exact leaf_04146
  | 47, _, _ => exact leaf_04147
  | 48, _, _ => exact leaf_04148
  | 49, _, _ => exact leaf_04149
  | 50, _, _ => exact leaf_04150
  | 51, _, _ => exact leaf_04151
  | 52, _, _ => exact leaf_04152
  | 53, _, _ => exact leaf_04153
  | 54, _, _ => exact leaf_04154
  | 55, _, _ => exact leaf_04155
  | 56, _, _ => exact leaf_04156
  | 57, _, _ => exact leaf_04157
  | 58, _, _ => exact leaf_04158
  | 59, _, _ => exact leaf_04159
  | 60, _, _ => exact leaf_04160
  | 61, _, _ => exact leaf_04161
  | 62, _, _ => exact leaf_04162
  | 63, _, _ => exact leaf_04163
  | 64, _, _ => exact leaf_04164
  | 65, _, _ => exact leaf_04165
  | 66, _, _ => exact leaf_04166
  | 67, _, _ => exact leaf_04167
  | 68, _, _ => exact leaf_04168
  | 69, _, _ => exact leaf_04169
  | 70, _, _ => exact leaf_04170
  | 71, _, _ => exact leaf_04171
  | 72, _, _ => exact leaf_04172
  | 73, _, _ => exact leaf_04173
  | 74, _, _ => exact leaf_04174
  | 75, _, _ => exact leaf_04175
  | 76, _, _ => exact leaf_04176
  | 77, _, _ => exact leaf_04177
  | 78, _, _ => exact leaf_04178
  | 79, _, _ => exact leaf_04179
  | 80, _, _ => exact leaf_04180
  | 81, _, _ => exact leaf_04181
  | 82, _, _ => exact leaf_04182
  | 83, _, _ => exact leaf_04183
  | 84, _, _ => exact leaf_04184
  | 85, _, _ => exact leaf_04185
  | 86, _, _ => exact leaf_04186
  | 87, _, _ => exact leaf_04187
  | 88, _, _ => exact leaf_04188
  | 89, _, _ => exact leaf_04189
  | 90, _, _ => exact leaf_04190
  | 91, _, _ => exact leaf_04191
  | 92, _, _ => exact leaf_04192
  | 93, _, _ => exact leaf_04193
  | 94, _, _ => exact leaf_04194
  | 95, _, _ => exact leaf_04195
  | 96, _, _ => exact leaf_04196
  | 97, _, _ => exact leaf_04197
  | 98, _, _ => exact leaf_04198
  | 99, _, _ => exact leaf_04199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
