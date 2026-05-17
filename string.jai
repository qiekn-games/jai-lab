#import "Basic";


////////////////////////////////////////////////////////////////////////
//                         String Opeartions                          //
////////////////////////////////////////////////////////////////////////

// string comparing functions
equal :: (a: string, b: string) -> bool;
compare :: (a: string, b: string) -> int;
contains :: (str: string, substring: string) -> bool;

// string begins with and ends with functions
begins_with :: (str: string, prefix: string) -> bool;
ends_with :: (str: string, suffix: string) -> bool;

// concatenating and spliting strings
join :: (inputs: .. string, separator := "", before_first := false, after_last := false) -> string;
split :: (str: string, separator: string) -> [] string;

// string to int/float and parsing functions
string_to_int :: (str: string) -> int, bool;
string_to_float :: (str: string) -> float, bool;
parse_float :: (line: *string) -> float, bool;
parse_int :: (line: *string) -> int, bool;
parse_token :: (line: *string) -> string, bool;

// c string manipulation functions
to_c_string :: (str: string) -> *u8; // NOTE: This function heap allocates memory
c_style_strlen :: (ptr: *u8) -> int;

////////////////////////////////////////////////////////////////////////
//                               Basics                               //
////////////////////////////////////////////////////////////////////////

// string :: struct {
//   count: int;
//   data: *u8;
// }

single_Line_string := "This is a single line string";

multi_line_string := #string END_STRING
This
is
a
multi-line
string.
END_STRING;

main :: () {
  print(single_Line_string);
  print(" count: %\n\n", multi_line_string.count);
  print(multi_line_string);


  print("\nTest string as boolean values\n");

  str : string = "Hello.";
  if str {
    print("ture");
  } else {
    print("false");
  }
}
