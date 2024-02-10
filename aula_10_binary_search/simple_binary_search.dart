class SimpleBinarySearch<T extends Comparable> {
  // O(log n)
  // The algorithm compares the search value with the middle element of the list
  // If the search value is equal to the middle element, the search is finished
  // If the search value is less than the middle element, the search continues in the lower half of the list
  // If the search value is greater than the middle element, the search continues in the upper half of the list
  // The algorithm repeats this process until the search value is found or the list is empty
  // The algorithm is efficient for large lists
  static int binarySearchInt(List<int> list, int target) {
    int left = 0;
    int right = list.length - 1;
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (list[mid] == target) {
        return mid;
      } else if (list[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return -1;
  }

  // O(log n)
  // The algorithm compares the search value with the middle element of the list
  // If the search value is equal to the middle element, the search is finished
  // If the search value is less than the middle element, the search continues in the lower half of the list
  // If the search value is greater than the middle element, the search continues in the upper half of the list
  // The algorithm repeats this process until the search value is found or the list is empty
  // The algorithm is efficient for large lists
  static int binarySearch<T, S>(List<T> list, S target, int Function(T a, S b) compare) {
    int left = 0;
    int right = list.length - 1;
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (compare(list[mid], target) == 0) {
        return mid;
      } else if (compare(list[mid], target) < 0) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return -1;
  }
}
