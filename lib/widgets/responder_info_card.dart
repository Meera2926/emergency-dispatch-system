import 'package:flutter/material.dart';

class ResponderInfoCard extends StatelessWidget {
  final String responderName;
  final String vehicleType;
  final double etaMinutes;
  final VoidCallback onCall;

  const ResponderInfoCard({
    super.key,
    required this.responderName,
    required this.vehicleType,
    required this.etaMinutes,
    required this.onCall,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E1E1E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.security, color: Colors.white),
        ),
        title: Text(responderName, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        subtitle: Text('$vehicleType • ETA: ${etaMinutes.toStringAsFixed(0)} mins', style: const TextStyle(color: Colors.white70)),
        trailing: IconButton(
          icon: const Icon(Icons.phone, color: Colors.greenAccent),
          onPressed: onCall,
        ),
      ),
    );
  }
}
