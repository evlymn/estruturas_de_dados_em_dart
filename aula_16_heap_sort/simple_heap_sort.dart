class SimpleHeapSort {
  /// This method implements the Heap Sort algorithm for a list of integers.
  /// Heap Sort is a comparison-based sorting algorithm. It divides its input into a sorted and an unsorted region, and it iteratively shrinks the unsorted region by extracting the largest element and moving that to the sorted region.
  /// The improvement consists of the use of a heap data structure rather than a linear-time search to find the maximum.
  ///
  /// The time complexity for this method is O(n log n) and the space complexity is O(1).
  ///
  /// [list] is the list of integers to be sorted.
  static void sortInt(List<int> list) {
    // Build max heap
    for (int i = list.length ~/ 2 - 1; i >= 0; i--) {
      // Apply heapify to build max heap
      applyHeap(list, list.length, i, (int a, int b) => a.compareTo(b));
    }

    // One by one extract an element from heap
    for (int i = list.length - 1; i > 0; i--) {
      // Move current root to end
      int temp = list[0];
      list[0] = list[i];
      list[i] = temp;

      // Call max heapify on the reduced heap
      applyHeap(list, i, 0, (int a, int b) => a.compareTo(b));
    }
  }

  /// This method implements the Heap Sort algorithm for a list of generic type T.
  /// Heap Sort is a comparison-based sorting algorithm. It divides its input into a sorted and an unsorted region, and it iteratively shrinks the unsorted region by extracting the largest element and moving that to the sorted region.
  /// The improvement consists of the use of a heap data structure rather than a linear-time search to find the maximum.
  ///
  /// The time complexity for this method is O(n log n) and the space complexity is O(1).
  ///
  /// [list] is the list of elements to be sorted.
  /// [compare] is a function that takes two elements of type T and returns an integer. The function should return a negative integer, zero, or a positive integer as the first argument is less than, equal to, or greater than the second.
  static void sort<T>(List<T> list, int Function(T, T) compare) {
    // Build max heap
    for (int i = list.length ~/ 2 - 1; i >= 0; i--) {
      // Apply heapify to build max heap
      applyHeap<T>(list, list.length, i, compare);
    }

    // One by one extract an element from heap
    for (int i = list.length - 1; i > 0; i--) {
      // Move current root to end
      T temp = list[0];
      list[0] = list[i];
      list[i] = temp;

      // Call max heapify on the reduced heap
      applyHeap<T>(list, i, 0, compare);
    }
  }

  /// This method applies the heapify process to a heap with root at given index.
  /// Heapify is a process where a heap tree is transformed into a heap structure.
  ///
  /// The time complexity for this method is O(log n) as it needs to traverse the height of the heap tree.
  ///
  /// [list] is the list of elements that represents the heap.
  /// [length] is the total length of the heap.
  /// [index] is the index of the root element that heapify is being applied to.
  /// [compare] is a function that takes two elements of type T and returns an integer. The function should return a negative integer, zero, or a positive integer as the first argument is less than, equal to, or greater than the second.
  static void applyHeap<T>(
      List<T> list, int length, int index, int Function(T, T) compare) {
    // Calculate the index of the left child of the root
    int left = 2 * index + 1;

    // Calculate the index of the right child of the root
    int right = 2 * index + 2;

    // Assume the root is the largest element
    int root = index;

    // If the left child is larger than root
    if (left < length && compare(list[left], list[root]) > 0) {
      // Update the root to be the left child
      root = left;
    }

    // If the right child is larger than the current largest (root)
    if (right < length && compare(list[right], list[root]) > 0) {
      // Update the root to be the right child
      root = right;
    }

    // If the largest is not root
    if (root != index) {
      // Swap the root with the largest
      T temp = list[index];
      list[index] = list[root];
      list[root] = temp;

      // Recursively apply heapify to the affected sub-tree
      applyHeap<T>(list, length, root, compare);
    }
  }
}
