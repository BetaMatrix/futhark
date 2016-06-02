-- ==
-- structure distributed { /If/True/MapKernel 1 /If/False/MapKernel 2 }
--

fun [[int]] main(int outer_loop_count, [int] a) =
  map(fn [int] (int i) =>
        let x = 10 * i in
        map(*x, a),
      iota(outer_loop_count))
