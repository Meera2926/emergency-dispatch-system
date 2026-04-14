class VictimProfile {
  final String id;
  final String name;
  final String phoneNumber;
  final String? bloodGroup;
  final List<String> medicalConditions;
  final String emergencyContactName;
  final String emergencyContactPhone;

  const VictimProfile({
    required this.id,
    required this.name,
    required this.phoneNumber,
    this.bloodGroup,
    this.medicalConditions = const [],
    required this.emergencyContactName,
    required this.emergencyContactPhone,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'phoneNumber': phoneNumber,
    'bloodGroup': bloodGroup,
    'medicalConditions': medicalConditions,
    'emergencyContactName': emergencyContactName,
    'emergencyContactPhone': emergencyContactPhone,
  };

  factory VictimProfile.fromJson(Map<String, dynamic> json) => VictimProfile(
    id: json['id'] as String,
    name: json['name'] as String,
    phoneNumber: json['phoneNumber'] as String,
    bloodGroup: json['bloodGroup'] as String?,
    medicalConditions: (json['medicalConditions'] as List<dynamic>?)
            ?.map((e) => e.toString())
            .toList() ??
        const [],
    emergencyContactName: json['emergencyContactName'] as String,
    emergencyContactPhone: json['emergencyContactPhone'] as String,
  );
}
