import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/utils/polyline_decoder.dart';

void main() {
  group('PolylineDecoder Tests', () {
    test('Decodes encoded polyline string into coordinates list', () {
      // Encoded representation of (38.5, -120.2), (40.7, -120.95), (43.252, -126.453)
      const encoded = '_p~iF~ps|U_ulLnnqC_mqNvxq`@';
      final points = PolylineDecoder.decode(encoded);

      expect(points.length, equals(3));
      expect(points[0].$1, closeTo(38.5, 0.001));
      expect(points[0].$2, closeTo(-120.2, 0.001));
    });
  });
}
