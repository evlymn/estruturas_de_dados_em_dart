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
  print(add(0, 0, list));
  var endTime = Cronos.milliseconds;
  print(
      'Time to add ${list.length} elements from a List<int>: ${endTime - startTime} ms');
}

int add(int sum, int index, List<int> list) {
  // Base case
  // If the index is greater than the length of the list, return the sum
  // Recursive case
  // If the index is less than the length of the list, add the element at the index to the sum and call the function again with the sum, the index plus one, and the list
  // The function will continue to call itself until the base case is met
  // The function will then return the sum
  // The time complexity of the function is O(n)
  if (index < list.length) {
    sum = sum + list[index];
    return add(sum, index + 1, list);
  } else {
    return sum;
  }
}
