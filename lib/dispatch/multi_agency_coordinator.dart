import 'package:emergency_resource_dispatch_system/models/emergency_type.dart';

class MultiAgencyCoordinator {
  static List<String> determineRequiredAgencies(EmergencyType type) {
    switch (type) {
      case EmergencyType.accident:
        return ['AMBULANCE', 'TRAFFIC_POLICE'];
      case EmergencyType.fire:
        return ['FIRE_SERVICE', 'AMBULANCE', 'POLICE'];
      case EmergencyType.naturalDisaster:
        return ['DISASTER_RESPONSE_FORCE', 'FIRE_SERVICE', 'AMBULANCE', 'POLICE'];
      case EmergencyType.medical:
        return ['AMBULANCE'];
      case EmergencyType.police:
        return ['POLICE'];
    }
  }
}
