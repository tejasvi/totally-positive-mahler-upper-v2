import TUK.Leaf09100
import TUK.Leaf09101
import TUK.Leaf09102
import TUK.Leaf09103
import TUK.Leaf09104
import TUK.Leaf09105
import TUK.Leaf09106
import TUK.Leaf09107
import TUK.Leaf09108
import TUK.Leaf09109
import TUK.Leaf09110
import TUK.Leaf09111
import TUK.Leaf09112
import TUK.Leaf09113
import TUK.Leaf09114
import TUK.Leaf09115
import TUK.Leaf09116
import TUK.Leaf09117
import TUK.Leaf09118
import TUK.Leaf09119
import TUK.Leaf09120
import TUK.Leaf09121
import TUK.Leaf09122
import TUK.Leaf09123
import TUK.Leaf09124
import TUK.Leaf09125
import TUK.Leaf09126
import TUK.Leaf09127
import TUK.Leaf09128
import TUK.Leaf09129
import TUK.Leaf09130
import TUK.Leaf09131
import TUK.Leaf09132
import TUK.Leaf09133
import TUK.Leaf09134
import TUK.Leaf09135
import TUK.Leaf09136
import TUK.Leaf09137
import TUK.Leaf09138
import TUK.Leaf09139
import TUK.Leaf09140
import TUK.Leaf09141
import TUK.Leaf09142
import TUK.Leaf09143
import TUK.Leaf09144
import TUK.Leaf09145
import TUK.Leaf09146
import TUK.Leaf09147
import TUK.Leaf09148
import TUK.Leaf09149
import TUK.Leaf09150
import TUK.Leaf09151
import TUK.Leaf09152
import TUK.Leaf09153
import TUK.Leaf09154
import TUK.Leaf09155
import TUK.Leaf09156
import TUK.Leaf09157
import TUK.Leaf09158
import TUK.Leaf09159
import TUK.Leaf09160
import TUK.Leaf09161
import TUK.Leaf09162
import TUK.Leaf09163
import TUK.Leaf09164
import TUK.Leaf09165
import TUK.Leaf09166
import TUK.Leaf09167
import TUK.Leaf09168
import TUK.Leaf09169
import TUK.Leaf09170
import TUK.Leaf09171
import TUK.Leaf09172
import TUK.Leaf09173
import TUK.Leaf09174
import TUK.Leaf09175
import TUK.Leaf09176
import TUK.Leaf09177
import TUK.Leaf09178
import TUK.Leaf09179
import TUK.Leaf09180
import TUK.Leaf09181
import TUK.Leaf09182
import TUK.Leaf09183
import TUK.Leaf09184
import TUK.Leaf09185
import TUK.Leaf09186
import TUK.Leaf09187
import TUK.Leaf09188
import TUK.Leaf09189
import TUK.Leaf09190
import TUK.Leaf09191
import TUK.Leaf09192
import TUK.Leaf09193
import TUK.Leaf09194
import TUK.Leaf09195
import TUK.Leaf09196
import TUK.Leaf09197
import TUK.Leaf09198
import TUK.Leaf09199

/-! Leaves 9100 .. 9199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_91 : ∀ j < 100, 100 * 91 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 91 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_09100
  | 1, _, _ => exact leaf_09101
  | 2, _, _ => exact leaf_09102
  | 3, _, _ => exact leaf_09103
  | 4, _, _ => exact leaf_09104
  | 5, _, _ => exact leaf_09105
  | 6, _, _ => exact leaf_09106
  | 7, _, _ => exact leaf_09107
  | 8, _, _ => exact leaf_09108
  | 9, _, _ => exact leaf_09109
  | 10, _, _ => exact leaf_09110
  | 11, _, _ => exact leaf_09111
  | 12, _, _ => exact leaf_09112
  | 13, _, _ => exact leaf_09113
  | 14, _, _ => exact leaf_09114
  | 15, _, _ => exact leaf_09115
  | 16, _, _ => exact leaf_09116
  | 17, _, _ => exact leaf_09117
  | 18, _, _ => exact leaf_09118
  | 19, _, _ => exact leaf_09119
  | 20, _, _ => exact leaf_09120
  | 21, _, _ => exact leaf_09121
  | 22, _, _ => exact leaf_09122
  | 23, _, _ => exact leaf_09123
  | 24, _, _ => exact leaf_09124
  | 25, _, _ => exact leaf_09125
  | 26, _, _ => exact leaf_09126
  | 27, _, _ => exact leaf_09127
  | 28, _, _ => exact leaf_09128
  | 29, _, _ => exact leaf_09129
  | 30, _, _ => exact leaf_09130
  | 31, _, _ => exact leaf_09131
  | 32, _, _ => exact leaf_09132
  | 33, _, _ => exact leaf_09133
  | 34, _, _ => exact leaf_09134
  | 35, _, _ => exact leaf_09135
  | 36, _, _ => exact leaf_09136
  | 37, _, _ => exact leaf_09137
  | 38, _, _ => exact leaf_09138
  | 39, _, _ => exact leaf_09139
  | 40, _, _ => exact leaf_09140
  | 41, _, _ => exact leaf_09141
  | 42, _, _ => exact leaf_09142
  | 43, _, _ => exact leaf_09143
  | 44, _, _ => exact leaf_09144
  | 45, _, _ => exact leaf_09145
  | 46, _, _ => exact leaf_09146
  | 47, _, _ => exact leaf_09147
  | 48, _, _ => exact leaf_09148
  | 49, _, _ => exact leaf_09149
  | 50, _, _ => exact leaf_09150
  | 51, _, _ => exact leaf_09151
  | 52, _, _ => exact leaf_09152
  | 53, _, _ => exact leaf_09153
  | 54, _, _ => exact leaf_09154
  | 55, _, _ => exact leaf_09155
  | 56, _, _ => exact leaf_09156
  | 57, _, _ => exact leaf_09157
  | 58, _, _ => exact leaf_09158
  | 59, _, _ => exact leaf_09159
  | 60, _, _ => exact leaf_09160
  | 61, _, _ => exact leaf_09161
  | 62, _, _ => exact leaf_09162
  | 63, _, _ => exact leaf_09163
  | 64, _, _ => exact leaf_09164
  | 65, _, _ => exact leaf_09165
  | 66, _, _ => exact leaf_09166
  | 67, _, _ => exact leaf_09167
  | 68, _, _ => exact leaf_09168
  | 69, _, _ => exact leaf_09169
  | 70, _, _ => exact leaf_09170
  | 71, _, _ => exact leaf_09171
  | 72, _, _ => exact leaf_09172
  | 73, _, _ => exact leaf_09173
  | 74, _, _ => exact leaf_09174
  | 75, _, _ => exact leaf_09175
  | 76, _, _ => exact leaf_09176
  | 77, _, _ => exact leaf_09177
  | 78, _, _ => exact leaf_09178
  | 79, _, _ => exact leaf_09179
  | 80, _, _ => exact leaf_09180
  | 81, _, _ => exact leaf_09181
  | 82, _, _ => exact leaf_09182
  | 83, _, _ => exact leaf_09183
  | 84, _, _ => exact leaf_09184
  | 85, _, _ => exact leaf_09185
  | 86, _, _ => exact leaf_09186
  | 87, _, _ => exact leaf_09187
  | 88, _, _ => exact leaf_09188
  | 89, _, _ => exact leaf_09189
  | 90, _, _ => exact leaf_09190
  | 91, _, _ => exact leaf_09191
  | 92, _, _ => exact leaf_09192
  | 93, _, _ => exact leaf_09193
  | 94, _, _ => exact leaf_09194
  | 95, _, _ => exact leaf_09195
  | 96, _, _ => exact leaf_09196
  | 97, _, _ => exact leaf_09197
  | 98, _, _ => exact leaf_09198
  | 99, _, _ => exact leaf_09199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
