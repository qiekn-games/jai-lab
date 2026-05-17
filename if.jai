#import "Basic";

main :: () {
   // if
   a:= 1;
   b:= 2;

   if a == b
      print("They're equal!\n"); 
   else
      print("They're not equal!\n");

   b = 1;
   if a == b then print("Now they're equal!\n");

   // else if
   grade := 66;
   if grade >= 97 {
      print("Your grade is an A+\n");
   } else if grade >= 90 {
      print("Your grade is an A\n");
   } else if grade >= 80 {
      print("Your grade is a B\n");
   } else if grade >= 70 {
      print("Your grade is a C\n");
   } else if grade >= 60 {
      print("Your grade is a D\n");
   } else {
      print("You grade is a F\n");
   }

   // compile time #if
   CONSTANT :: 3;
   #if CONSTANT == 0 {

   } else #if CONSTANT == 1 {

   } else #if CONSTANT == 2 {

   }

   // ifx Ternary Operator Statement
   x := 0;
   y := 100;
   z := ifx x > y 10 else 1000;
   w := ifx x > y then 10 else 1000;
   print("z = %, w = %\n", z, w);
}
