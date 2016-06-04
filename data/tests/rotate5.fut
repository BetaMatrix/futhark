-- Does rotate work even if we do something with the array afterwards?
-- This is particularly a test of how this is simplified.
--
-- ==
-- input { 8 }
-- output { [8i32, 1i32, 2i32, 3i32, 4i32, 5i32, 6i32, 7i32] }


fun [int] main(int i) =
  let a = iota(i)
  in map(1+, rotate(0, 1, a))
