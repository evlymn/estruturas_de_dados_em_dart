class SimpleSelectionSort {
  /// Sorts a list of integers using the selection sort algorithm.
  ///
  /// The selection sort algorithm divides the list into two parts: the sorted part and the unsorted part.
  /// It selects the smallest element from the unsorted part and swaps it with the first element of the unsorted part.
  /// This process is repeated until the list is sorted.
  ///
  /// The algorithm is not efficient for large lists and has a time complexity of O(n^2).
  ///
  /// - Parameter list: The list of integers to be sorted.
  static void sortInt(List<int> list) {
    // Iterate over each element in the list
    for (int i = 0; i < list.length; i++) {
      // Assume the first element of the unsorted part is the smallest
      int minIndex = i;

      // Iterate over the unsorted part of the list
      for (int j = i + 1; j < list.length; j++) {
        // If a smaller element is found, update minIndex
        if (list[j] < list[minIndex]) {
          minIndex = j;
        }
      }

      // Swap the smallest element found in the unsorted part with the first element of the unsorted part
      int temp = list[minIndex];
      list[minIndex] = list[i];
      list[i] = temp;
    }
  }

  /// Sorts a list of elements of type `T` using the selection sort algorithm.
  ///
  /// The selection sort algorithm divides the list into two parts: the sorted part and the unsorted part.
  /// It selects the smallest element from the unsorted part and swaps it with the first element of the unsorted part.
  /// This process is repeated until the list is sorted.
  ///
  /// The algorithm is not efficient for large lists and has a time complexity of O(n^2).
  ///
  /// The `compare` function is used to determine the relative order of elements in the list.
  /// It should return a negative integer, zero, or a positive integer as the first argument is less than, equal to, or greater than the second.
  ///
  /// - Parameter list: The list of elements to be sorted.
  /// - Parameter compare: A function that accepts two arguments of type `T` and returns an integer.
  static void sort<T>(List<T> list, int Function(T a, T b) compare) {
    // Iterate over each element in the list
    for (int i = 0; i < list.length; i++) {
      // Assume the first element of the unsorted part is the smallest
      int minIndex = i;

      // Iterate over the unsorted part of the list
      for (int j = i + 1; j < list.length; j++) {
        // If a smaller element is found, update minIndex
        if (compare(list[j], list[minIndex]) < 0) {
          minIndex = j;
        }
      }

      // Swap the smallest element found in the unsorted part with the first element of the unsorted part
      T temp = list[minIndex];
      list[minIndex] = list[i];
      list[i] = temp;
    }
  }
}
