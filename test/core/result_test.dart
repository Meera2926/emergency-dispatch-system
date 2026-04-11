import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/core/types/result.dart';

void main() {
  group('Result Type Tests', () {
    test('Success returns expected value and fold executes onSuccess', () {
      const result = Success<int, String>(42);
      expect(result.isSuccess, isTrue);
      expect(result.isFailure, isFalse);
      expect(result.dataOrNull, equals(42));
      expect(result.errorOrNull, isNull);

      final folded = result.fold((val) => 'val: $val', (err) => 'err: $err');
      expect(folded, equals('val: 42'));
    });

    test('FailureResult returns expected error and fold executes onFailure', () {
      const result = FailureResult<int, String>('Server timeout');
      expect(result.isSuccess, isFalse);
      expect(result.isFailure, isTrue);
      expect(result.dataOrNull, isNull);
      expect(result.errorOrNull, equals('Server timeout'));

      final folded = result.fold((val) => 'val: $val', (err) => 'err: $err');
      expect(folded, equals('err: Server timeout'));
    });
  });
}
