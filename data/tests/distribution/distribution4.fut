-- Expected distributed structure:
--
-- map
--   map
-- map
--   map
--
-- ==
-- structure distributed { /If/True/MapKernel 1 /If/False/MapKernel 2 }

fun [([int],[int])] main([[int,an],n] a, [[int,bn],n] b) =
  zipWith(fn ([int,an],[int,bn]) ([int] a_row, [int] b_row) =>
            (map(+1, a_row),
             map(-1, b_row)),
          a, b)
