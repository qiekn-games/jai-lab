#import "Basic";

test_if_else :: () {
   a:= 1;
   b:= 2;

   if a == b
      print("They're equal!\n"); 
   else
      print("They're not equal!\n");

}

test_if_then :: () {
   a := 2;
   b := 1;
   if a == b then print("Now they're equal!\n");
}

test_else_if :: () {
   game := "enigmash";

   if game == "the_witness" {
      print("Check more games of Jonathon Blow\n");
   } else if game == "enigmash" {
      print("Check more games of Jack Lance\n");
   } else {
      print("Unknown");
   }

   // you can use `case` (jai-style switch) instead. ses: ./case.jai
   // if game == {
   //    case "the_witness";
   //       print("Check more games of Jonathon Blow\n");
   //
   //    case "enigmash";
   //       print("Check more games of Jack Lance\n");
   //
   //    case;
   //       print("Unknown\n");
   // }
}

test_compile_time_if :: () {
   // Branches that do not match are not compiled at all.
   #if OS == .WINDOWS {
      print("Windows\n");
   } else #if OS == .LINUX {
      print("Linux\n");
   } else #if OS == .MACOS {
      print("macOS\n");
   } else {
      print("Unknown OS\n");
   }
}

test_ifx :: () {
   // ifx Ternary Operator Statement
   x, y := 0, 100;
   value_1 := ifx x > y 10 else 1000;

   // You can use `then` after the condition, but it is optional.
   value_2 := ifx x > y then 10 else 1000;

   print("value_1 = %\nvalue_2 = %\n", value_1, value_2);
}

main :: () {
   test_if_else();
   test_if_then();
   test_else_if();
   test_compile_time_if();
   test_ifx();
}
