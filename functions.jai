#import "Basic";

main :: () {
   function:: (arg1: int, arg2: int, arg3: int) -> int {
      // write function code here.
      print("args: % % %\n", arg1, arg2, arg3);
   }

   function(1, 2, 3);
   function(arg1=1, arg3=3, arg2=2);

   multiple_return_value_function(x: int, y: int, z: int) -> ret1: int, ret2: int {
      // 
   }
}
