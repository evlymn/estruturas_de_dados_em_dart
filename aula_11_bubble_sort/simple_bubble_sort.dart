class SimpleBubbleSort {
  /// A simple implementation of the bubble sort algorithm.
  ///
  /// This function sorts a list of integers in ascending order using the bubble sort algorithm.
  /// Bubble sort is a simple sorting algorithm that repeatedly steps through the list,
  /// compares adjacent elements and swaps them if they are in the wrong order.
  /// The pass through the list is repeated until the list is sorted.
  ///
  /// The time complexity for Bubble Sort is O(n^2) as there are two nested loops.
  ///
  /// [list] is the list of integers to be sorted.
  static void sortInt(List<int> list) {
    // Outer loop for overall passes
    for (int i = 0; i < list.length; i++) {
      // Inner loop for each individual pass
      for (int j = i + 1; j < list.length; j++) {
        // If the current element is greater than the next element, they are swapped
        if (list[i] > list[j]) {
          // Temporary variable to hold the current element
          int temp = list[i];

          // Swap the current element with the next element
          list[i] = list[j];

          // Assign the temporary variable to the next element
          list[j] = temp;
        }
      }
    }
  }

  /// A generic implementation of the bubble sort algorithm.
  ///
  /// This function sorts a list of elements in ascending order using the bubble sort algorithm.
  /// Bubble sort is a simple sorting algorithm that repeatedly steps through the list,
  /// compares adjacent elements using the provided comparison function and swaps them if they are in the wrong order.
  /// The pass through the list is repeated until the list is sorted.
  ///
  /// The time complexity for Bubble Sort is O(n^2) as there are two nested loops.
  ///
  /// [list] is the list of elements to be sorted.
  /// [compare] is a comparison function that takes two elements of type [T] and returns an integer.
  /// The comparison function should return a negative integer, zero, or a positive integer as the first argument is less than, equal to, or greater than the second.
  static void sort<T>(List<T> list, int Function(T a, T b) compare) {
    // Outer loop for overall passes
    for (int i = 0; i < list.length; i++) {
      // Inner loop for each individual pass
      for (int j = i + 1; j < list.length; j++) {
        // If the current element is greater than the next element according to the comparison function, they are swapped
        if (compare(list[i], list[j]) > 0) {
          // Temporary variable to hold the current element
          T temp = list[i];

          // Swap the current element with the next element
          list[i] = list[j];

          // Assign the temporary variable to the next element
          list[j] = temp;
        }
      }
    }
  }
}
