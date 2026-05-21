#import "Basic";
#import "Memory";
#import "Print_Vars";
#import "Bit_Array";

Node :: struct {
   value : int;
   next : *Node;
}

create_node :: (value : int) -> *Node {
   node := New(Node);
   node.value = value;
   node.next = null;

   return node;
}
apped_front :: (head: **Node, value : int) -> *Node {
   node := create_node(value);
   node.next = head.*;

   head.* = node;
   return node;
}

apped_back :: (head : *Node, value : int) {
   assert(head != null);

   node := create_node(value);
   while head.next {
      head = head.next;
   }
   head.next = node;
}

free_list :: (head : *Node) {
   while head {
      next := head.next;
      print("free %\n", head.value);
      free(head);
      head = next;
   }
}

print_list :: (head : *Node) {
   print("[");
   while head {
      print("%", head.value);
      if head.next {
         print(", ");
      }
      head = head.next;
   }
   print("]\n");
}

main :: () {
   head := create_node(1);

   apped_back(head, 2);
   apped_back(head, 3);
   apped_back(head, 4);
   apped_back(head, 5);
   apped_back(head, 6);

   print_vars(head);
   apped_front(*head, 0);
   apped_front(*head, -1);
   print_vars(head);

   print_list(head);
   free_list(head);
}
