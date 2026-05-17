#import "Basic";

main :: () {
   number: int = 8;
   any: Any;
   any = number;

   // any.type = type_of(number)
   // any.value_pointer = *number;
   print("%\n", any);
}
