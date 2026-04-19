import 'package:emergency_resource_dispatch_system/models/emergency_severity.dart';
import 'package:emergency_resource_dispatch_system/models/emergency_type.dart';

class MockEmergencyDataService {
  static List<Map<String, dynamic>> generateMockActiveIncidents() {
    return [
      {
        'id': 'EM-901',
        'type': EmergencyType.medical.name,
        'severity': EmergencySeverity.critical.name,
        'latitude': 12.9716,
        'longitude': 77.5946,
        'address': 'MG Road Metro Station, Bangalore',
        'victimName': 'Aarav Sharma',
        'status': 'dispatched',
      },
      {
        'id': 'EM-902',
        'type': EmergencyType.accident.name,
        'severity': EmergencySeverity.high.name,
        'latitude': 12.9352,
        'longitude': 77.6245,
        'address': 'Sony World Junction, Koramangala',
        'victimName': 'Priya Nair',
        'status': 'enRoute',
      },
    ];
  }
}
