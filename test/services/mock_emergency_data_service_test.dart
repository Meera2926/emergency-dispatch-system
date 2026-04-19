import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/services/mock_emergency_data_service.dart';

void main() {
  group('MockEmergencyDataService Tests', () {
    test('Generates non-empty mock emergency incident list', () {
      final list = MockEmergencyDataService.generateMockActiveIncidents();
      expect(list.isNotEmpty, isTrue);
      expect(list.first['id'], equals('EM-901'));
      expect(list.first['status'], equals('dispatched'));
    });
  });
}
