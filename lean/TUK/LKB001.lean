import TUK.Leaf00100
import TUK.Leaf00101
import TUK.Leaf00102
import TUK.Leaf00103
import TUK.Leaf00104
import TUK.Leaf00105
import TUK.Leaf00106
import TUK.Leaf00107
import TUK.Leaf00108
import TUK.Leaf00109
import TUK.Leaf00110
import TUK.Leaf00111
import TUK.Leaf00112
import TUK.Leaf00113
import TUK.Leaf00114
import TUK.Leaf00115
import TUK.Leaf00116
import TUK.Leaf00117
import TUK.Leaf00118
import TUK.Leaf00119
import TUK.Leaf00120
import TUK.Leaf00121
import TUK.Leaf00122
import TUK.Leaf00123
import TUK.Leaf00124
import TUK.Leaf00125
import TUK.Leaf00126
import TUK.Leaf00127
import TUK.Leaf00128
import TUK.Leaf00129
import TUK.Leaf00130
import TUK.Leaf00131
import TUK.Leaf00132
import TUK.Leaf00133
import TUK.Leaf00134
import TUK.Leaf00135
import TUK.Leaf00136
import TUK.Leaf00137
import TUK.Leaf00138
import TUK.Leaf00139
import TUK.Leaf00140
import TUK.Leaf00141
import TUK.Leaf00142
import TUK.Leaf00143
import TUK.Leaf00144
import TUK.Leaf00145
import TUK.Leaf00146
import TUK.Leaf00147
import TUK.Leaf00148
import TUK.Leaf00149
import TUK.Leaf00150
import TUK.Leaf00151
import TUK.Leaf00152
import TUK.Leaf00153
import TUK.Leaf00154
import TUK.Leaf00155
import TUK.Leaf00156
import TUK.Leaf00157
import TUK.Leaf00158
import TUK.Leaf00159
import TUK.Leaf00160
import TUK.Leaf00161
import TUK.Leaf00162
import TUK.Leaf00163
import TUK.Leaf00164
import TUK.Leaf00165
import TUK.Leaf00166
import TUK.Leaf00167
import TUK.Leaf00168
import TUK.Leaf00169
import TUK.Leaf00170
import TUK.Leaf00171
import TUK.Leaf00172
import TUK.Leaf00173
import TUK.Leaf00174
import TUK.Leaf00175
import TUK.Leaf00176
import TUK.Leaf00177
import TUK.Leaf00178
import TUK.Leaf00179
import TUK.Leaf00180
import TUK.Leaf00181
import TUK.Leaf00182
import TUK.Leaf00183
import TUK.Leaf00184
import TUK.Leaf00185
import TUK.Leaf00186
import TUK.Leaf00187
import TUK.Leaf00188
import TUK.Leaf00189
import TUK.Leaf00190
import TUK.Leaf00191
import TUK.Leaf00192
import TUK.Leaf00193
import TUK.Leaf00194
import TUK.Leaf00195
import TUK.Leaf00196
import TUK.Leaf00197
import TUK.Leaf00198
import TUK.Leaf00199

/-! Leaves 100 .. 199 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_1 : ∀ j < 100, 100 * 1 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 1 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_00100
  | 1, _, _ => exact leaf_00101
  | 2, _, _ => exact leaf_00102
  | 3, _, _ => exact leaf_00103
  | 4, _, _ => exact leaf_00104
  | 5, _, _ => exact leaf_00105
  | 6, _, _ => exact leaf_00106
  | 7, _, _ => exact leaf_00107
  | 8, _, _ => exact leaf_00108
  | 9, _, _ => exact leaf_00109
  | 10, _, _ => exact leaf_00110
  | 11, _, _ => exact leaf_00111
  | 12, _, _ => exact leaf_00112
  | 13, _, _ => exact leaf_00113
  | 14, _, _ => exact leaf_00114
  | 15, _, _ => exact leaf_00115
  | 16, _, _ => exact leaf_00116
  | 17, _, _ => exact leaf_00117
  | 18, _, _ => exact leaf_00118
  | 19, _, _ => exact leaf_00119
  | 20, _, _ => exact leaf_00120
  | 21, _, _ => exact leaf_00121
  | 22, _, _ => exact leaf_00122
  | 23, _, _ => exact leaf_00123
  | 24, _, _ => exact leaf_00124
  | 25, _, _ => exact leaf_00125
  | 26, _, _ => exact leaf_00126
  | 27, _, _ => exact leaf_00127
  | 28, _, _ => exact leaf_00128
  | 29, _, _ => exact leaf_00129
  | 30, _, _ => exact leaf_00130
  | 31, _, _ => exact leaf_00131
  | 32, _, _ => exact leaf_00132
  | 33, _, _ => exact leaf_00133
  | 34, _, _ => exact leaf_00134
  | 35, _, _ => exact leaf_00135
  | 36, _, _ => exact leaf_00136
  | 37, _, _ => exact leaf_00137
  | 38, _, _ => exact leaf_00138
  | 39, _, _ => exact leaf_00139
  | 40, _, _ => exact leaf_00140
  | 41, _, _ => exact leaf_00141
  | 42, _, _ => exact leaf_00142
  | 43, _, _ => exact leaf_00143
  | 44, _, _ => exact leaf_00144
  | 45, _, _ => exact leaf_00145
  | 46, _, _ => exact leaf_00146
  | 47, _, _ => exact leaf_00147
  | 48, _, _ => exact leaf_00148
  | 49, _, _ => exact leaf_00149
  | 50, _, _ => exact leaf_00150
  | 51, _, _ => exact leaf_00151
  | 52, _, _ => exact leaf_00152
  | 53, _, _ => exact leaf_00153
  | 54, _, _ => exact leaf_00154
  | 55, _, _ => exact leaf_00155
  | 56, _, _ => exact leaf_00156
  | 57, _, _ => exact leaf_00157
  | 58, _, _ => exact leaf_00158
  | 59, _, _ => exact leaf_00159
  | 60, _, _ => exact leaf_00160
  | 61, _, _ => exact leaf_00161
  | 62, _, _ => exact leaf_00162
  | 63, _, _ => exact leaf_00163
  | 64, _, _ => exact leaf_00164
  | 65, _, _ => exact leaf_00165
  | 66, _, _ => exact leaf_00166
  | 67, _, _ => exact leaf_00167
  | 68, _, _ => exact leaf_00168
  | 69, _, _ => exact leaf_00169
  | 70, _, _ => exact leaf_00170
  | 71, _, _ => exact leaf_00171
  | 72, _, _ => exact leaf_00172
  | 73, _, _ => exact leaf_00173
  | 74, _, _ => exact leaf_00174
  | 75, _, _ => exact leaf_00175
  | 76, _, _ => exact leaf_00176
  | 77, _, _ => exact leaf_00177
  | 78, _, _ => exact leaf_00178
  | 79, _, _ => exact leaf_00179
  | 80, _, _ => exact leaf_00180
  | 81, _, _ => exact leaf_00181
  | 82, _, _ => exact leaf_00182
  | 83, _, _ => exact leaf_00183
  | 84, _, _ => exact leaf_00184
  | 85, _, _ => exact leaf_00185
  | 86, _, _ => exact leaf_00186
  | 87, _, _ => exact leaf_00187
  | 88, _, _ => exact leaf_00188
  | 89, _, _ => exact leaf_00189
  | 90, _, _ => exact leaf_00190
  | 91, _, _ => exact leaf_00191
  | 92, _, _ => exact leaf_00192
  | 93, _, _ => exact leaf_00193
  | 94, _, _ => exact leaf_00194
  | 95, _, _ => exact leaf_00195
  | 96, _, _ => exact leaf_00196
  | 97, _, _ => exact leaf_00197
  | 98, _, _ => exact leaf_00198
  | 99, _, _ => exact leaf_00199
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
