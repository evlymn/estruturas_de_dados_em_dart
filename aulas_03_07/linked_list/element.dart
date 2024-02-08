class Element {
  String _value;
  Element? _next;


  Element(this._value) {}

  String get value => _value;

  set value(String value) {
    _value = value;
  }

  Element? get next => _next;

  set next(Element? value) {
    _next = value;
  }
}
