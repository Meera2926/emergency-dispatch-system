import 'package:flutter/material.dart';

class CprAudioVisualRing extends StatelessWidget {
  final int compressionCount;
  final bool isCompressing;

  const CprAudioVisualRing({
    super.key,
    required this.compressionCount,
    required this.isCompressing,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: isCompressing ? 160 : 180,
      height: isCompressing ? 160 : 180,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCompressing ? Colors.redAccent.withOpacity(0.4) : Colors.red.withOpacity(0.15),
        border: Border.all(color: Colors.redAccent, width: 4),
      ),
      child: Center(
        child: Text(
          '$compressionCount',
          style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
