#import "Basic";

main :: () {
  // outer a = 0
  // local a = qiekn
  // outer a = 10
  // outer a = 10
  test_acess_outer_variable();

  test_log_value();
  test_macro_blacktick_return();
  test_asm_macro();
  test_factorial();
}

////////////////////////////////////////////////////////////////////////
//                            test case 1                             //
////////////////////////////////////////////////////////////////////////

test_acess_outer_variable :: () {
  a := 0;
  print("outer a = %\n", a);
  demo_macro_scope();
  print("outer a = %\n", a);
}

demo_macro_scope :: () #expand {
  a := "qiekn";
  `a += 10;

  print("local a = %\n", a);
  print("outer a = %\n", `a);
}

////////////////////////////////////////////////////////////////////////
//                            test case 2                             //
////////////////////////////////////////////////////////////////////////

test_log_value :: () {
  #import "Print_Vars";

  log_value :: (value: Code) #expand {
    name := #run get_code_name(value);
    print("[log] % = %\n", name, value);
  }

  a:= 10;
  // log_value(a);
  print_vars(a);
}


////////////////////////////////////////////////////////////////////////
//                            test case 3                             //
////////////////////////////////////////////////////////////////////////

test_insert_code :: () {
  // In this macro, we insert the code "c" into the macro three times
  insert_code :: (c: Code) #expand {
    #insert c;
    #insert c;
    #insert c;
  }
}

test_macro_blacktick_return :: () {
  // You can also backtick return values and defer statements.
  // You cannot backtick continue, break, or remove statements.
  // Backticking return values means the macro returns from the outer scope.

  // for example, this function return "Blacktick return macro" instead of "none"
  function :: () -> string {

    macro :: () -> int #expand {
      `defer print("Defer inside macro\n");
      if `a < `b {
        `return "Backtick return macro"; // return a value from the "function"
      }
      return 1;
    }

    a := 0;
    b := 100;
    c := macro();
    return "none";
  }

  s := function();
  print("%\n", s); // s = "Backtick return macro"
}

////////////////////////////////////////////////////////////////////////
//                            test case 4                             //
////////////////////////////////////////////////////////////////////////

add_regs :: (c: __reg, d: __reg) #expand {
  #asm {
    add c, d;
  }
}

test_asm_macro :: () {
  #asm {
    mov a:, 10;
    mov b:, 7;
  }

  add_regs(b, a);
}

////////////////////////////////////////////////////////////////////////
//                            test case 5                             //
////////////////////////////////////////////////////////////////////////

factorial :: (n: int) -> int #expand {
  #if n <= 1 return 1;
  else {
    return n * factorial(n-1);
  }
}

test_factorial :: () {
  x := factorial(5);
  print("factorial of 5 = %\n", x);
}
