import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/pulse_animation.dart';

void main() {
  testWidgets('PulseAnimation renders child widget properly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: PulseAnimation(
            child: Icon(Icons.warning, key: Key('pulse-icon')),
          ),
        ),
      ),
    );

    expect(find.byKey(const Key('pulse-icon')), findsOneWidget);
  });
}
