class PolygonGeofence {
  final String id;
  final String name;
  final List<(double, double)> vertices; // list of (lat, lng)

  const PolygonGeofence({
    required this.id,
    required this.name,
    required this.vertices,
  });

  /// Ray-casting algorithm to determine if coordinate is inside polygon.
  bool contains(double lat, double lng) {
    if (vertices.length < 3) return false;
    bool inside = false;
    int j = vertices.length - 1;

    for (int i = 0; i < vertices.length; i++) {
      final xi = vertices[i].$1, yi = vertices[i].$2;
      final xj = vertices[j].$1, yj = vertices[j].$2;

      final intersect = ((yi > lng) != (yj > lng)) &&
          (lat < (xj - xi) * (lng - yi) / (yj - yi) + xi);
      if (intersect) inside = !inside;
      j = i;
    }

    return inside;
  }
}
