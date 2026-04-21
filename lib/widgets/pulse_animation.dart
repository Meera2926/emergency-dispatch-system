import 'package:flutter/material.dart';

class PulseAnimation extends StatefulWidget {
  final Widget child;
  final Color pulseColor;
  final double maxRadius;

  const PulseAnimation({
    super.key,
    required this.child,
    this.pulseColor = const Color(0x66FF1744),
    this.maxRadius = 120.0,
  });

  @override
  State<PulseAnimation> createState() => _PulseAnimationState();
}

class _PulseAnimationState extends State<PulseAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: widget.maxRadius * _controller.value,
              height: widget.maxRadius * _controller.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.pulseColor.withOpacity(1.0 - _controller.value),
              ),
            ),
            widget.child,
          ],
        );
      },
    );
  }
}
