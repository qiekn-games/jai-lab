#import "Basic";

main :: () {
   add :: (x, y) => x + y;

   add10 :: #bake_arguments add(y=10);

   x := 10;
   res := add10(x);
   print("res=%\n", res);
}
