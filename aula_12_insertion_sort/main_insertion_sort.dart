import 'dart:math';
import '../cronos.dart';
import 'simple_insertion_sort.dart';

void main() {
  List<int> list = [];

  var totalItems = 10;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }

  print("Original list: $list");

  var startTime = Cronos.milliseconds;

  SimpleInsertionSort.sort(list, (a, b) => a.compareTo(b));

  var endTime = Cronos.milliseconds;
  print("Sorted list: $list");
  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}

