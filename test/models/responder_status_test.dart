import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/models/responder_status.dart';

void main() {
  group('ResponderStatusState Tests', () {
    test('available status is not busy', () {
      expect(ResponderStatusState.available.isBusy, isFalse);
    });

    test('enRoute and onScene statuses are busy', () {
      expect(ResponderStatusState.enRoute.isBusy, isTrue);
      expect(ResponderStatusState.onScene.isBusy, isTrue);
    });
  });
}
