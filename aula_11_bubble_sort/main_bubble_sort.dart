import 'dart:math';

import '../cronos.dart';

void main() {
  List<int> list = [];
  var totalItems = 100;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }

  print("Original list: $list");

  var startTime = Cronos.milliseconds;

  // Bubble sort algorithm implementation
  // The algorithm compares each element with the next one and swaps them if they are in the wrong order
  // It repeats this process until the list is sorted
  // The algorithm is called bubble sort because the largest elements "bubble" to the top of the list
  // The algorithm is not efficient for large lists
  // It has a time complexity of O(n^2)
  for (int i = 0; i < list.length; i++) {
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] > list[j]) {
        int temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }
  }
  var endTime = Cronos.milliseconds;

  print("Sorted list: $list");

  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}
