#import "Basic";
#import "Print_Vars";


Person :: struct {
   name : string;
   age : int;
   note : string;
}

main :: () {
   qiekn := Person.{"qiekn", 118, "Hello?"};

   print_vars(qiekn);
   
   p := *qiekn;
   print_vars(p);
   p.age = 1001;
   print_vars(qiekn);
}
