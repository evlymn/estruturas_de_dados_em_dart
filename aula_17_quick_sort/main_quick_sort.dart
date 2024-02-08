import 'dart:math';
import '../cronos.dart';

void main() {
  List<int> list = [];
  var totalItems = 30;
  for (int i = 0; i < totalItems; i++) {
    list.add(Random().nextInt(totalItems));
  }

  // print("Original list: $list");

  var startTime = Cronos.milliseconds;
  quickSort(list, 0, list.length - 1);
  var endTime = Cronos.milliseconds;

  print("Sorted list: $list");

  print(
      'Time to sort ${list.length} elements into a List<int>: ${endTime - startTime} ms');
}

// Quick sort algorithm implementation
// The algorithm selects a pivot element from the list
// It then partitions the list into two sublists according to the pivot
// The algorithm then recursively sorts the sublists
// The algorithm is efficient for large lists
// It has a time complexity of O(n log n)
void quickSort(List<int> list, int left, int right) {
  if (left < right) {
    int pivotIndex = partition(list, left, right);
    quickSort(list, left, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, right);
  }
}

// Partition the list
// The function takes a list, the left index, and the right index
// It selects the pivot element and partitions the list into two sublists
// The function returns the index of the pivot element
int partition(List<int> list, int left, int right) {
  int middle = (left + right) ~/ 2;
  int pivot = list[middle];
  int i = left - 1;
  int j = right + 1;

  while (true) {
    do {
      i++;
    } while (list[i] < pivot);
    do {
      j--;
    } while (list[j] > pivot);
    if (i >= j) {
      return j;
    }
    int temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }
}
