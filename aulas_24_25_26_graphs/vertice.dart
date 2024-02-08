import 'edge.dart';

class Vertice<T> {
  late T _data;

  List<Edge<T>> _incomingEdges = [];
  List<Edge<T>> _outgoingEdges = [];

  Vertice(T value) {
    _data = value;
  }

  T get data => _data;

  set data(T value) {
    _data = value;
  }

  addIncomingEdge(Edge<T> edge) {
    _incomingEdges.add(edge);
  }

  addOutgoingEdge(Edge<T> edge) {
    _outgoingEdges.add(edge);
  }

  List<Edge<T>> get incomingEdges => _incomingEdges;

  List<Edge<T>> get outgoingEdges => _outgoingEdges;
}
