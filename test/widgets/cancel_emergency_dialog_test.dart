import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/cancel_emergency_dialog.dart';

void main() {
  testWidgets('CancelEmergencyDialog fires onConfirmCancel when confirmed', (tester) async {
    bool cancelled = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CancelEmergencyDialog(onConfirmCancel: () => cancelled = true),
        ),
      ),
    );

    expect(find.text('Cancel Emergency?'), findsOneWidget);
    await tester.tap(find.text('Yes, Cancel Alert'));
    expect(cancelled, isTrue);
  });
}
