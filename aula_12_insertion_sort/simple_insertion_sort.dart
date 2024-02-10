class SimpleInsertionSort {

  /// Sorts a list of integers using the insertion sort algorithm.
  ///
  /// The insertion sort algorithm builds the final sorted list one item at a time.
  /// It is particularly efficient for small lists and has a time complexity of O(n^2)
  ///
  /// The algorithm iterates over each element in the list, storing the current element as a temporary variable.
  /// It then initializes a second iterator, which moves backwards through the list.
  /// If the current element of the second iterator is greater than the temporary variable, it moves that element one position ahead.
  /// Finally, it inserts the temporary variable in its correct location.
  ///
  /// - Parameter list: The list of integers to be sorted.
  static void sortListOfInt(List<int> list) {
    /// Iterates over each element in the list.
    ///
    /// For each element, it stores the current element as a temporary variable and initializes a second iterator.
    /// The second iterator moves backwards through the list.
    /// If the current element of the second iterator is greater than the temporary variable, it moves that element one position ahead.
    /// Finally, it inserts the temporary variable in its correct location.
    ///
    /// This is a part of the insertion sort algorithm which is particularly efficient for small lists and has a time complexity of O(n^2).
    for (int i = 0; i < list.length; i++) {
      // Store the current element as a temporary variable
      int temp = list[i];

      // Initialize the second iterator
      int j = i - 1;

      // Move elements of list[0..i-1], that are greater than temp, to one position ahead of their current position
      while (j >= 0 && list[j] > temp) {
        list[j + 1] = list[j];

        j--;
      }

      // Insert the temporary variable in its correct location
      list[j + 1] = temp;
    }
  }

  /// Sorts a list of elements of type `T` using the insertion sort algorithm.
  ///
  /// The insertion sort algorithm builds the final sorted list one item at a time.
  /// It takes each element from the list and inserts it into its correct position in the sorted list.
  /// The algorithm is efficient for small lists and has a time complexity of O(n^2).
  ///
  /// The `compare` function is used to determine the relative order of elements in the list.
  /// It should return a negative integer, zero, or a positive integer as the first argument is less than, equal to, or greater than the second.
  ///
  /// - Parameter list: The list of elements to be sorted.
  /// - Parameter compare: A function that accepts two arguments of type `T` and returns an integer.
  static void sort<T>(List<T> list, int Function(T a, T b) compare) {
    // Iterate over each element in the list
    for (int i = 0; i < list.length; i++) {
      // Store the current element as a temporary variable
      T temp = list[i];
      // Initialize the second iterator
      int j = i - 1;
      // Move elements of list[0..i-1], that are greater than temp, to one position ahead of their current position
      while (j >= 0 && compare(list[j], temp) > 0) {
        list[j + 1] = list[j];
        j--;
      }
      // Insert the temporary variable in its correct location
      list[j + 1] = temp;
    }
  }
}
