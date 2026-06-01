import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/storage/incident_dao.dart';

void main() {
  group('IncidentDao Tests', () {
    test('Inserts and retrieves incident record by id', () async {
      final dao = IncidentDao();
      await dao.insertIncident({'id': 'INC-1', 'title': 'Medical SOS'});

      final item = await dao.getIncidentById('INC-1');
      expect(item, isNotNull);
      expect(item?['title'], equals('Medical SOS'));
    });

    test('Deletes incident record cleanly', () async {
      final dao = IncidentDao();
      await dao.insertIncident({'id': 'INC-2', 'title': 'Accident'});
      await dao.deleteIncident('INC-2');

      final item = await dao.getIncidentById('INC-2');
      expect(item, isNull);
    });
  });
}
