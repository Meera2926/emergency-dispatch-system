import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/countdown_progress_ring.dart';

void main() {
  testWidgets('CountdownProgressRing displays remaining seconds and invokes onCancel', (tester) async {
    bool cancelled = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CountdownProgressRing(
            progress: 0.6,
            remainingSeconds: 3,
            onCancel: () => cancelled = true,
          ),
        ),
      ),
    );

    expect(find.text('3'), findsOneWidget);
    await tester.tap(find.text('Slide or tap to cancel'));
    expect(cancelled, isTrue);
  });
}
