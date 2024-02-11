import 'dart:math';

import '../cronos.dart';
import 'simple_shell_sort.dart';

void main() {
  List<int> list = [];

  var totalItems = 50;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }
  print("Original list: $list");

  var startTime = Cronos.milliseconds;

  /// The method implements the Shell Sort algorithm for a list of integers.
  SimpleShellSort.sort(list, (int a, int b) => a.compareTo(b));

  var endTime = Cronos.milliseconds;
  print(list);
  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}
