import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/storage/secure_storage_helper.dart';

void main() {
  group('SecureStorageHelper Tests', () {
    test('Writes, reads, and deletes encrypted keys securely', () async {
      final helper = SecureStorageHelper();
      await helper.writeSecure('AUTH_TOKEN', 'token-abc-123');

      final val = await helper.readSecure('AUTH_TOKEN');
      expect(val, equals('token-abc-123'));

      await helper.deleteSecure('AUTH_TOKEN');
      expect(await helper.readSecure('AUTH_TOKEN'), isNull);
    });
  });
}
