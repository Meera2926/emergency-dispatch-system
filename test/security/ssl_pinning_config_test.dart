import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/security/ssl_pinning_config.dart';

void main() {
  group('SslPinningConfig Tests', () {
    test('Validates trusted SHA-256 certificate fingerprints', () {
      expect(
        SslPinningConfig.isShaPinned('2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824'),
        isTrue,
      );
      expect(SslPinningConfig.isShaPinned('untrusted_cert'), isFalse);
    });
  });
}
