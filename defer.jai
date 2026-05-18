#import "Basic";

main :: () {
   print("Begin\n");

   defer print("\nDeferred\n");

   print("End\n");

   test :: () {
      print("1 ");
      defer print("2\n");
   }

   test();
   for 1..5 {
      test();
   }
}
