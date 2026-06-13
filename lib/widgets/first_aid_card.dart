import 'package:flutter/material.dart';
import 'package:emergency_resource_dispatch_system/medical/first_aid_step.dart';

class FirstAidCard extends StatelessWidget {
  final FirstAidStep step;

  const FirstAidCard({super.key, required this.step});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E1E1E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.redAccent,
                  child: Text('${step.stepNumber}', style: const TextStyle(fontSize: 12, color: Colors.white)),
                ),
                const SizedBox(width: 8),
                Text(step.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
            const SizedBox(height: 8),
            Text(step.instruction, style: const TextStyle(color: Colors.white70)),
            if (step.warningNote.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text('⚠️ ${step.warningNote}', style: const TextStyle(color: Colors.amberAccent, fontSize: 12)),
            ],
          ],
        ),
      ),
    );
  }
}
