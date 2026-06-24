import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/accessible_sos_trigger.dart';

void main() {
  testWidgets('AccessibleSosTrigger responds to onLongPress gesture', (tester) async {
    bool triggered = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AccessibleSosTrigger(onTrigger: () => triggered = true),
        ),
      ),
    );

    expect(find.text('SOS'), findsOneWidget);
    await tester.longPress(find.text('SOS'));
    expect(triggered, isTrue);
  });
}
