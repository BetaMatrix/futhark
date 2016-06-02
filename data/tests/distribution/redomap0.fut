-- Distribute a redomap inside of a map.
--
-- One possible structure:
--
-- map
--   map
-- map
--   reduce
--
-- Currently expected structure:
--
-- map
--   loop
-- ==
--
-- structure distributed { MapKernel 2 DoLoop 2 }

fun [int] main([[int]] a) =
  map(fn int ([int] a_r) =>
        reduce(+, 0, map(+1, a_r)),
      a)
