import 'dart:math';

import '../cronos.dart';
import 'simple_bubble_sort.dart';

void main() {
  List<int> list = [];
  var totalItems = 100;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }

  print("Original list: $list");

  var startTime = Cronos.milliseconds;

  // Bubble sort algorithm implementation
  SimpleBubbleSort.sort(list, (a, b) => a.compareTo(b));

  var endTime = Cronos.milliseconds;

  print("Sorted list: $list");

  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}
