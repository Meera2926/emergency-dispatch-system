import 'package:flutter/material.dart';
import 'package:emergency_resource_dispatch_system/accessibility/semantic_labels.dart';

class AccessibleSosTrigger extends StatelessWidget {
  final VoidCallback onTrigger;

  const AccessibleSosTrigger({super.key, required this.onTrigger});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: SemanticLabels.sosButton,
      button: true,
      enabled: true,
      child: GestureDetector(
        onLongPress: onTrigger,
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFF1744),
          ),
          child: const Center(
            child: Text(
              'SOS',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
