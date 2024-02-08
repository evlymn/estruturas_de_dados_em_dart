import 'dart:math';

import '../cronos.dart';

void main() {
  List<int> list = [];

  var totalItems = 50;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }
  print("Original list: $list");

  var startTime = Cronos.milliseconds;

  // Shell sort algorithm implementation
  // The algorithm sorts the list by comparing elements that are a certain distance apart
  // The distance between elements is reduced after each pass
  // The algorithm is efficient for large lists
  // It has a time complexity of O(n^2)
  int h = 1;
  int n = list.length;
  while (h < n) {
    h = h * 3 + 1;
  }
  h = h ~/ 3;

  int c, j;
  while (h > 0) {
    for (int i = h; i < n; i++) {
      c = list[i];
      j = i;
      while (j >= h && list[j - h] > c) {
        list[j] = list[j - h];
        j = j - h;
      }
      list[j] = c;
    }
    h = h ~/ 2;
  }

  var endTime = Cronos.milliseconds;
  print(list);
  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}
