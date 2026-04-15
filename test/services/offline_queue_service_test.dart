import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/services/offline_queue_service.dart';

void main() {
  group('OfflineQueueService Tests', () {
    test('Enqueue and dequeue maintains FIFO ordering', () {
      final queue = OfflineQueueService();
      queue.enqueue({'id': 1, 'type': 'SOS'});
      queue.enqueue({'id': 2, 'type': 'LOCATION_UPDATE'});

      expect(queue.pendingCount, equals(2));
      expect(queue.dequeue()?['id'], equals(1));
      expect(queue.dequeue()?['id'], equals(2));
      expect(queue.hasPending, isFalse);
    });
  });
}
