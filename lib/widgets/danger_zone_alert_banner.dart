import 'package:flutter/material.dart';
import 'package:emergency_resource_dispatch_system/geofencing/danger_zone.dart';

class DangerZoneAlertBanner extends StatelessWidget {
  final DangerZone zone;

  const DangerZoneAlertBanner({super.key, required this.zone});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.red.shade900,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(Icons.warning_amber_rounded, color: Colors.amberAccent, size: 28),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HAZARD ALERT: ${zone.title.toUpperCase()}',
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  'Hazard type: ${zone.hazard.name}. Follow emergency evacuation protocols.',
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
