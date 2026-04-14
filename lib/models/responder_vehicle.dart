enum VehicleType {
  ambulance(label: 'Ambulance', sirenDecibels: 120),
  policeCruiser(label: 'Police Cruiser', sirenDecibels: 110),
  fireEngine(label: 'Fire Engine', sirenDecibels: 130),
  rescueMotorcycle(label: 'Rapid Response Motorcycle', sirenDecibels: 95);

  final String label;
  final int sirenDecibels;

  const VehicleType({required this.label, required this.sirenDecibels});
}

class ResponderVehicle {
  final String registrationPlate;
  final VehicleType type;
  final int capacity;
  final bool hasDefibrillator;
  final bool hasOxygen;

  const ResponderVehicle({
    required this.registrationPlate,
    required this.type,
    this.capacity = 2,
    this.hasDefibrillator = false,
    this.hasOxygen = false,
  });

  Map<String, dynamic> toJson() => {
    'registrationPlate': registrationPlate,
    'type': type.name,
    'capacity': capacity,
    'hasDefibrillator': hasDefibrillator,
    'hasOxygen': hasOxygen,
  };
}
