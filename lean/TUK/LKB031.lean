import TUK.Leaf03100
import TUK.Leaf03101
import TUK.Leaf03102
import TUK.Leaf03103
import TUK.Leaf03104
import TUK.Leaf03105
import TUK.Leaf03106
import TUK.Leaf03107
import TUK.Leaf03108
import TUK.Leaf03109
import TUK.Leaf03110
import TUK.Leaf03111
import TUK.Leaf03112
import TUK.Leaf03113
import TUK.Leaf03114
import TUK.Leaf03115
import TUK.Leaf03116
import TUK.Leaf03117
import TUK.Leaf03118
import TUK.Leaf03119
import TUK.Leaf03120
import TUK.Leaf03121
import TUK.Leaf03122
import TUK.Leaf03123
import TUK.Leaf03124
import TUK.Leaf03125
import TUK.Leaf03126
import TUK.Leaf03127
import TUK.Leaf03128
import TUK.Leaf03129
import TUK.Leaf03130
import TUK.Leaf03131
import TUK.Leaf03132
import TUK.Leaf03133
import TUK.Leaf03134
import TUK.Leaf03135
import TUK.Leaf03136
import TUK.Leaf03137
import TUK.Leaf03138
import TUK.Leaf03139
import TUK.Leaf03140
import TUK.Leaf03141
import TUK.Leaf03142
import TUK.Leaf03143
import TUK.Leaf03144
import TUK.Leaf03145
import TUK.Leaf03146
import TUK.Leaf03147
import TUK.Leaf03148
import TUK.Leaf03149
import TUK.Leaf03150
import TUK.Leaf03151
import TUK.Leaf03152
import TUK.Leaf03153
import TUK.Leaf03154
import TUK.Leaf03155
import TUK.Leaf03156
import TUK.Leaf03157
import TUK.Leaf03158
import TUK.Leaf03159
import TUK.Leaf03160
import TUK.Leaf03161
import TUK.Leaf03162
import TUK.Leaf03163
import TUK.Leaf03164
import TUK.Leaf03165
import TUK.Leaf03166
import TUK.Leaf03167
import TUK.Leaf03168
import TUK.Leaf03169
import TUK.Leaf03170
import TUK.Leaf03171
import TUK.Leaf03172
import TUK.Leaf03173
import TUK.Leaf03174
import TUK.Leaf03175
import TUK.Leaf03176
import TUK.Leaf03177
import TUK.Leaf03178
import TUK.Leaf03179
import TUK.Leaf03180
import TUK.Leaf03181
import TUK.Leaf03182
import TUK.Leaf03183
import TUK.Leaf03184
import TUK.Leaf03185
import TUK.Leaf03186
import TUK.Leaf03187
import TUK.Leaf03188
import TUK.Leaf03189
import TUK.Leaf03190
import TUK.Leaf03191
import TUK.Leaf03192
import TUK.Leaf03193
import TUK.Leaf03194
import TUK.Leaf03195
import TUK.Leaf03196
import TUK.Leaf03197
import TUK.Leaf03198
import TUK.Leaf03199

/-! Leaves 3100 .. 3199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_31 : ∀ j < 100, 100 * 31 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 31 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_03100
  | 1, _, _ => exact leaf_03101
  | 2, _, _ => exact leaf_03102
  | 3, _, _ => exact leaf_03103
  | 4, _, _ => exact leaf_03104
  | 5, _, _ => exact leaf_03105
  | 6, _, _ => exact leaf_03106
  | 7, _, _ => exact leaf_03107
  | 8, _, _ => exact leaf_03108
  | 9, _, _ => exact leaf_03109
  | 10, _, _ => exact leaf_03110
  | 11, _, _ => exact leaf_03111
  | 12, _, _ => exact leaf_03112
  | 13, _, _ => exact leaf_03113
  | 14, _, _ => exact leaf_03114
  | 15, _, _ => exact leaf_03115
  | 16, _, _ => exact leaf_03116
  | 17, _, _ => exact leaf_03117
  | 18, _, _ => exact leaf_03118
  | 19, _, _ => exact leaf_03119
  | 20, _, _ => exact leaf_03120
  | 21, _, _ => exact leaf_03121
  | 22, _, _ => exact leaf_03122
  | 23, _, _ => exact leaf_03123
  | 24, _, _ => exact leaf_03124
  | 25, _, _ => exact leaf_03125
  | 26, _, _ => exact leaf_03126
  | 27, _, _ => exact leaf_03127
  | 28, _, _ => exact leaf_03128
  | 29, _, _ => exact leaf_03129
  | 30, _, _ => exact leaf_03130
  | 31, _, _ => exact leaf_03131
  | 32, _, _ => exact leaf_03132
  | 33, _, _ => exact leaf_03133
  | 34, _, _ => exact leaf_03134
  | 35, _, _ => exact leaf_03135
  | 36, _, _ => exact leaf_03136
  | 37, _, _ => exact leaf_03137
  | 38, _, _ => exact leaf_03138
  | 39, _, _ => exact leaf_03139
  | 40, _, _ => exact leaf_03140
  | 41, _, _ => exact leaf_03141
  | 42, _, _ => exact leaf_03142
  | 43, _, _ => exact leaf_03143
  | 44, _, _ => exact leaf_03144
  | 45, _, _ => exact leaf_03145
  | 46, _, _ => exact leaf_03146
  | 47, _, _ => exact leaf_03147
  | 48, _, _ => exact leaf_03148
  | 49, _, _ => exact leaf_03149
  | 50, _, _ => exact leaf_03150
  | 51, _, _ => exact leaf_03151
  | 52, _, _ => exact leaf_03152
  | 53, _, _ => exact leaf_03153
  | 54, _, _ => exact leaf_03154
  | 55, _, _ => exact leaf_03155
  | 56, _, _ => exact leaf_03156
  | 57, _, _ => exact leaf_03157
  | 58, _, _ => exact leaf_03158
  | 59, _, _ => exact leaf_03159
  | 60, _, _ => exact leaf_03160
  | 61, _, _ => exact leaf_03161
  | 62, _, _ => exact leaf_03162
  | 63, _, _ => exact leaf_03163
  | 64, _, _ => exact leaf_03164
  | 65, _, _ => exact leaf_03165
  | 66, _, _ => exact leaf_03166
  | 67, _, _ => exact leaf_03167
  | 68, _, _ => exact leaf_03168
  | 69, _, _ => exact leaf_03169
  | 70, _, _ => exact leaf_03170
  | 71, _, _ => exact leaf_03171
  | 72, _, _ => exact leaf_03172
  | 73, _, _ => exact leaf_03173
  | 74, _, _ => exact leaf_03174
  | 75, _, _ => exact leaf_03175
  | 76, _, _ => exact leaf_03176
  | 77, _, _ => exact leaf_03177
  | 78, _, _ => exact leaf_03178
  | 79, _, _ => exact leaf_03179
  | 80, _, _ => exact leaf_03180
  | 81, _, _ => exact leaf_03181
  | 82, _, _ => exact leaf_03182
  | 83, _, _ => exact leaf_03183
  | 84, _, _ => exact leaf_03184
  | 85, _, _ => exact leaf_03185
  | 86, _, _ => exact leaf_03186
  | 87, _, _ => exact leaf_03187
  | 88, _, _ => exact leaf_03188
  | 89, _, _ => exact leaf_03189
  | 90, _, _ => exact leaf_03190
  | 91, _, _ => exact leaf_03191
  | 92, _, _ => exact leaf_03192
  | 93, _, _ => exact leaf_03193
  | 94, _, _ => exact leaf_03194
  | 95, _, _ => exact leaf_03195
  | 96, _, _ => exact leaf_03196
  | 97, _, _ => exact leaf_03197
  | 98, _, _ => exact leaf_03198
  | 99, _, _ => exact leaf_03199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
