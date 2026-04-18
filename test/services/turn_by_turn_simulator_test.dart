import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/services/turn_by_turn_simulator.dart';

void main() {
  group('TurnByTurnSimulator Tests', () {
    test('Steps through navigation waypoints sequentially', () {
      final sim = TurnByTurnSimulator(
        route: [(12.97, 77.59), (12.98, 77.60), (12.99, 77.61)],
      );

      expect(sim.hasNext, isTrue);
      expect(sim.next(), equals((12.97, 77.59)));
      expect(sim.currentStep, equals(1));
      expect(sim.next(), equals((12.98, 77.60)));
      expect(sim.next(), equals((12.99, 77.61)));
      expect(sim.hasNext, isFalse);
      expect(sim.next(), isNull);
    });
  });
}
