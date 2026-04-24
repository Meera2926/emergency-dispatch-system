import 'package:flutter/material.dart';

class CancelEmergencyDialog extends StatelessWidget {
  final VoidCallback onConfirmCancel;

  const CancelEmergencyDialog({super.key, required this.onConfirmCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF1E1E1E),
      title: const Text('Cancel Emergency?', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      content: const Text(
        'Are you safe? Cancelling will stand down dispatched emergency responders.',
        style: TextStyle(color: Colors.white70),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Keep Active', style: TextStyle(color: Colors.white70)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
          onPressed: () {
            Navigator.pop(context);
            onConfirmCancel();
          },
          child: const Text('Yes, Cancel Alert'),
        ),
      ],
    );
  }
}
