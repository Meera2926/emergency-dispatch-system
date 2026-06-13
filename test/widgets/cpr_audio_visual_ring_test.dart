import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/cpr_audio_visual_ring.dart';

void main() {
  testWidgets('CprAudioVisualRing renders compression count', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CprAudioVisualRing(compressionCount: 22, isCompressing: true),
        ),
      ),
    );

    expect(find.text('22'), findsOneWidget);
  });
}
