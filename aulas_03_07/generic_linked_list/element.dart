class Element<T> {



  T _value;
  Element<T>? _next;


  Element(this._value) {}

  T get value => _value;

  set value(T value) {
    _value = value;
  }

  Element<T>? get next => _next;

  set next(Element<T>? value) {
    _next = value;
  }
}
