import 'package:flutter/material.dart';
import 'package:emergency_resource_dispatch_system/models/emergency_type.dart';

class EmergencyTypePicker extends StatelessWidget {
  final EmergencyType selectedType;
  final ValueChanged<EmergencyType> onSelected;

  const EmergencyTypePicker({
    super.key,
    required this.selectedType,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: EmergencyType.values.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final type = EmergencyType.values[index];
          final isSelected = type == selectedType;
          return ChoiceChip(
            label: Text(type.displayName),
            selected: isSelected,
            onSelected: (_) => onSelected(type),
            selectedColor: Colors.redAccent,
          );
        },
      ),
    );
  }
}
