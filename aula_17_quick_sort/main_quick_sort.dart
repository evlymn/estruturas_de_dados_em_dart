import 'dart:math';
import '../cronos.dart';
import 'simple_quick_sort.dart';

void main() {
  // List<int> list = [26, 15, 27, 11, 0, 6, 6, 3, 0, 8, 1, 14, 15, 19, 16, 16, 1, 4, 6, 19, 28, 13, 15, 9, 19, 8, 21, 17, 25, 23];
  List<int> list = [];
  var totalItems = 10;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }

   print("Original list: $list");

  var startTime = Cronos.milliseconds;

  SimpleQuickSort.sort(list);
  var endTime = Cronos.milliseconds;

  print("Sorted list: $list");

  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}


