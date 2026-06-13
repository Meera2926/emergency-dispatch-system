import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/medical/first_aid_step.dart';
import 'package:emergency_resource_dispatch_system/widgets/first_aid_card.dart';

void main() {
  testWidgets('FirstAidCard renders step details and warning note', (tester) async {
    const step = FirstAidStep(
      stepNumber: 1,
      title: 'Airway Clearance',
      instruction: 'Tilt head and lift chin gently.',
      warningNote: 'Check for spinal injury first',
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FirstAidCard(step: step),
        ),
      ),
    );

    expect(find.text('Airway Clearance'), findsOneWidget);
    expect(find.text('⚠️ Check for spinal injury first'), findsOneWidget);
  });
}
