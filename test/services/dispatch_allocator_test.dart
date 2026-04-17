import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/services/dispatch_allocator.dart';

void main() {
  group('DispatchAllocator Tests', () {
    test('Finds nearest available responder and ignores busy ones', () {
      const candidates = [
        CandidateResponder(id: 'r1', name: 'Very Close but Busy', lat: 12.972, lng: 77.595, isAvailable: false),
        CandidateResponder(id: 'r2', name: 'Far Responder', lat: 13.050, lng: 77.700, isAvailable: true),
        CandidateResponder(id: 'r3', name: 'Closest Available', lat: 12.980, lng: 77.600, isAvailable: true),
      ];

      final selected = DispatchAllocator.findNearestAvailable(
        victimLat: 12.970,
        victimLng: 77.590,
        pool: candidates,
      );

      expect(selected?.id, equals('r3'));
    });
  });
}
