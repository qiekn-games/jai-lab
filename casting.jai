#import "Basic";

// https://github.com/Jai-Community/Jai-Community-Library/wiki/Getting-Started#casting

main :: () {
   explicit_and_implicit_casting();
}

print_value :: (value: Any) {
   print("value is %, type is %\n", value, type_of(value));
}

explicit_and_implicit_casting :: () {
   a : u32 = 50000;
   b : u16;
   c : u32;
   d : u16;

   // u32 -> u16, explicit casting
   b = cast(u16) a;

   // u16 -> u32, implicit casting
   c = b;

   // don't really care what the receiving type is.
   // use the autocast  operator `xx`
   d = xx a;

   print_value(a);
   print_value(b);
   print_value(c);
   print_value(d);

   // print("a is %, type is %\n", a, type_of(a));
   // print("b is %, type is %\n", b, type_of(b));
   // print("c is %, type is %\n", c, type_of(c));
   // print("d is %, type is %\n", d, type_of(d));

   a = 65536;
   b = cast(u16) a;

   // Cast bounds check failed. 
   // Number must be in [0, 65535]; it was 16000000. 
   print("b is %, type is %\n", b, type_of(b));

   // b = cast,trunc(u16);
   // b = cast,no_check(u16);
}


