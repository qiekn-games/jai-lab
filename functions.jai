#import "Basic";
#import "String";


sum :: (x: int, y: int, z: int) -> int {
   return x + y + z;
}

default_argument_function :: (x: int = 0) {
   print("defualt argument: x = %\n", x);
}

multi_return_function :: (x :int, y: int) -> a: int, b: int {
   a:= x + y;
   b:= x - y;
   return a, b;
}

multi_return_function3 :: ()  -> a: int, b: int, c: int {
   return 1, 2, 3;
}

get_value :: () -> value: int, success: bool {
   return 1, true;
}

default_value_print :: (a: int = 0, b: int, c: int) {
   print("defualt value print: a=% b=%, c=%\n", a, b, c);
}


varargs_print :: (args: ..int) {
   print("args=%\n", args);
}

outer_function :: () {
   x := 1;

   inner_function :: () {
      print("This is an inner function\n");
      // not work! connot a access variable out of inner_function scope!
      // x = 3;
   }

   inner_function_expand_version :: () #expand {
      // x += 1;
      print("this is another inner function: x = %\n", x); // x = 2
   }

   inner_function();
   inner_function();
   inner_function_expand_version();
   print("this is the outer function: x = %\n", x); // x = 2
}

// be inlined form the function definition
inline_function :: inline (a: int, b: int) -> int {
   return a + b;
}



// Recursion and `#this` directive
factorial :: (a: int) -> int {
   if a <= 1 then return 1;

   // it is same as `return a * factorial(a - 1);`
   return a * #this(a - 1);
}

// Overloading
ckprint :: (x: int) {
   print("ckpint int: x = %\n", x);
}

ckprint :: (x : float) {
   print("ckpint float: x = %\n", x);
}

ckprint :: (x: int, y: int) {
   print("ckpint int, int: x = %, y = %\n", x, y);
}


main :: () {
   res := sum(1, 2, 3);
   print("res: %\n", res);

   res = sum(x=1, z=3, y=2);
   print("res: %\n", res);

   default_argument_function();
   default_argument_function(3);

   a, b:= multi_return_function(3, 4);
   print("a = 3 + 4 =  %\nb = 3 - 4 = %\n", a, b);

   // use `_` to ignore some return values
   _, success := get_value();
   if success then print("ok!\n");
   else print("not ok\n");

   a=, b=, c := multi_return_function3();
   print("a %, b %, c %\n", a, b, c);

   default_value_print(b=2, c=3);

   varargs_print(1, 2, 3, 4, 5);

   args := int.[1, 2, 3, 4, 5];
   varargs_print(..args);
   varargs_print(args=..args);

   outer_function();

   // Lambda expressions
   // closures and capture blocks are not supported!
   lambda_add_function :: (a, b) => a + b;
   res = lambda_add_function(1, 2);
   print("res=%\n", res);

   print("5! is %\n", factorial(5));

   ckprint(1);
   ckprint(1.0);
   ckprint(1, 2);
}
