import TUK.Leaf02100
import TUK.Leaf02101
import TUK.Leaf02102
import TUK.Leaf02103
import TUK.Leaf02104
import TUK.Leaf02105
import TUK.Leaf02106
import TUK.Leaf02107
import TUK.Leaf02108
import TUK.Leaf02109
import TUK.Leaf02110
import TUK.Leaf02111
import TUK.Leaf02112
import TUK.Leaf02113
import TUK.Leaf02114
import TUK.Leaf02115
import TUK.Leaf02116
import TUK.Leaf02117
import TUK.Leaf02118
import TUK.Leaf02119
import TUK.Leaf02120
import TUK.Leaf02121
import TUK.Leaf02122
import TUK.Leaf02123
import TUK.Leaf02124
import TUK.Leaf02125
import TUK.Leaf02126
import TUK.Leaf02127
import TUK.Leaf02128
import TUK.Leaf02129
import TUK.Leaf02130
import TUK.Leaf02131
import TUK.Leaf02132
import TUK.Leaf02133
import TUK.Leaf02134
import TUK.Leaf02135
import TUK.Leaf02136
import TUK.Leaf02137
import TUK.Leaf02138
import TUK.Leaf02139
import TUK.Leaf02140
import TUK.Leaf02141
import TUK.Leaf02142
import TUK.Leaf02143
import TUK.Leaf02144
import TUK.Leaf02145
import TUK.Leaf02146
import TUK.Leaf02147
import TUK.Leaf02148
import TUK.Leaf02149
import TUK.Leaf02150
import TUK.Leaf02151
import TUK.Leaf02152
import TUK.Leaf02153
import TUK.Leaf02154
import TUK.Leaf02155
import TUK.Leaf02156
import TUK.Leaf02157
import TUK.Leaf02158
import TUK.Leaf02159
import TUK.Leaf02160
import TUK.Leaf02161
import TUK.Leaf02162
import TUK.Leaf02163
import TUK.Leaf02164
import TUK.Leaf02165
import TUK.Leaf02166
import TUK.Leaf02167
import TUK.Leaf02168
import TUK.Leaf02169
import TUK.Leaf02170
import TUK.Leaf02171
import TUK.Leaf02172
import TUK.Leaf02173
import TUK.Leaf02174
import TUK.Leaf02175
import TUK.Leaf02176
import TUK.Leaf02177
import TUK.Leaf02178
import TUK.Leaf02179
import TUK.Leaf02180
import TUK.Leaf02181
import TUK.Leaf02182
import TUK.Leaf02183
import TUK.Leaf02184
import TUK.Leaf02185
import TUK.Leaf02186
import TUK.Leaf02187
import TUK.Leaf02188
import TUK.Leaf02189
import TUK.Leaf02190
import TUK.Leaf02191
import TUK.Leaf02192
import TUK.Leaf02193
import TUK.Leaf02194
import TUK.Leaf02195
import TUK.Leaf02196
import TUK.Leaf02197
import TUK.Leaf02198
import TUK.Leaf02199

/-! Leaves 2100 .. 2199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_21 : ∀ j < 100, 100 * 21 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 21 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_02100
  | 1, _, _ => exact leaf_02101
  | 2, _, _ => exact leaf_02102
  | 3, _, _ => exact leaf_02103
  | 4, _, _ => exact leaf_02104
  | 5, _, _ => exact leaf_02105
  | 6, _, _ => exact leaf_02106
  | 7, _, _ => exact leaf_02107
  | 8, _, _ => exact leaf_02108
  | 9, _, _ => exact leaf_02109
  | 10, _, _ => exact leaf_02110
  | 11, _, _ => exact leaf_02111
  | 12, _, _ => exact leaf_02112
  | 13, _, _ => exact leaf_02113
  | 14, _, _ => exact leaf_02114
  | 15, _, _ => exact leaf_02115
  | 16, _, _ => exact leaf_02116
  | 17, _, _ => exact leaf_02117
  | 18, _, _ => exact leaf_02118
  | 19, _, _ => exact leaf_02119
  | 20, _, _ => exact leaf_02120
  | 21, _, _ => exact leaf_02121
  | 22, _, _ => exact leaf_02122
  | 23, _, _ => exact leaf_02123
  | 24, _, _ => exact leaf_02124
  | 25, _, _ => exact leaf_02125
  | 26, _, _ => exact leaf_02126
  | 27, _, _ => exact leaf_02127
  | 28, _, _ => exact leaf_02128
  | 29, _, _ => exact leaf_02129
  | 30, _, _ => exact leaf_02130
  | 31, _, _ => exact leaf_02131
  | 32, _, _ => exact leaf_02132
  | 33, _, _ => exact leaf_02133
  | 34, _, _ => exact leaf_02134
  | 35, _, _ => exact leaf_02135
  | 36, _, _ => exact leaf_02136
  | 37, _, _ => exact leaf_02137
  | 38, _, _ => exact leaf_02138
  | 39, _, _ => exact leaf_02139
  | 40, _, _ => exact leaf_02140
  | 41, _, _ => exact leaf_02141
  | 42, _, _ => exact leaf_02142
  | 43, _, _ => exact leaf_02143
  | 44, _, _ => exact leaf_02144
  | 45, _, _ => exact leaf_02145
  | 46, _, _ => exact leaf_02146
  | 47, _, _ => exact leaf_02147
  | 48, _, _ => exact leaf_02148
  | 49, _, _ => exact leaf_02149
  | 50, _, _ => exact leaf_02150
  | 51, _, _ => exact leaf_02151
  | 52, _, _ => exact leaf_02152
  | 53, _, _ => exact leaf_02153
  | 54, _, _ => exact leaf_02154
  | 55, _, _ => exact leaf_02155
  | 56, _, _ => exact leaf_02156
  | 57, _, _ => exact leaf_02157
  | 58, _, _ => exact leaf_02158
  | 59, _, _ => exact leaf_02159
  | 60, _, _ => exact leaf_02160
  | 61, _, _ => exact leaf_02161
  | 62, _, _ => exact leaf_02162
  | 63, _, _ => exact leaf_02163
  | 64, _, _ => exact leaf_02164
  | 65, _, _ => exact leaf_02165
  | 66, _, _ => exact leaf_02166
  | 67, _, _ => exact leaf_02167
  | 68, _, _ => exact leaf_02168
  | 69, _, _ => exact leaf_02169
  | 70, _, _ => exact leaf_02170
  | 71, _, _ => exact leaf_02171
  | 72, _, _ => exact leaf_02172
  | 73, _, _ => exact leaf_02173
  | 74, _, _ => exact leaf_02174
  | 75, _, _ => exact leaf_02175
  | 76, _, _ => exact leaf_02176
  | 77, _, _ => exact leaf_02177
  | 78, _, _ => exact leaf_02178
  | 79, _, _ => exact leaf_02179
  | 80, _, _ => exact leaf_02180
  | 81, _, _ => exact leaf_02181
  | 82, _, _ => exact leaf_02182
  | 83, _, _ => exact leaf_02183
  | 84, _, _ => exact leaf_02184
  | 85, _, _ => exact leaf_02185
  | 86, _, _ => exact leaf_02186
  | 87, _, _ => exact leaf_02187
  | 88, _, _ => exact leaf_02188
  | 89, _, _ => exact leaf_02189
  | 90, _, _ => exact leaf_02190
  | 91, _, _ => exact leaf_02191
  | 92, _, _ => exact leaf_02192
  | 93, _, _ => exact leaf_02193
  | 94, _, _ => exact leaf_02194
  | 95, _, _ => exact leaf_02195
  | 96, _, _ => exact leaf_02196
  | 97, _, _ => exact leaf_02197
  | 98, _, _ => exact leaf_02198
  | 99, _, _ => exact leaf_02199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
