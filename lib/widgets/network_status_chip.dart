import 'package:flutter/material.dart';

class NetworkStatusChip extends StatelessWidget {
  final bool isOnline;

  const NetworkStatusChip({super.key, required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: isOnline ? Colors.green.withOpacity(0.2) : Colors.red.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isOnline ? Colors.greenAccent : Colors.redAccent,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isOnline ? Icons.wifi : Icons.wifi_off,
            size: 14,
            color: isOnline ? Colors.greenAccent : Colors.redAccent,
          ),
          const SizedBox(width: 4),
          Text(
            isOnline ? 'Online' : 'Offline (SMS mode)',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: isOnline ? Colors.greenAccent : Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
