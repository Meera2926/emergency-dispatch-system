import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/storage/responder_dao.dart';

void main() {
  group('ResponderDao Tests', () {
    test('Filters available responders correctly', () async {
      final dao = ResponderDao();
      await dao.upsertResponder('R1', {'name': 'Ambulance 1', 'isAvailable': true});
      await dao.upsertResponder('R2', {'name': 'Ambulance 2', 'isAvailable': false});

      final available = await dao.getAvailableResponders();
      expect(available.length, equals(1));
      expect(available.first['name'], equals('Ambulance 1'));
    });
  });
}
