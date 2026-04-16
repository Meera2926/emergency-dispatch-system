import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/services/geocoding_cache.dart';

void main() {
  group('GeocodingCache Tests', () {
    test('Stores and retrieves reverse geocoded address', () {
      final cache = GeocodingCache();
      cache.put(12.97159, 77.59456, 'MG Road, Bangalore');

      expect(cache.contains(12.97160, 77.59460), isTrue);
      expect(cache.get(12.97160, 77.59460), equals('MG Road, Bangalore'));
    });

    test('Evicts oldest item when maxCapacity is exceeded', () {
      final cache = GeocodingCache(maxCapacity: 2);
      cache.put(1.0, 1.0, 'Loc 1');
      cache.put(2.0, 2.0, 'Loc 2');
      cache.put(3.0, 3.0, 'Loc 3');

      expect(cache.contains(1.0, 1.0), isFalse);
      expect(cache.contains(3.0, 3.0), isTrue);
    });
  });
}
