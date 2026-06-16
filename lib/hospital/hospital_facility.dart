class HospitalFacility {
  final String id;
  final String name;
  final double latitude;
  final double longitude;
  final int totalIcuBeds;
  final int occupiedIcuBeds;
  final bool hasTraumaCenter;

  const HospitalFacility({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.totalIcuBeds,
    required this.occupiedIcuBeds,
    required this.hasTraumaCenter,
  });

  int get availableIcuBeds => totalIcuBeds - occupiedIcuBeds;
  bool get hasCapacity => availableIcuBeds > 0;
}
