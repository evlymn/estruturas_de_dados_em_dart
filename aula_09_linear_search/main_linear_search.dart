import 'dart:math';
import 'dart:io';
import '../cronos.dart';

void main() {
  List<int> list = [];

  var starTime = Cronos.milliseconds;
  for (int i = 0; i < 10; i++) {
    int a = Random().nextInt(10);
    list.add(a);
  }

  var endTime = Cronos.milliseconds;
  print(
      'Time to add ${list.length} elements into a List<int>: ${endTime - starTime} ms');

  print('list: $list');

  print('Enter a number to search in list');
  String? search = stdin.readLineSync();
  print('searching for $search in list');
  bool found = false;

  // Linear search algorithm implementation
  // The algorithm compares each element of the list with the search value
  // If the search value is found, the search is finished
  // If the search value is not found, the search continues until the end of the list
  // The algorithm is not efficient for large lists
  // It has a time complexity of O(n)
  for (int i = 0; i < list.length; i++) {
    if (list[i] == int.parse(search!)) {
      found = true;
      print("$search found at position $i");
    }
  }

  if (!found) {
    print("$search not found in list");
  }
}
