import 'package:flutter/material.dart';

class CountdownProgressRing extends StatelessWidget {
  final double progress; // 0.0 to 1.0
  final int remainingSeconds;
  final VoidCallback onCancel;

  const CountdownProgressRing({
    super.key,
    required this.progress,
    required this.remainingSeconds,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 140,
              height: 140,
              child: CircularProgressIndicator(
                value: progress,
                strokeWidth: 8,
                backgroundColor: Colors.white24,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.redAccent),
              ),
            ),
            Text(
              '$remainingSeconds',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 16),
        TextButton.icon(
          onPressed: onCancel,
          icon: const Icon(Icons.close, color: Colors.white70),
          label: const Text('Slide or tap to cancel', style: TextStyle(color: Colors.white70)),
        ),
      ],
    );
  }
}
