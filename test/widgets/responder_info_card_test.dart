import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/responder_info_card.dart';

void main() {
  testWidgets('ResponderInfoCard displays details and handles onCall tap', (tester) async {
    bool callTapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ResponderInfoCard(
            responderName: 'Paramedic Priya',
            vehicleType: 'Ambulance Unit 4',
            etaMinutes: 6.0,
            onCall: () => callTapped = true,
          ),
        ),
      ),
    );

    expect(find.text('Paramedic Priya'), findsOneWidget);
    expect(find.text('Ambulance Unit 4 • ETA: 6 mins'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.phone));
    expect(callTapped, isTrue);
  });
}
