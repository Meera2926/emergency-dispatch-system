import 'package:flutter/material.dart';

class AudioVisualFeedbackBar extends StatelessWidget {
  final bool isAudioActive;
  final bool isHapticsActive;

  const AudioVisualFeedbackBar({
    super.key,
    required this.isAudioActive,
    required this.isHapticsActive,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(isAudioActive ? Icons.volume_up : Icons.volume_off, color: Colors.white70, size: 18),
        const SizedBox(width: 8),
        Icon(isHapticsActive ? Icons.vibration : Icons.mobile_off, color: Colors.white70, size: 18),
      ],
    );
  }
}
