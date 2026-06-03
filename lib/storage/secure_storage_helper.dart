class SecureStorageHelper {
  final Map<String, String> _secureStore = {};

  Future<void> writeSecure(String key, String value) async {
    _secureStore[key] = value;
  }

  Future<String?> readSecure(String key) async {
    return _secureStore[key];
  }

  Future<void> deleteSecure(String key) async {
    _secureStore.remove(key);
  }
}
