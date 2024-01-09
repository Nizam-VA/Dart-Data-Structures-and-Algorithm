class Vertex {
  var value;
  List<Vertex> adjacencyList = [];
  Vertex(this.value);
}

class Graph {
  Map<String, Vertex> vertices = {};

  addVertex(var value) {
    final newVertex = Vertex(value);
    vertices[value] = newVertex;
  }
}
