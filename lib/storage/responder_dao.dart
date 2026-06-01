class ResponderDao {
  final Map<String, Map<String, dynamic>> _cache = {};

  Future<void> upsertResponder(String id, Map<String, dynamic> data) async {
    _cache[id] = data;
  }

  Future<Map<String, dynamic>?> findById(String id) async {
    return _cache[id];
  }

  Future<List<Map<String, dynamic>>> getAvailableResponders() async {
    return _cache.values.where((r) => r['isAvailable'] == true).toList();
  }
}
