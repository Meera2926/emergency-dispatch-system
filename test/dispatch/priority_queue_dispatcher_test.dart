import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/dispatch/priority_queue_dispatcher.dart';

void main() {
  group('PriorityQueueDispatcher Tests', () {
    test('Pops highest priority incident first', () {
      final dispatcher = PriorityQueueDispatcher();
      dispatcher.addIncident(PrioritizedEmergency(id: 'E-LOW', priorityScore: 2, createdAt: DateTime.now()));
      dispatcher.addIncident(PrioritizedEmergency(id: 'E-CRITICAL', priorityScore: 9, createdAt: DateTime.now()));

      final next = dispatcher.popNext();
      expect(next?.id, equals('E-CRITICAL'));
    });
  });
}
