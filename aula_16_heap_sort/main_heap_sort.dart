import 'dart:math';
import '../cronos.dart';
import 'simple_heap_sort.dart';

void main() {
  List<int> list = [];

  var totalItems = 50;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }
  print("Original list: $list");

  var startTime = Cronos.milliseconds;

  /// Sort the list using the SimpleHeapSort class
  SimpleHeapSort.sort(list, (int a, int b) => a.compareTo(b));
  // Heap sort algorithm implementation
  // The algorithm builds a heap from the list and then repeatedly extracts the largest element from the heap and adds it to the sorted list
  // The algorithm is efficient for large lists
  // It has a time complexity of O(n log n)
  // for (int i = list.length ~/ 2 - 1; i >= 0; i--) {
  //   applyHeap(list, list.length, i);
  // }

  // Swap the first and last elements of the list and apply the heap again
  // Repeat this process until the list is sorted
  // The time complexity of the function is O(n log n)
  // for (int i = list.length - 1; i > 0; i--) {
  //   int temp = list[0];
  //   list[0] = list[i];
  //   list[i] = temp;
  //   applyHeap(list, i, 0);
  // }

  var endTime = Cronos.milliseconds;

  print("Sorted list: $list");
  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}

// Apply the heap
// The function takes a list, the length of the list, and the index of the root of the heap
// The function compares the root with its children and swaps them if necessary
// The function then calls itself with the new root
// The time complexity of the function is O(log n)
void applyHeap(List<int> list, int length, int index) {
  int left = 2 * index + 1;
  int right = 2 * index + 2;
  int root = index;

  if (left < length && list[left] > list[root]) {
    root = left;
  }

  if (right < length && list[right] > list[root]) {
    root = right;
  }

  if (root != index) {
    int temp = list[index];
    list[index] = list[root];
    list[root] = temp;
    applyHeap(list, length, root);
  }
}
