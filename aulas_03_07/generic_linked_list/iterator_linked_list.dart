import './element.dart';

class IteratorLinkedList<T> {
  late Element<T> _element;

  IteratorLinkedList(this._element);

  bool get hasNext {
    return _element.next != null;
  }

  Element<T>? get next {
    _element = _element.next!;
    return _element;
  }
}
