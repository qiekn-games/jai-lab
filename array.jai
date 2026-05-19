#import "Basic";

main :: () {
   // static array
   a: [4]float;
   a[0] = 10.0;
   a[1] = 20.0;
   a[2] = 1.4;
   a[3] = 10.0;

   print("a = %\n", a);

   b : [4]float = float.[1.0, 2.1, 3.0, 4.0];
   print("b = %\n", b);
   print("b.count=%\n", b.count);
   print("b.data=%\n", b.data);

   if a then print("a is not empty\n");

   matrix : [2][2]int = .[int.[1,1], int.[0, 0]];
   print("matrix=%\n", matrix);

   // dynamic array
   myarray : [..]string;
   print("myarray.count=%\n", myarray.count);
   print("myarray.data=%\n", myarray.data);

   array_add(*myarray, "qiekn ");
   array_add(*myarray, "love ");
   array_add(*myarray, "tomato\n");


   print("myarray.count=%\n", myarray.count);
   print("myarray.allocated=%\n", myarray.allocated);
   print("myarray.data=%\n", myarray.data);

   for i: 0..2 {
      print(myarray[i]);
   }

   // array_reset(*myarray);

   print("myarray.count=%\n", myarray.count);
   print("myarray.data=%\n", myarray.data);
   print("myarray.allocated=%\n", myarray.allocated);


   found, index := array_find(myarray, "love ");
   if found then print("%\n", myarray[index]);

   test_mem_alloc();

}

test_mem_alloc :: () {
   print("----------test_mem_alloc----------\n");
   a : [..]u8;

   print("a.count=%\n", a.count);
   print("a.allocated=%\n", a.allocated);

   array_reserve(*a, 2000);

   for i : 0..1000 {
      array_add(*a, 77);
      print("count=%, ", a.count);
      print("size=%\n", a.allocated);
   }

   array_reset(*a);
   print("%", a);
}
