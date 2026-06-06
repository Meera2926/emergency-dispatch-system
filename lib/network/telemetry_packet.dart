class TelemetryPacket {
  final String responderId;
  final double latitude;
  final double longitude;
  final double speedKmh;
  final double bearingDegrees;
  final int batteryLevel;

  const TelemetryPacket({
    required this.responderId,
    required this.latitude,
    required this.longitude,
    required this.speedKmh,
    required this.bearingDegrees,
    required this.batteryLevel,
  });

  Map<String, dynamic> toJson() => {
    'responderId': responderId,
    'latitude': latitude,
    'longitude': longitude,
    'speedKmh': speedKmh,
    'bearingDegrees': bearingDegrees,
    'batteryLevel': batteryLevel,
  };

  factory TelemetryPacket.fromJson(Map<String, dynamic> json) => TelemetryPacket(
    responderId: json['responderId'] as String,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    speedKmh: (json['speedKmh'] as num).toDouble(),
    bearingDegrees: (json['bearingDegrees'] as num).toDouble(),
    batteryLevel: json['batteryLevel'] as int,
  );
}
