import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/performance/memory_cache_trimmer.dart';

void main() {
  group('MemoryCacheTrimmer Tests', () {
    test('Trims caches under critical pressure without exceptions', () {
      expect(() => MemoryCacheTrimmer.trimMemory(memoryPressureLevel: 2), returnsNormally);
    });
  });
}
