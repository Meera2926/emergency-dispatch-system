import 'package:flutter/material.dart';

class BatteryIndicatorChip extends StatelessWidget {
  final int batteryPercent;

  const BatteryIndicatorChip({super.key, required this.batteryPercent});

  Color get _color {
    if (batteryPercent > 50) return Colors.greenAccent;
    if (batteryPercent > 20) return Colors.amberAccent;
    return Colors.redAccent;
  }

  IconData get _icon {
    if (batteryPercent > 80) return Icons.battery_full;
    if (batteryPercent > 50) return Icons.battery_5_bar;
    if (batteryPercent > 20) return Icons.battery_3_bar;
    return Icons.battery_alert;
  }

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(_icon, color: _color, size: 16),
      label: Text('$batteryPercent%', style: TextStyle(color: _color, fontSize: 12)),
      backgroundColor: Colors.black45,
    );
  }
}
