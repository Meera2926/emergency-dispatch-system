import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/medical/burn_assessment.dart';

void main() {
  group('BurnAssessment Tests', () {
    test('Third degree burn flags immediate ambulance dispatch', () {
      expect(BurnDegree.thirdDegree.requiresAmbulance, isTrue);
      expect(BurnAssessment.getFirstAidTreatment(BurnDegree.thirdDegree), contains('Call emergency'));
    });
  });
}
