import 'element.dart';

class LinkedList {
  late Element? _first = null;
  late Element? _last = null;
  late int _size;

  LinkedList() {
    _size = 0;
  }

  Element? get first => _first;

  set first(Element? value) {
    _first = value;
  }

  Element? get last => _last;

  set last(Element? value) {
    _last = value;
  }

  int get size => _size;

  set size(int value) {
    _size = value;
  }

  addAtStart(String value) {
    Element newElement = Element(value);
    if (_first == null && _last == null) {
      _first = newElement;
      _last = newElement;
    } else {
      newElement.next = _first;
      _first = newElement;
    }
    _size++;
  }

  add(String value) {
    Element newElement = Element(value);
    if (_first == null && _last == null) {
      _first = newElement;
      _last = newElement;
    } else {
      _last?.next = newElement;
      _last = newElement;
    }
    _size++;
  }

  remove(String value) {
    Element? previous = null;
    Element current = _first!;
    for (int i = 0; i < size; i++) {
      if (current.value.toLowerCase().contains(value.toLowerCase())) {
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

  Element get(int index) {
    if (index >= 0 && index < _size) {
      Element? element = _first;
      for (int i = 0; i < index; i++) {
        element = element?.next;
      }
      return element!;
    }
    throw RangeError("Index out of range");
  }
}
