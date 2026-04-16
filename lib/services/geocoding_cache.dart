class GeocodingCache {
  final Map<String, String> _cache = {};
  final int maxCapacity;

  GeocodingCache({this.maxCapacity = 100});

  String _generateKey(double lat, double lng) {
    return '${lat.toStringAsFixed(3)},${lng.toStringAsFixed(3)}';
  }

  void put(double lat, double lng, String address) {
    if (_cache.length >= maxCapacity) {
      _cache.remove(_cache.keys.first);
    }
    _cache[_generateKey(lat, lng)] = address;
  }

  String? get(double lat, double lng) {
    return _cache[_generateKey(lat, lng)];
  }

  bool contains(double lat, double lng) => get(lat, lng) != null;
  void clear() => _cache.clear();
}
