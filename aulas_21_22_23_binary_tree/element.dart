class Element<T>  {
  late T _value;
  Element<T>? _left;
  Element<T>? _right;



  Element(T value) {
    _value = value;
  }

  T get value => _value;
  set value(T value) {
    _value = value;
  }

  Element<T>? get right => _right;
  set right(Element<T>? value) {
    _right = value;
  }

  Element<T>? get left => _left;
  set left(Element<T>? value) {
    _left = value;
  }



}
