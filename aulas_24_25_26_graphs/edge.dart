import 'vertice.dart';

class Edge<T> {
  late Vertice<T> _start;
  late Vertice<T> _end;
  late double _weight;

  Edge(double weight, Vertice<T> start, Vertice<T> end) {
    _start = start;
    _end = end;
    _weight = weight;
  }

  Vertice<T> get start => _start;

  set start(Vertice<T> value) {
    _start = value;
  }

  Vertice<T> get end => _end;

  set end(Vertice<T> value) {
    _end = value;
  }

  double get weight => _weight;

  set weight(double value) {
    _weight = value;
  }

  @override
  String toString() {
    return 'Edge{from: $_start, to: $_end, weight: $_weight}';
  }
}

// Edge(this.start, this.end, this.weight);
