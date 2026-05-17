#import "Basic";

main :: () {
    // float defaults to float32
    x := 1.0;
    print("s: %\n", 1.0e-2);

    print("x %, type is %", x, type_of(x));

    a : float = 1.11;  // default -> flaot32

    b : float32 = 2.22;
    c : float64 = 3.33;

    print("\n");

    print("a value = %, type = %\n", a, type_of(a));
    print("b value = %, type = %\n", b, type_of(b));
    print("c value = %, type = %\n", c, type_of(c));

    t : s8 = 0b10101010;
    left_shift : s8= 0b11110000;
    right_shift : s8 = 0b11111111;
    rotate_shift : s8= 0b10101010;

    print("t = %\n", t);
    print("left_shift = %, %\n", left_shift, t << 3);
    print("right_shift = %, %\n", right_shift, t >> 3);
    print("rotate_shift = %, %\n", rotate_shift, t >>> 8);
}
