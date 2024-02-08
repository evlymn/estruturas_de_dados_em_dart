import 'dart:math';
import '../cronos.dart';

void main() {
  List<int> list = [];

  var totalItems = 1000;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }

  print("Original list: $list");

  var startTime = Cronos.milliseconds;

  // Insertion sort algorithm implementation
  // The algorithm builds the final sorted list one item at a time
  // It takes each element from the list and inserts it into its correct position in the sorted list
  // The algorithm is efficient for small lists
  // It has a time complexity of O(n^2)
  for (int i = 0; i < list.length; i++) {
    int temp = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > temp) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = temp;
  }

  var endTime = Cronos.milliseconds;
  print("Sorted list: $list");
  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}
