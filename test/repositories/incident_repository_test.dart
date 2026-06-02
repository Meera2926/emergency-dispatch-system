import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/repositories/incident_repository_impl.dart';
import 'package:emergency_resource_dispatch_system/storage/incident_dao.dart';

void main() {
  group('IncidentRepositoryImpl Tests', () {
    test('Successfully creates and fetches incident entity', () async {
      final dao = IncidentDao();
      final repo = IncidentRepositoryImpl(dao: dao);

      final createResult = await repo.createIncident({'id': 'E-99', 'type': 'Medical'});
      expect(createResult.isSuccess, isTrue);

      final fetchResult = await repo.fetchIncident('E-99');
      expect(fetchResult.isSuccess, isTrue);
      expect(fetchResult.dataOrNull?['type'], equals('Medical'));
    });
  });
}
