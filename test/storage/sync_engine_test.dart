import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/storage/sync_engine.dart';

void main() {
  group('SyncEngine Tests', () {
    test('Tracks pending records and resolves to success', () {
      final engine = SyncEngine();
      engine.markPending('REC-1');
      engine.markPending('REC-2');

      expect(engine.getPendingRecordIds().length, equals(2));

      engine.markSuccess('REC-1');
      final remaining = engine.getPendingRecordIds();
      expect(remaining.length, equals(1));
      expect(remaining.first, equals('REC-2'));
    });
  });
}
