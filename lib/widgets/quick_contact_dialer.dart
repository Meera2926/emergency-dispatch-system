import 'package:flutter/material.dart';

class QuickContactDialer extends StatelessWidget {
  final void Function(String number) onDialSelected;

  const QuickContactDialer({super.key, required this.onDialSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Emergency Hotlines', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.local_police, color: Colors.blueAccent),
            title: const Text('Police Emergency (112)', style: TextStyle(color: Colors.white)),
            onTap: () => onDialSelected('112'),
          ),
          ListTile(
            leading: const Icon(Icons.local_hospital, color: Colors.greenAccent),
            title: const Text('Ambulance / Medical (108)', style: TextStyle(color: Colors.white)),
            onTap: () => onDialSelected('108'),
          ),
          ListTile(
            leading: const Icon(Icons.local_fire_department, color: Colors.orangeAccent),
            title: const Text('Fire Emergency (101)', style: TextStyle(color: Colors.white)),
            onTap: () => onDialSelected('101'),
          ),
        ],
      ),
    );
  }
}
