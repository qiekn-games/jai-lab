#! jai -quiet
// Make sure jai is in your path or you can write
// absolute path of jai compiler like `/opt/jai/bin/jai`

// Now you can execute your jai script (running at compile-time) 
// ./vim 003_jai_as_script.jai


#import "Basic";

main :: () {
   print("Hello, Sailor from Jai!\n");
}

#run main();
