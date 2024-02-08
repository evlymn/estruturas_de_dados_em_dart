import './element.dart';
import 'iterator_linked_list.dart';

class LinkedList<T> {

  late Element<T>? _first = null;
  late Element<T>? _last = null;
  late int _size;

  LinkedList() {
    _size = 0;
  }

  Element<T>? get first => _first;

  set first(Element<T>? value) {
    _first = value;
  }

  Element<T>? get last => _last;

  set last(Element<T>? value) {
    _last = value;
  }

  int get size => _size;

  set size(int value) {
    _size = value;
  }

  add(T value) {
    Element<T> newElement = Element(value);
    if (_first == null && _last == null) {
      _first = newElement;
      _last = newElement;
    } else {
      _last?.next = newElement;
      _last = newElement;
    }
    _size++;
  }

  remove(T value) {
    Element<T>? previous = null;
    Element<T> current = _first!;
    for (int i = 0; i < size; i++) {
      if (identical(current.value, value)) {
        if (_size == 1) {
          _first = null;
          _last = null;
        } else if (current == _first) {
          _first = current.next;
          current.next = null;
        } else if (current == _last) {
          _last = previous;
          previous?.next = null;
        } else {
          previous?.next = current.next;
        }
        _size--;
        break;
      }
      previous = current;
      current = current.next!;
    }
  }

  Element? get(int index) {
    if (index >= 0 && index < _size) {
      Element? element = _first;
      for (int i = 0; i < index; i++) {
        element = element?.next;
      }
      return element;
    }
    throw RangeError("Index out of range");
  }

  IteratorLinkedList<T> getIterator() {
    return IteratorLinkedList<T>(_first!);
  }
}
