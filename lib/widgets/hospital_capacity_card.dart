import 'package:flutter/material.dart';
import 'package:emergency_resource_dispatch_system/hospital/hospital_facility.dart';

class HospitalCapacityCard extends StatelessWidget {
  final HospitalFacility hospital;

  const HospitalCapacityCard({super.key, required this.hospital});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E1E1E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: const Icon(Icons.local_hospital, color: Colors.greenAccent),
        title: Text(hospital.name, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        subtitle: Text(
          'ICU Beds: ${hospital.availableIcuBeds} available ${hospital.hasTraumaCenter ? "• Trauma Center" : ""}',
          style: const TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
