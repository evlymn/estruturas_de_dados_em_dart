import 'dart:math';

import '../cronos.dart';

void main() {
  List<int> list = [];

  var totalItems = 40;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }

  print("Original list: $list");

  var startTime = Cronos.milliseconds;

  // Selection sort algorithm implementation
  // The algorithm divides the list into two parts: the sorted part and the unsorted part
  // The algorithm selects the smallest element from the unsorted part and swaps it with the first element of the unsorted part
  // It repeats this process until the list is sorted
  // The algorithm is not efficient for large lists
  // It has a time complexity of O(n^2)
  for (int i = 0; i < list.length; i++) {
    int minIndex = i;
    for (int j = i + 1; j < list.length; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    int temp = list[minIndex];
    list[minIndex] = list[i];
    list[i] = temp;
  }

  var endTime = Cronos.milliseconds;
  print("Sorted list: $list");
  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}
