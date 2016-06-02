-- Expected distributed structure:
--
-- map
--   map
-- map
--   map
--     map
-- map
--   map
--     concat
-- map
--   map
--     reduce (which becomes a segmented reduction)
--
-- ==
--
-- structure distributed {
--   /If/True/MapKernel 1
--   /If/False/MapKernel 1
--   /If/False/If/True/MapKernel 1
--   /If/False/If/False/MapKernel 5
--   /If/False/If/False/ScanKernel 2
-- }

fun [([int],[int])] main([[[int],an],n] a, [[int,bn],n] b) =
  zipWith(fn ([int,bn],[int,an]) ([[int]] a_row, [int] b_row) =>
            (map(-1, b_row),
             map(fn int ([int] a_row_row) =>
                   let x = map(+1, a_row_row) in
                   reduce(+, 0, concat(x,x))
                , a_row)),
          a, b)
