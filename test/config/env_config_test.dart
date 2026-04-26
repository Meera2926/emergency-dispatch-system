import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/config/env_config.dart';

void main() {
  group('EnvConfig Tests', () {
    test('Dev environment enables mock responders', () {
      expect(EnvConfig.dev.enableMockResponders, isTrue);
      expect(EnvConfig.dev.environment, equals(Environment.dev));
    });

    test('Prod environment disables mocks and points to production domain', () {
      expect(EnvConfig.prod.enableMockResponders, isFalse);
      expect(EnvConfig.prod.apiBaseUrl, contains('https://api.safecall-dispatch.com'));
    });
  });
}
