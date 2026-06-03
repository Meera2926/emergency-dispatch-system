import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/repositories/responder_repository_impl.dart';
import 'package:emergency_resource_dispatch_system/storage/responder_dao.dart';

void main() {
  group('ResponderRepositoryImpl Tests', () {
    test('Updates responder status in repository', () async {
      final dao = ResponderDao();
      final repo = ResponderRepositoryImpl(dao: dao);

      await dao.upsertResponder('R-1', {'name': 'Medic 1', 'isAvailable': true});
      final res = await repo.updateStatus('R-1', 'enRoute');

      expect(res.isSuccess, isTrue);
      final updated = await dao.findById('R-1');
      expect(updated?['status'], equals('enRoute'));
    });
  });
}
