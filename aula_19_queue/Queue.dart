import '../aulas_03_07/linked_list/element.dart';
import '../aulas_03_07/linked_list/linked_list.dart';

// Queue
// A queue is a data structure that follows the First In First Out (FIFO) principle
// The first element added to the queue will be the first to be removed
// The last element added to the queue will be the last to be removed
// The queue has two main operations: add and remove
// The add operation adds an element to the end of the queue
// The remove operation removes the first element from the queue
// The queue can be implemented using a linked list
// The time complexity of the add and remove operations is O(1)
// The space complexity of the queue is O(n)
// The queue is used in many algorithms and applications, such as breadth-first search, task scheduling, and printer queues
// The queue is also used in computer science to store the instructions of a program that is being executed
// The instructions are stored in a queue and executed in the order they were added
// The queue is a fundamental data structure in computer science
class Queue {

  // The queue is implemented using a linked list
  LinkedList _list = LinkedList();


  // Add an element to the end of the queue
  void add(String value) {
    _list.add(value);
  }

  // Remove the first element from the queue
  void remove() {
    _list.remove(_list.first!.value);
  }

  // Get the first element of the queue
  Element? get first => _list.first;

}
