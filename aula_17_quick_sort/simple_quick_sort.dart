class SimpleQuickSort {
  // Sort the list using the quick sort algorithm
  static void sort(List<int> list) {
    _quickSort(list, 0, list.length - 1);
  }

// Quick sort algorithm implementation
// The algorithm selects a pivot element from the list
// It then partitions the list into two sublists according to the pivot
// The algorithm then recursively sorts the sublists
// The algorithm is efficient for large lists
// It has a time complexity of O(n log n)
  static void _quickSort(List<int> list, int left, int right) {
    if (left < right) {
      int pivotIndex = _partition(list, left, right);
      _quickSort(list, left, pivotIndex);
      _quickSort(list, pivotIndex + 1, right);
    }
  }

// Partition the list
// The function takes a list, the left index, and the right index
// It selects the pivot element and partitions the list into two sublists
// The function returns the index of the pivot element
  static int _partition(List<int> list, int left, int right) {
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
}
