import 'edge.dart';
import 'vertice.dart';


class Graph<T> {

  List<Vertice<T>> _vertices = [];

  List<Edge<T>> _edges = [];


  // List<Vertice<T>> get vertices => _vertices;
  wideSearch(T start) {
    Vertice<T>? startVertice = getVertice(start);
    if (startVertice != null) {
      List<Vertice<T>> visited = [];
      List<Vertice<T>> toVisit = [startVertice];
      while (toVisit.isNotEmpty) {
        Vertice<T> current = toVisit.removeAt(0);
        if (!visited.contains(current)) {
          print(current.data);
          visited.add(current);
          for (var edge in current.outgoingEdges) {
            toVisit.add(edge.end);
          }
        }
      }
    }
  }

  // List<Edge<T>> get edges => _edges;
  depthSearch(T start) {
    Vertice<T>? startVertice = getVertice(start);
    if (startVertice != null) {
      List<Vertice<T>> visited = [];
      List<Vertice<T>> toVisit = [startVertice];
      while (toVisit.isNotEmpty) {
        Vertice<T> current = toVisit.removeLast();
        if (!visited.contains(current)) {
          print(current.data);
          visited.add(current);
          for (var edge in current.outgoingEdges) {
            toVisit.add(edge.end);
          }
        }
      }
    }
  }


  // addVertice(Vertice<T> vertice) { _vertices.add(vertice); }
  addVertice(T value) {
    Vertice<T> vertice = Vertice<T>(value);
    _vertices.add(vertice);
  }

  // addEdge(Edge<T> edge) { _edges.add(edge); }
  addEdge( double weight, T start, T end) {
    Vertice<T>? startVertice = getVertice(start);
    Vertice<T>? endVertice = getVertice(end);

    if (startVertice != null && endVertice != null) {
      Edge<T> edge = Edge<T>(weight, startVertice, endVertice);
      startVertice.addOutgoingEdge(edge);
      endVertice.addIncomingEdge(edge);
      _edges.add(edge);
    }
  }


  Vertice<T>? getVertice(T value) {
    for (var vertice in _vertices) {
      if (vertice.data == value) {
        return vertice;
      }
    }
    return null;

  }

}
