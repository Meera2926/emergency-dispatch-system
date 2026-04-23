import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/incident_timeline_stepper.dart';

void main() {
  testWidgets('IncidentTimelineStepper displays all four stages', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: IncidentTimelineStepper(activeStepIndex: 2),
        ),
      ),
    );

    expect(find.text('SOS Triggered'), findsOneWidget);
    expect(find.text('Dispatched'), findsOneWidget);
    expect(find.text('En Route'), findsOneWidget);
    expect(find.text('Arrived'), findsOneWidget);
  });
}
