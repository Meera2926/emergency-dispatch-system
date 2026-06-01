class IncidentDao {
  final List<Map<String, dynamic>> _inMemoryStore = [];

  Future<void> insertIncident(Map<String, dynamic> incident) async {
    _inMemoryStore.removeWhere((i) => i['id'] == incident['id']);
    _inMemoryStore.add(incident);
  }

  Future<Map<String, dynamic>?> getIncidentById(String id) async {
    return _inMemoryStore.cast<Map<String, dynamic>?>().firstWhere(
      (i) => i?['id'] == id,
      orElse: () => null,
    );
  }

  Future<List<Map<String, dynamic>>> getAllIncidents() async {
    return List.unmodifiable(_inMemoryStore);
  }

  Future<void> deleteIncident(String id) async {
    _inMemoryStore.removeWhere((i) => i['id'] == id);
  }
}
