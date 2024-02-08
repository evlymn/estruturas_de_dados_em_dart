
import '../aulas_03_07/linked_list/element.dart';
import '../aulas_03_07/linked_list/linked_list.dart';

// Stack
// A stack is a data structure that follows the Last In First Out (LIFO) principle
// The last element added to the stack will be the first to be removed
// The first element added to the stack will be the last to be removed
// The stack has two main operations: add and remove
// The add operation adds an element to the top of the stack
// The remove operation removes the top element from the stack
// The stack can be implemented using a linked list
class Stack {

  // The stack is implemented using a linked list
  LinkedList _list = LinkedList();

  // Add an element to the top of the stack
  add(String value) {
    _list.addAtStart(value);
  }

  // Remove the top element from the stack
  remove() {
    _list.remove(this.get()!.value);
  }

  // Get the top element of the stack
  Element? get () => _list.first;
}
