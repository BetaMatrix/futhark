-- You may not define the same alias twice.
--
-- ==
-- error: Duplicate.*mydup

type mydup = int
type mydup = f32

fun int main(int x) = x
