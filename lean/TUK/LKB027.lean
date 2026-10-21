import TUK.Leaf02700
import TUK.Leaf02701
import TUK.Leaf02702
import TUK.Leaf02703
import TUK.Leaf02704
import TUK.Leaf02705
import TUK.Leaf02706
import TUK.Leaf02707
import TUK.Leaf02708
import TUK.Leaf02709
import TUK.Leaf02710
import TUK.Leaf02711
import TUK.Leaf02712
import TUK.Leaf02713
import TUK.Leaf02714
import TUK.Leaf02715
import TUK.Leaf02716
import TUK.Leaf02717
import TUK.Leaf02718
import TUK.Leaf02719
import TUK.Leaf02720
import TUK.Leaf02721
import TUK.Leaf02722
import TUK.Leaf02723
import TUK.Leaf02724
import TUK.Leaf02725
import TUK.Leaf02726
import TUK.Leaf02727
import TUK.Leaf02728
import TUK.Leaf02729
import TUK.Leaf02730
import TUK.Leaf02731
import TUK.Leaf02732
import TUK.Leaf02733
import TUK.Leaf02734
import TUK.Leaf02735
import TUK.Leaf02736
import TUK.Leaf02737
import TUK.Leaf02738
import TUK.Leaf02739
import TUK.Leaf02740
import TUK.Leaf02741
import TUK.Leaf02742
import TUK.Leaf02743
import TUK.Leaf02744
import TUK.Leaf02745
import TUK.Leaf02746
import TUK.Leaf02747
import TUK.Leaf02748
import TUK.Leaf02749
import TUK.Leaf02750
import TUK.Leaf02751
import TUK.Leaf02752
import TUK.Leaf02753
import TUK.Leaf02754
import TUK.Leaf02755
import TUK.Leaf02756
import TUK.Leaf02757
import TUK.Leaf02758
import TUK.Leaf02759
import TUK.Leaf02760
import TUK.Leaf02761
import TUK.Leaf02762
import TUK.Leaf02763
import TUK.Leaf02764
import TUK.Leaf02765
import TUK.Leaf02766
import TUK.Leaf02767
import TUK.Leaf02768
import TUK.Leaf02769
import TUK.Leaf02770
import TUK.Leaf02771
import TUK.Leaf02772
import TUK.Leaf02773
import TUK.Leaf02774
import TUK.Leaf02775
import TUK.Leaf02776
import TUK.Leaf02777
import TUK.Leaf02778
import TUK.Leaf02779
import TUK.Leaf02780
import TUK.Leaf02781
import TUK.Leaf02782
import TUK.Leaf02783
import TUK.Leaf02784
import TUK.Leaf02785
import TUK.Leaf02786
import TUK.Leaf02787
import TUK.Leaf02788
import TUK.Leaf02789
import TUK.Leaf02790
import TUK.Leaf02791
import TUK.Leaf02792
import TUK.Leaf02793
import TUK.Leaf02794
import TUK.Leaf02795
import TUK.Leaf02796
import TUK.Leaf02797
import TUK.Leaf02798
import TUK.Leaf02799

/-! Leaves 2700 .. 2799 of the (C3) tiling (K). -/

set_option maxRecDepth 200000

namespace TUCore.TUK

theorem lkb_27 : ∀ j < 100, 100 * 27 + j < 11393 →
    leafOKU ctxLitU (leavesU.getD (100 * 27 + j) ⟨0, 0, 0, 0, false, 0⟩) = true := by
  intro j hj hk
  match j, hj, hk with
  | 0, _, _ => exact leaf_02700
  | 1, _, _ => exact leaf_02701
  | 2, _, _ => exact leaf_02702
  | 3, _, _ => exact leaf_02703
  | 4, _, _ => exact leaf_02704
  | 5, _, _ => exact leaf_02705
  | 6, _, _ => exact leaf_02706
  | 7, _, _ => exact leaf_02707
  | 8, _, _ => exact leaf_02708
  | 9, _, _ => exact leaf_02709
  | 10, _, _ => exact leaf_02710
  | 11, _, _ => exact leaf_02711
  | 12, _, _ => exact leaf_02712
  | 13, _, _ => exact leaf_02713
  | 14, _, _ => exact leaf_02714
  | 15, _, _ => exact leaf_02715
  | 16, _, _ => exact leaf_02716
  | 17, _, _ => exact leaf_02717
  | 18, _, _ => exact leaf_02718
  | 19, _, _ => exact leaf_02719
  | 20, _, _ => exact leaf_02720
  | 21, _, _ => exact leaf_02721
  | 22, _, _ => exact leaf_02722
  | 23, _, _ => exact leaf_02723
  | 24, _, _ => exact leaf_02724
  | 25, _, _ => exact leaf_02725
  | 26, _, _ => exact leaf_02726
  | 27, _, _ => exact leaf_02727
  | 28, _, _ => exact leaf_02728
  | 29, _, _ => exact leaf_02729
  | 30, _, _ => exact leaf_02730
  | 31, _, _ => exact leaf_02731
  | 32, _, _ => exact leaf_02732
  | 33, _, _ => exact leaf_02733
  | 34, _, _ => exact leaf_02734
  | 35, _, _ => exact leaf_02735
  | 36, _, _ => exact leaf_02736
  | 37, _, _ => exact leaf_02737
  | 38, _, _ => exact leaf_02738
  | 39, _, _ => exact leaf_02739
  | 40, _, _ => exact leaf_02740
  | 41, _, _ => exact leaf_02741
  | 42, _, _ => exact leaf_02742
  | 43, _, _ => exact leaf_02743
  | 44, _, _ => exact leaf_02744
  | 45, _, _ => exact leaf_02745
  | 46, _, _ => exact leaf_02746
  | 47, _, _ => exact leaf_02747
  | 48, _, _ => exact leaf_02748
  | 49, _, _ => exact leaf_02749
  | 50, _, _ => exact leaf_02750
  | 51, _, _ => exact leaf_02751
  | 52, _, _ => exact leaf_02752
  | 53, _, _ => exact leaf_02753
  | 54, _, _ => exact leaf_02754
  | 55, _, _ => exact leaf_02755
  | 56, _, _ => exact leaf_02756
  | 57, _, _ => exact leaf_02757
  | 58, _, _ => exact leaf_02758
  | 59, _, _ => exact leaf_02759
  | 60, _, _ => exact leaf_02760
  | 61, _, _ => exact leaf_02761
  | 62, _, _ => exact leaf_02762
  | 63, _, _ => exact leaf_02763
  | 64, _, _ => exact leaf_02764
  | 65, _, _ => exact leaf_02765
  | 66, _, _ => exact leaf_02766
  | 67, _, _ => exact leaf_02767
  | 68, _, _ => exact leaf_02768
  | 69, _, _ => exact leaf_02769
  | 70, _, _ => exact leaf_02770
  | 71, _, _ => exact leaf_02771
  | 72, _, _ => exact leaf_02772
  | 73, _, _ => exact leaf_02773
  | 74, _, _ => exact leaf_02774
  | 75, _, _ => exact leaf_02775
  | 76, _, _ => exact leaf_02776
  | 77, _, _ => exact leaf_02777
  | 78, _, _ => exact leaf_02778
  | 79, _, _ => exact leaf_02779
  | 80, _, _ => exact leaf_02780
  | 81, _, _ => exact leaf_02781
  | 82, _, _ => exact leaf_02782
  | 83, _, _ => exact leaf_02783
  | 84, _, _ => exact leaf_02784
  | 85, _, _ => exact leaf_02785
  | 86, _, _ => exact leaf_02786
  | 87, _, _ => exact leaf_02787
  | 88, _, _ => exact leaf_02788
  | 89, _, _ => exact leaf_02789
  | 90, _, _ => exact leaf_02790
  | 91, _, _ => exact leaf_02791
  | 92, _, _ => exact leaf_02792
  | 93, _, _ => exact leaf_02793
  | 94, _, _ => exact leaf_02794
  | 95, _, _ => exact leaf_02795
  | 96, _, _ => exact leaf_02796
  | 97, _, _ => exact leaf_02797
  | 98, _, _ => exact leaf_02798
  | 99, _, _ => exact leaf_02799
  | n + 100, hj, _ => exact absurd hj (by omega)

end TUCore.TUK
