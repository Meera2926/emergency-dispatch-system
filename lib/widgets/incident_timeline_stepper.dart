import 'package:flutter/material.dart';

class IncidentTimelineStepper extends StatelessWidget {
  final int activeStepIndex; // 0: SOS Triggered, 1: Dispatched, 2: En Route, 3: Arrived

  const IncidentTimelineStepper({super.key, required this.activeStepIndex});

  static const List<String> steps = [
    'SOS Triggered',
    'Dispatched',
    'En Route',
    'Arrived',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(steps.length, (index) {
        final isDone = index <= activeStepIndex;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: isDone ? Colors.redAccent : Colors.grey.shade800,
              child: isDone
                  ? const Icon(Icons.check, size: 16, color: Colors.white)
                  : Text('${index + 1}', style: const TextStyle(fontSize: 12, color: Colors.white54)),
            ),
            const SizedBox(height: 4),
            Text(
              steps[index],
              style: TextStyle(
                fontSize: 11,
                fontWeight: isDone ? FontWeight.bold : FontWeight.normal,
                color: isDone ? Colors.white : Colors.white38,
              ),
            ),
          ],
        );
      }),
    );
  }
}
