enum EmergencyType {
  medical(displayName: 'Medical Emergency', defaultIconCode: 0xe3ac),
  police(displayName: 'Police / Safety', defaultIconCode: 0xe5bf),
  fire(displayName: 'Fire Emergency', defaultIconCode: 0xe35b),
  accident(displayName: 'Traffic Accident', defaultIconCode: 0xe0d7),
  naturalDisaster(displayName: 'Natural Disaster', defaultIconCode: 0xe62e);

  final String displayName;
  final int defaultIconCode;

  const EmergencyType({
    required this.displayName,
    required this.defaultIconCode,
  });

  static EmergencyType parse(String value) {
    return EmergencyType.values.firstWhere(
      (e) => e.name.toLowerCase() == value.toLowerCase(),
      orElse: () => EmergencyType.medical,
    );
  }
}
