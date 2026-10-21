import TUK.Leaf07100
import TUK.Leaf07101
import TUK.Leaf07102
import TUK.Leaf07103
import TUK.Leaf07104
import TUK.Leaf07105
import TUK.Leaf07106
import TUK.Leaf07107
import TUK.Leaf07108
import TUK.Leaf07109
import TUK.Leaf07110
import TUK.Leaf07111
import TUK.Leaf07112
import TUK.Leaf07113
import TUK.Leaf07114
import TUK.Leaf07115
import TUK.Leaf07116
import TUK.Leaf07117
import TUK.Leaf07118
import TUK.Leaf07119
import TUK.Leaf07120
import TUK.Leaf07121
import TUK.Leaf07122
import TUK.Leaf07123
import TUK.Leaf07124
import TUK.Leaf07125
import TUK.Leaf07126
import TUK.Leaf07127
import TUK.Leaf07128
import TUK.Leaf07129
import TUK.Leaf07130
import TUK.Leaf07131
import TUK.Leaf07132
import TUK.Leaf07133
import TUK.Leaf07134
import TUK.Leaf07135
import TUK.Leaf07136
import TUK.Leaf07137
import TUK.Leaf07138
import TUK.Leaf07139
import TUK.Leaf07140
import TUK.Leaf07141
import TUK.Leaf07142
import TUK.Leaf07143
import TUK.Leaf07144
import TUK.Leaf07145
import TUK.Leaf07146
import TUK.Leaf07147
import TUK.Leaf07148
import TUK.Leaf07149
import TUK.Leaf07150
import TUK.Leaf07151
import TUK.Leaf07152
import TUK.Leaf07153
import TUK.Leaf07154
import TUK.Leaf07155
import TUK.Leaf07156
import TUK.Leaf07157
import TUK.Leaf07158
import TUK.Leaf07159
import TUK.Leaf07160
import TUK.Leaf07161
import TUK.Leaf07162
import TUK.Leaf07163
import TUK.Leaf07164
import TUK.Leaf07165
import TUK.Leaf07166
import TUK.Leaf07167
import TUK.Leaf07168
import TUK.Leaf07169
import TUK.Leaf07170
import TUK.Leaf07171
import TUK.Leaf07172
import TUK.Leaf07173
import TUK.Leaf07174
import TUK.Leaf07175
import TUK.Leaf07176
import TUK.Leaf07177
import TUK.Leaf07178
import TUK.Leaf07179
import TUK.Leaf07180
import TUK.Leaf07181
import TUK.Leaf07182
import TUK.Leaf07183
import TUK.Leaf07184
import TUK.Leaf07185
import TUK.Leaf07186
import TUK.Leaf07187
import TUK.Leaf07188
import TUK.Leaf07189
import TUK.Leaf07190
import TUK.Leaf07191
import TUK.Leaf07192
import TUK.Leaf07193
import TUK.Leaf07194
import TUK.Leaf07195
import TUK.Leaf07196
import TUK.Leaf07197
import TUK.Leaf07198
import TUK.Leaf07199

/-! Leaves 7100 .. 7199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_71 : ∀ j < 100, 100 * 71 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 71 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_07100
  | 1, _, _ => exact leaf_07101
  | 2, _, _ => exact leaf_07102
  | 3, _, _ => exact leaf_07103
  | 4, _, _ => exact leaf_07104
  | 5, _, _ => exact leaf_07105
  | 6, _, _ => exact leaf_07106
  | 7, _, _ => exact leaf_07107
  | 8, _, _ => exact leaf_07108
  | 9, _, _ => exact leaf_07109
  | 10, _, _ => exact leaf_07110
  | 11, _, _ => exact leaf_07111
  | 12, _, _ => exact leaf_07112
  | 13, _, _ => exact leaf_07113
  | 14, _, _ => exact leaf_07114
  | 15, _, _ => exact leaf_07115
  | 16, _, _ => exact leaf_07116
  | 17, _, _ => exact leaf_07117
  | 18, _, _ => exact leaf_07118
  | 19, _, _ => exact leaf_07119
  | 20, _, _ => exact leaf_07120
  | 21, _, _ => exact leaf_07121
  | 22, _, _ => exact leaf_07122
  | 23, _, _ => exact leaf_07123
  | 24, _, _ => exact leaf_07124
  | 25, _, _ => exact leaf_07125
  | 26, _, _ => exact leaf_07126
  | 27, _, _ => exact leaf_07127
  | 28, _, _ => exact leaf_07128
  | 29, _, _ => exact leaf_07129
  | 30, _, _ => exact leaf_07130
  | 31, _, _ => exact leaf_07131
  | 32, _, _ => exact leaf_07132
  | 33, _, _ => exact leaf_07133
  | 34, _, _ => exact leaf_07134
  | 35, _, _ => exact leaf_07135
  | 36, _, _ => exact leaf_07136
  | 37, _, _ => exact leaf_07137
  | 38, _, _ => exact leaf_07138
  | 39, _, _ => exact leaf_07139
  | 40, _, _ => exact leaf_07140
  | 41, _, _ => exact leaf_07141
  | 42, _, _ => exact leaf_07142
  | 43, _, _ => exact leaf_07143
  | 44, _, _ => exact leaf_07144
  | 45, _, _ => exact leaf_07145
  | 46, _, _ => exact leaf_07146
  | 47, _, _ => exact leaf_07147
  | 48, _, _ => exact leaf_07148
  | 49, _, _ => exact leaf_07149
  | 50, _, _ => exact leaf_07150
  | 51, _, _ => exact leaf_07151
  | 52, _, _ => exact leaf_07152
  | 53, _, _ => exact leaf_07153
  | 54, _, _ => exact leaf_07154
  | 55, _, _ => exact leaf_07155
  | 56, _, _ => exact leaf_07156
  | 57, _, _ => exact leaf_07157
  | 58, _, _ => exact leaf_07158
  | 59, _, _ => exact leaf_07159
  | 60, _, _ => exact leaf_07160
  | 61, _, _ => exact leaf_07161
  | 62, _, _ => exact leaf_07162
  | 63, _, _ => exact leaf_07163
  | 64, _, _ => exact leaf_07164
  | 65, _, _ => exact leaf_07165
  | 66, _, _ => exact leaf_07166
  | 67, _, _ => exact leaf_07167
  | 68, _, _ => exact leaf_07168
  | 69, _, _ => exact leaf_07169
  | 70, _, _ => exact leaf_07170
  | 71, _, _ => exact leaf_07171
  | 72, _, _ => exact leaf_07172
  | 73, _, _ => exact leaf_07173
  | 74, _, _ => exact leaf_07174
  | 75, _, _ => exact leaf_07175
  | 76, _, _ => exact leaf_07176
  | 77, _, _ => exact leaf_07177
  | 78, _, _ => exact leaf_07178
  | 79, _, _ => exact leaf_07179
  | 80, _, _ => exact leaf_07180
  | 81, _, _ => exact leaf_07181
  | 82, _, _ => exact leaf_07182
  | 83, _, _ => exact leaf_07183
  | 84, _, _ => exact leaf_07184
  | 85, _, _ => exact leaf_07185
  | 86, _, _ => exact leaf_07186
  | 87, _, _ => exact leaf_07187
  | 88, _, _ => exact leaf_07188
  | 89, _, _ => exact leaf_07189
  | 90, _, _ => exact leaf_07190
  | 91, _, _ => exact leaf_07191
  | 92, _, _ => exact leaf_07192
  | 93, _, _ => exact leaf_07193
  | 94, _, _ => exact leaf_07194
  | 95, _, _ => exact leaf_07195
  | 96, _, _ => exact leaf_07196
  | 97, _, _ => exact leaf_07197
  | 98, _, _ => exact leaf_07198
  | 99, _, _ => exact leaf_07199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
