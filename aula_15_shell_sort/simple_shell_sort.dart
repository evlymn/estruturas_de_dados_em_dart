class SimpleShellSort {
  /// This method implements the Shell Sort algorithm for a list of integers.
  /// Shell Sort is an in-place comparison sort. It can be seen as either a generalization of sorting by exchange (bubble sort) or sorting by insertion (insertion sort).
  /// The method operates by starting at the first element in the array and comparing it to other elements in a defined gap (h). If the element in the gap is smaller, the elements are swapped.
  /// The gap is then reduced and the process is repeated until the gap is 1, at which point the method becomes an insertion sort.
  ///
  /// The time complexity for this method is O(n^(3/2)) and the space complexity is O(1).
  /// The algorithm is efficient for large lists
  /// [list] is the list of integers to be sorted.
  static void sortInt(List<int> list) {
    // Initialize the gap (h) to 1
    int h = 1;

    // Get the length of the list
    int n = list.length;

    // Increase the gap in a sequence of 3*h + 1 until it's less than the length of the list
    while (h < n) {
      h = h * 3 + 1;
    }

    // Reduce the gap by dividing it by 3
    h = h ~/ 3;
    int c, j;

    // Continue the process until the gap is greater than 0
    while (h > 0) {
      // Start from the gap and go through the list to the end
      for (int i = h; i < n; i++) {
        // Store the current element
        c = list[i];

        // Store the current index
        j = i;

        // While we're not at the start of the list and the previous element is greater than the current element
        while (j >= h && list[j - h] > c) {
          // Swap the elements
          list[j] = list[j - h];

          // Move to the previous element
          j = j - h;
        }

        // Insert the current element in its correct position
        list[j] = c;
      }

      // Reduce the gap by dividing it by 2
      h = h ~/ 2;
    }
  }

  /// This method implements the Shell Sort algorithm for a list of generic type T.
  /// Shell Sort is an in-place comparison sort. It can be seen as either a generalization of sorting by exchange (bubble sort) or sorting by insertion (insertion sort).
  /// The method operates by starting at the first element in the array and comparing it to other elements in a defined gap (h). If the element in the gap is smaller, the elements are swapped.
  /// The gap is then reduced and the process is repeated until the gap is 1, at which point the method becomes an insertion sort.
  ///
  /// The time complexity for this method is O(n^(3/2)) and the space complexity is O(1).
  /// The algorithm is efficient for large lists
  ///
  /// [list] is the list of elements to be sorted.
  /// [compare] is a function that takes two elements of type T and returns an integer. The function should return a negative integer, zero, or a positive integer as the first argument is less than, equal to, or greater than the second.
  static void sort<T>(List<T> list, int Function(T a, T b) compare) {
    // Initialize the gap (h) to 1
    int h = 1;

    // Get the length of the list
    int n = list.length;

    // Increase the gap in a sequence of 3*h + 1 until it's less than the length of the list
    while (h < n) {
      h = h * 3 + 1;
    }

    // Reduce the gap by dividing it by 3
    h = h ~/ 3;

    T c;
    int j;

    // Continue the process until the gap is greater than 0
    while (h > 0) {
      // Start from the gap and go through the list to the end
      for (int i = h; i < n; i++) {
        // Store the current element
        c = list[i];

        // Store the current index
        j = i;

        // While we're not at the start of the list and the previous element is greater than the current element
        while (j >= h && compare(list[j - h], c) > 0) {
          // Swap the elements
          list[j] = list[j - h];

          // Move to the previous element
          j = j - h;
        }

        // Insert the current element in its correct position
        list[j] = c;
      }

      // Reduce the gap by dividing it by 2
      h = h ~/ 2;
    }
  }
}
