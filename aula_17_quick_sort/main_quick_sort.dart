import 'dart:math';
import '../cronos.dart';
import 'simple_quick_sort.dart';

void main() {
  List<int> list = [];
  var totalItems = 1000;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }

  // print("Original list: $list");

  var startTime = Cronos.milliseconds;

  SimpleQuickSort.sort(list);
  var endTime = Cronos.milliseconds;

  print("Sorted list: $list");

  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}


