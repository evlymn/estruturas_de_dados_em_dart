import 'dart:io';
import '../cronos.dart';

void main() {
  List<int> list = [];

  var startTime = Cronos.milliseconds;
  for (int i = 0; i < 2000000000; i++) {
    list.add(i);
  }
  var endTime = Cronos.milliseconds;
  var totalTime = endTime - startTime;
  var seconds = Cronos.seconds(totalTime);
  print(
      'Time to add ${list.length} elements into a List<int>: ${totalTime} ms / $seconds seconds');

  print('Enter a number to search in list');
  int? search = int.tryParse(stdin.readLineSync() ?? '');
  print('searching for $search in list');
  startTime = Cronos.milliseconds;


  bool found = false;
  int start = 0;
  int end = list.length - 1;
  int count = 0;

  // Binary search algorithm implementation
  // The algorithm compares the search value with the middle element of the list
  // If the search value is equal to the middle element, the search is finished
  // If the search value is less than the middle element, the search continues in the lower half of the list
  // If the search value is greater than the middle element, the search continues in the upper half of the list
  // The algorithm repeats this process until the search value is found or the list is empty
  // The algorithm is efficient for large lists
  // It has a time complexity of O(log n)
  while (start <= end) {
    count++;
    int middle = (start + end) ~/ 2;
    if (list[middle] == search) {
      found = true;
      break;
    } else if (list[middle] < search!) {
      start = middle + 1;
    } else {
      end = middle - 1;
    }
  }



  endTime = Cronos.milliseconds;
  print(
      'Time to search ${list.length} elements into a List<int>: ${endTime - startTime} ms / ${Cronos.seconds(endTime - startTime)} seconds}');


  if (!found) {
    print("$search not found in list");
    print('$count iterations');
  } else {
    print("$search found in list /n",);
    print(count == 1
        ? 'The number was found in the first iteration'
        : 'The number was found in $count iterations');
  }
}
