import TUK.Leaf08100
import TUK.Leaf08101
import TUK.Leaf08102
import TUK.Leaf08103
import TUK.Leaf08104
import TUK.Leaf08105
import TUK.Leaf08106
import TUK.Leaf08107
import TUK.Leaf08108
import TUK.Leaf08109
import TUK.Leaf08110
import TUK.Leaf08111
import TUK.Leaf08112
import TUK.Leaf08113
import TUK.Leaf08114
import TUK.Leaf08115
import TUK.Leaf08116
import TUK.Leaf08117
import TUK.Leaf08118
import TUK.Leaf08119
import TUK.Leaf08120
import TUK.Leaf08121
import TUK.Leaf08122
import TUK.Leaf08123
import TUK.Leaf08124
import TUK.Leaf08125
import TUK.Leaf08126
import TUK.Leaf08127
import TUK.Leaf08128
import TUK.Leaf08129
import TUK.Leaf08130
import TUK.Leaf08131
import TUK.Leaf08132
import TUK.Leaf08133
import TUK.Leaf08134
import TUK.Leaf08135
import TUK.Leaf08136
import TUK.Leaf08137
import TUK.Leaf08138
import TUK.Leaf08139
import TUK.Leaf08140
import TUK.Leaf08141
import TUK.Leaf08142
import TUK.Leaf08143
import TUK.Leaf08144
import TUK.Leaf08145
import TUK.Leaf08146
import TUK.Leaf08147
import TUK.Leaf08148
import TUK.Leaf08149
import TUK.Leaf08150
import TUK.Leaf08151
import TUK.Leaf08152
import TUK.Leaf08153
import TUK.Leaf08154
import TUK.Leaf08155
import TUK.Leaf08156
import TUK.Leaf08157
import TUK.Leaf08158
import TUK.Leaf08159
import TUK.Leaf08160
import TUK.Leaf08161
import TUK.Leaf08162
import TUK.Leaf08163
import TUK.Leaf08164
import TUK.Leaf08165
import TUK.Leaf08166
import TUK.Leaf08167
import TUK.Leaf08168
import TUK.Leaf08169
import TUK.Leaf08170
import TUK.Leaf08171
import TUK.Leaf08172
import TUK.Leaf08173
import TUK.Leaf08174
import TUK.Leaf08175
import TUK.Leaf08176
import TUK.Leaf08177
import TUK.Leaf08178
import TUK.Leaf08179
import TUK.Leaf08180
import TUK.Leaf08181
import TUK.Leaf08182
import TUK.Leaf08183
import TUK.Leaf08184
import TUK.Leaf08185
import TUK.Leaf08186
import TUK.Leaf08187
import TUK.Leaf08188
import TUK.Leaf08189
import TUK.Leaf08190
import TUK.Leaf08191
import TUK.Leaf08192
import TUK.Leaf08193
import TUK.Leaf08194
import TUK.Leaf08195
import TUK.Leaf08196
import TUK.Leaf08197
import TUK.Leaf08198
import TUK.Leaf08199

/-! Leaves 8100 .. 8199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_81 : ∀ j < 100, 100 * 81 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 81 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_08100
  | 1, _, _ => exact leaf_08101
  | 2, _, _ => exact leaf_08102
  | 3, _, _ => exact leaf_08103
  | 4, _, _ => exact leaf_08104
  | 5, _, _ => exact leaf_08105
  | 6, _, _ => exact leaf_08106
  | 7, _, _ => exact leaf_08107
  | 8, _, _ => exact leaf_08108
  | 9, _, _ => exact leaf_08109
  | 10, _, _ => exact leaf_08110
  | 11, _, _ => exact leaf_08111
  | 12, _, _ => exact leaf_08112
  | 13, _, _ => exact leaf_08113
  | 14, _, _ => exact leaf_08114
  | 15, _, _ => exact leaf_08115
  | 16, _, _ => exact leaf_08116
  | 17, _, _ => exact leaf_08117
  | 18, _, _ => exact leaf_08118
  | 19, _, _ => exact leaf_08119
  | 20, _, _ => exact leaf_08120
  | 21, _, _ => exact leaf_08121
  | 22, _, _ => exact leaf_08122
  | 23, _, _ => exact leaf_08123
  | 24, _, _ => exact leaf_08124
  | 25, _, _ => exact leaf_08125
  | 26, _, _ => exact leaf_08126
  | 27, _, _ => exact leaf_08127
  | 28, _, _ => exact leaf_08128
  | 29, _, _ => exact leaf_08129
  | 30, _, _ => exact leaf_08130
  | 31, _, _ => exact leaf_08131
  | 32, _, _ => exact leaf_08132
  | 33, _, _ => exact leaf_08133
  | 34, _, _ => exact leaf_08134
  | 35, _, _ => exact leaf_08135
  | 36, _, _ => exact leaf_08136
  | 37, _, _ => exact leaf_08137
  | 38, _, _ => exact leaf_08138
  | 39, _, _ => exact leaf_08139
  | 40, _, _ => exact leaf_08140
  | 41, _, _ => exact leaf_08141
  | 42, _, _ => exact leaf_08142
  | 43, _, _ => exact leaf_08143
  | 44, _, _ => exact leaf_08144
  | 45, _, _ => exact leaf_08145
  | 46, _, _ => exact leaf_08146
  | 47, _, _ => exact leaf_08147
  | 48, _, _ => exact leaf_08148
  | 49, _, _ => exact leaf_08149
  | 50, _, _ => exact leaf_08150
  | 51, _, _ => exact leaf_08151
  | 52, _, _ => exact leaf_08152
  | 53, _, _ => exact leaf_08153
  | 54, _, _ => exact leaf_08154
  | 55, _, _ => exact leaf_08155
  | 56, _, _ => exact leaf_08156
  | 57, _, _ => exact leaf_08157
  | 58, _, _ => exact leaf_08158
  | 59, _, _ => exact leaf_08159
  | 60, _, _ => exact leaf_08160
  | 61, _, _ => exact leaf_08161
  | 62, _, _ => exact leaf_08162
  | 63, _, _ => exact leaf_08163
  | 64, _, _ => exact leaf_08164
  | 65, _, _ => exact leaf_08165
  | 66, _, _ => exact leaf_08166
  | 67, _, _ => exact leaf_08167
  | 68, _, _ => exact leaf_08168
  | 69, _, _ => exact leaf_08169
  | 70, _, _ => exact leaf_08170
  | 71, _, _ => exact leaf_08171
  | 72, _, _ => exact leaf_08172
  | 73, _, _ => exact leaf_08173
  | 74, _, _ => exact leaf_08174
  | 75, _, _ => exact leaf_08175
  | 76, _, _ => exact leaf_08176
  | 77, _, _ => exact leaf_08177
  | 78, _, _ => exact leaf_08178
  | 79, _, _ => exact leaf_08179
  | 80, _, _ => exact leaf_08180
  | 81, _, _ => exact leaf_08181
  | 82, _, _ => exact leaf_08182
  | 83, _, _ => exact leaf_08183
  | 84, _, _ => exact leaf_08184
  | 85, _, _ => exact leaf_08185
  | 86, _, _ => exact leaf_08186
  | 87, _, _ => exact leaf_08187
  | 88, _, _ => exact leaf_08188
  | 89, _, _ => exact leaf_08189
  | 90, _, _ => exact leaf_08190
  | 91, _, _ => exact leaf_08191
  | 92, _, _ => exact leaf_08192
  | 93, _, _ => exact leaf_08193
  | 94, _, _ => exact leaf_08194
  | 95, _, _ => exact leaf_08195
  | 96, _, _ => exact leaf_08196
  | 97, _, _ => exact leaf_08197
  | 98, _, _ => exact leaf_08198
  | 99, _, _ => exact leaf_08199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
