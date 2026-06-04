import 'sync_metadata.dart';

class SyncEngine {
  final Map<String, SyncMetadata> _syncRegistry = {};

  void markPending(String recordId) {
    _syncRegistry[recordId] = SyncMetadata(
      recordId: recordId,
      isSynced: false,
      lastAttempt: DateTime.now(),
    );
  }

  void markSuccess(String recordId) {
    if (_syncRegistry.containsKey(recordId)) {
      _syncRegistry[recordId] = _syncRegistry[recordId]!.copyWith(isSynced: true);
    }
  }

  List<String> getPendingRecordIds() {
    return _syncRegistry.values
        .where((m) => !m.isSynced)
        .map((m) => m.recordId)
        .toList();
  }
}
