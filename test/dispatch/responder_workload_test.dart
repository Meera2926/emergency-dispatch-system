import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/dispatch/responder_workload_balancer.dart';

void main() {
  group('ResponderWorkload Tests', () {
    test('Flags fatigue when hours or mission count threshold is reached', () {
      final workload = ResponderWorkload(
        responderId: 'R-99',
        completedMissionsToday: 11,
        hoursActiveToday: 8,
      );

      expect(workload.isFatigued, isTrue);
    });
  });
}
