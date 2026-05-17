#import "Basic";

main :: () {
   test1();
   test2();
}

test1 :: () {
   a := 0; // s64
   if a == {
      case 0;
         print("case 0\n");
         #through;
      case 1;
         // because of the #through statement,
         // this if-case statement will print out "case 1" 
         // in addition to "case 0". 
         print("case 1\n"); 
      case 2;
         print("case 2\n");
      case;
         // because there is no #through statement,
         // this print will be ignored
         print("default case\n");
   }
}

test2 :: () {
   Val :: enum { A; B; C; }

   a := Val.A;
   if #complete a == {
      case Val.A;
         print("This is Val.A case\n");
      case Val.B;
         print("This is Val.B case\n");
      case Val.C;
         print("This is Val.C case\n");
   }
}
