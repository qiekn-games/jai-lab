#import "Basic";

main :: () {
   // integer is default s64
   a:= 1;
   b: = 2;
   c:         = 3; // It's ok if you want more "space"

   print("a %, b %, c%\n", a, b, c);

   signed_int8  : s8  = -111;
   signed_int16 : s16 = -222;
   signed_int32 : s32 = -333;
   signed_int64 : s64 = -444;

   unsigned_int8  : u8  = 111;
   unsigned_int16 : u16 = 222;
   unsigned_int32 : u32 = 1;
   unsigned_int64 : u64 = 444;

   print("\n");

   print("value = %, type = %\n", signed_int8,   type_of(signed_int8));
   print("value = %, type = %\n", signed_int16,  type_of(signed_int16));
   print("value = %, type = %\n", signed_int32,  type_of(signed_int32));
   print("value = %, type = %\n", signed_int64,  type_of(signed_int64));

   print("\n");

   print("value = %, type = %\n", unsigned_int8,  type_of(unsigned_int8));
   print("value = %, type = %\n", unsigned_int16, type_of(unsigned_int16));
   print("value = %, type = %\n", unsigned_int32, type_of(unsigned_int32));
   print("value = %, type = %\n", unsigned_int64, type_of(unsigned_int64));
}
