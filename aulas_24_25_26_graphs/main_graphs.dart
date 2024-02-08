import 'graph.dart';

void main() {


  Graph<String> graph = Graph<String>();
  graph.addVertice("oiii");
  graph.addVertice("tchau");
  graph.addVertice("oi");
  graph.addVertice("tchawwu");

  graph.addEdge(1, "oiii", "tchau");
  graph.addEdge(2, "tchau", "oi");
  graph.addEdge(3, "oi", "tchawwu");

  graph.depthSearch("oi");

}
