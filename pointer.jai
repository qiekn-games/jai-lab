#import "Basic";

main :: () {
   test_array();
   test_pointers_to_pointers();
   test_new();
   test_assign_value_to_pointer_adress();
}

test_array :: () {
   array: [4]int = int.[19191919, 2, 3, 4];

   p : *int = *array[0];

   // dereference
   print("the first element is %\n", p.*);
   print("the first element is %\n", << p);
}

test_pointers_to_pointers :: () {
    a: int = 3;
    b: *int = *a;
    c: **int = *b;
    d: ***int = *c;
    print("%\n", << << << d); // => 3 - prints out the value of a, which is 3
    print("%\n", d.*.*.*);    // => 3 - prints out the value of a, which is 3
}

test_new :: () {
   n := New(int);               // (9)
   print("%\n", n);             // => 1d3_156b_0080
   print("%\n", type_of(n));    // (10) => *s64
   print("%\n", << n);          // => 0
   free(n);                     // (11)
}

test_assign_value_to_pointer_adress :: () {
   a := New(int);

   // adress
   print("a=%\n", a);

   // value
   print("<< a =%\n", << a);
   print("a.*  =%\n", a.*);

   // assign
   a.* = 5;
   print("value = %\n", << a);

   << a = 3;
   print("value = %\n", << a);
}
