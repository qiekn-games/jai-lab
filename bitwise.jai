#import "Basic";

main :: () {
    t            : s8 = 0b10111100; // -1
    left_shift   : s8 = 0b11100000; // arithmetic right shift
    right_shift  : s8 = 0b11110111;
    rotate_shift : s8 = 0b10111100; // cycle

    print("t = %\n", t); 
    print("left_shift   = %, %\n", left_shift,   t << 3);
    print("right_shift  = %  %\n", right_shift,  t >> 3);
    print("rotate_shift = %, %\n", rotate_shift, t <<< 8);
}

