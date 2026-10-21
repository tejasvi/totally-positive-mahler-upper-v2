import TUK.Leaf11100
import TUK.Leaf11101
import TUK.Leaf11102
import TUK.Leaf11103
import TUK.Leaf11104
import TUK.Leaf11105
import TUK.Leaf11106
import TUK.Leaf11107
import TUK.Leaf11108
import TUK.Leaf11109
import TUK.Leaf11110
import TUK.Leaf11111
import TUK.Leaf11112
import TUK.Leaf11113
import TUK.Leaf11114
import TUK.Leaf11115
import TUK.Leaf11116
import TUK.Leaf11117
import TUK.Leaf11118
import TUK.Leaf11119
import TUK.Leaf11120
import TUK.Leaf11121
import TUK.Leaf11122
import TUK.Leaf11123
import TUK.Leaf11124
import TUK.Leaf11125
import TUK.Leaf11126
import TUK.Leaf11127
import TUK.Leaf11128
import TUK.Leaf11129
import TUK.Leaf11130
import TUK.Leaf11131
import TUK.Leaf11132
import TUK.Leaf11133
import TUK.Leaf11134
import TUK.Leaf11135
import TUK.Leaf11136
import TUK.Leaf11137
import TUK.Leaf11138
import TUK.Leaf11139
import TUK.Leaf11140
import TUK.Leaf11141
import TUK.Leaf11142
import TUK.Leaf11143
import TUK.Leaf11144
import TUK.Leaf11145
import TUK.Leaf11146
import TUK.Leaf11147
import TUK.Leaf11148
import TUK.Leaf11149
import TUK.Leaf11150
import TUK.Leaf11151
import TUK.Leaf11152
import TUK.Leaf11153
import TUK.Leaf11154
import TUK.Leaf11155
import TUK.Leaf11156
import TUK.Leaf11157
import TUK.Leaf11158
import TUK.Leaf11159
import TUK.Leaf11160
import TUK.Leaf11161
import TUK.Leaf11162
import TUK.Leaf11163
import TUK.Leaf11164
import TUK.Leaf11165
import TUK.Leaf11166
import TUK.Leaf11167
import TUK.Leaf11168
import TUK.Leaf11169
import TUK.Leaf11170
import TUK.Leaf11171
import TUK.Leaf11172
import TUK.Leaf11173
import TUK.Leaf11174
import TUK.Leaf11175
import TUK.Leaf11176
import TUK.Leaf11177
import TUK.Leaf11178
import TUK.Leaf11179
import TUK.Leaf11180
import TUK.Leaf11181
import TUK.Leaf11182
import TUK.Leaf11183
import TUK.Leaf11184
import TUK.Leaf11185
import TUK.Leaf11186
import TUK.Leaf11187
import TUK.Leaf11188
import TUK.Leaf11189
import TUK.Leaf11190
import TUK.Leaf11191
import TUK.Leaf11192
import TUK.Leaf11193
import TUK.Leaf11194
import TUK.Leaf11195
import TUK.Leaf11196
import TUK.Leaf11197
import TUK.Leaf11198
import TUK.Leaf11199

/-! Leaves 11100 .. 11199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_111 : ∀ j < 100, 100 * 111 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 111 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_11100
  | 1, _, _ => exact leaf_11101
  | 2, _, _ => exact leaf_11102
  | 3, _, _ => exact leaf_11103
  | 4, _, _ => exact leaf_11104
  | 5, _, _ => exact leaf_11105
  | 6, _, _ => exact leaf_11106
  | 7, _, _ => exact leaf_11107
  | 8, _, _ => exact leaf_11108
  | 9, _, _ => exact leaf_11109
  | 10, _, _ => exact leaf_11110
  | 11, _, _ => exact leaf_11111
  | 12, _, _ => exact leaf_11112
  | 13, _, _ => exact leaf_11113
  | 14, _, _ => exact leaf_11114
  | 15, _, _ => exact leaf_11115
  | 16, _, _ => exact leaf_11116
  | 17, _, _ => exact leaf_11117
  | 18, _, _ => exact leaf_11118
  | 19, _, _ => exact leaf_11119
  | 20, _, _ => exact leaf_11120
  | 21, _, _ => exact leaf_11121
  | 22, _, _ => exact leaf_11122
  | 23, _, _ => exact leaf_11123
  | 24, _, _ => exact leaf_11124
  | 25, _, _ => exact leaf_11125
  | 26, _, _ => exact leaf_11126
  | 27, _, _ => exact leaf_11127
  | 28, _, _ => exact leaf_11128
  | 29, _, _ => exact leaf_11129
  | 30, _, _ => exact leaf_11130
  | 31, _, _ => exact leaf_11131
  | 32, _, _ => exact leaf_11132
  | 33, _, _ => exact leaf_11133
  | 34, _, _ => exact leaf_11134
  | 35, _, _ => exact leaf_11135
  | 36, _, _ => exact leaf_11136
  | 37, _, _ => exact leaf_11137
  | 38, _, _ => exact leaf_11138
  | 39, _, _ => exact leaf_11139
  | 40, _, _ => exact leaf_11140
  | 41, _, _ => exact leaf_11141
  | 42, _, _ => exact leaf_11142
  | 43, _, _ => exact leaf_11143
  | 44, _, _ => exact leaf_11144
  | 45, _, _ => exact leaf_11145
  | 46, _, _ => exact leaf_11146
  | 47, _, _ => exact leaf_11147
  | 48, _, _ => exact leaf_11148
  | 49, _, _ => exact leaf_11149
  | 50, _, _ => exact leaf_11150
  | 51, _, _ => exact leaf_11151
  | 52, _, _ => exact leaf_11152
  | 53, _, _ => exact leaf_11153
  | 54, _, _ => exact leaf_11154
  | 55, _, _ => exact leaf_11155
  | 56, _, _ => exact leaf_11156
  | 57, _, _ => exact leaf_11157
  | 58, _, _ => exact leaf_11158
  | 59, _, _ => exact leaf_11159
  | 60, _, _ => exact leaf_11160
  | 61, _, _ => exact leaf_11161
  | 62, _, _ => exact leaf_11162
  | 63, _, _ => exact leaf_11163
  | 64, _, _ => exact leaf_11164
  | 65, _, _ => exact leaf_11165
  | 66, _, _ => exact leaf_11166
  | 67, _, _ => exact leaf_11167
  | 68, _, _ => exact leaf_11168
  | 69, _, _ => exact leaf_11169
  | 70, _, _ => exact leaf_11170
  | 71, _, _ => exact leaf_11171
  | 72, _, _ => exact leaf_11172
  | 73, _, _ => exact leaf_11173
  | 74, _, _ => exact leaf_11174
  | 75, _, _ => exact leaf_11175
  | 76, _, _ => exact leaf_11176
  | 77, _, _ => exact leaf_11177
  | 78, _, _ => exact leaf_11178
  | 79, _, _ => exact leaf_11179
  | 80, _, _ => exact leaf_11180
  | 81, _, _ => exact leaf_11181
  | 82, _, _ => exact leaf_11182
  | 83, _, _ => exact leaf_11183
  | 84, _, _ => exact leaf_11184
  | 85, _, _ => exact leaf_11185
  | 86, _, _ => exact leaf_11186
  | 87, _, _ => exact leaf_11187
  | 88, _, _ => exact leaf_11188
  | 89, _, _ => exact leaf_11189
  | 90, _, _ => exact leaf_11190
  | 91, _, _ => exact leaf_11191
  | 92, _, _ => exact leaf_11192
  | 93, _, _ => exact leaf_11193
  | 94, _, _ => exact leaf_11194
  | 95, _, _ => exact leaf_11195
  | 96, _, _ => exact leaf_11196
  | 97, _, _ => exact leaf_11197
  | 98, _, _ => exact leaf_11198
  | 99, _, _ => exact leaf_11199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
