class ApiEndpoints {
  ApiEndpoints._();

  static const String devBaseUrl = 'http://10.0.2.2:8000/api/v1';
  static const String prodBaseUrl = 'https://dispatch.emergency-system.io/api/v1';

  static const String triggerEmergency = '/emergency/trigger';
  static const String cancelEmergency = '/emergency/cancel';
  static const String incidentStatus = '/emergency/status';
  static const String nearbyResponders = '/responders/nearby';
  static const String updateLocation = '/responders/location';
  
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 15);
}
