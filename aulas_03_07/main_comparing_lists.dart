import '../cronos.dart';
import 'generic_linked_list/iterator_linked_list.dart';
import 'generic_linked_list/linked_list.dart';

void main() {
  LinkedList linkedList = LinkedList<int>();
  List<int> list = [];
  int total = 100000;

  var startTime = Cronos.milliseconds;
  for (int i = 0; i < total; i++) {
    list.add(i);
  }
  var endTime = Cronos.milliseconds;
  print("Time to add ${total} elements into a List<int>: ${endTime - startTime} ms");


  startTime = Cronos.milliseconds;
  for (int i = 0; i < total; i++) {
    linkedList.add(i);
  }
  endTime = Cronos.milliseconds;
  print("Time to add ${total} elements into a LinkedList<int>: ${endTime - startTime} ms");


  print("Reading lists");

  startTime = Cronos.milliseconds;
  for (int i = 0; i < total; i++) {
    list[i];
  }
  endTime = Cronos.milliseconds;
  print("Time to read ${total} elements into a List<int>: ${endTime - startTime} ms");


  startTime = Cronos.milliseconds;
  for (int i = 0; i < total; i++) {
    linkedList.get(i);
  }
  endTime = Cronos.milliseconds;
  print("Time to read ${total} elements into a LinkedList<int>: ${endTime - startTime} ms");

  startTime = Cronos.milliseconds;
  IteratorLinkedList iteratorLinkedList = linkedList.getIterator();
  while (iteratorLinkedList.hasNext) {
    iteratorLinkedList.next;
  }
  endTime = Cronos.milliseconds;
  print("Time to read ${total} elements into a LinkedList<int> using an iterator: ${endTime - startTime} ms");
}
