import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/audio_visual_feedback_bar.dart';

void main() {
  testWidgets('AudioVisualFeedbackBar displays audio and haptics status icons', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AudioVisualFeedbackBar(isAudioActive: true, isHapticsActive: false),
        ),
      ),
    );

    expect(find.byIcon(Icons.volume_up), findsOneWidget);
    expect(find.byIcon(Icons.mobile_off), findsOneWidget);
  });
}
