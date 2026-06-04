import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/storage/sync_metadata.dart';

void main() {
  group('SyncMetadata Tests', () {
    test('copyWith updates sync status and retry attempts accurately', () {
      final meta = SyncMetadata(
        recordId: 'REC-10',
        isSynced: false,
        lastAttempt: DateTime.now(),
      );

      final updated = meta.copyWith(isSynced: true, retryAttempts: 2);
      expect(updated.isSynced, isTrue);
      expect(updated.retryAttempts, equals(2));
    });
  });
}
