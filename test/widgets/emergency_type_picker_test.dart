import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/models/emergency_type.dart';
import 'package:emergency_resource_dispatch_system/widgets/emergency_type_picker.dart';

void main() {
  testWidgets('EmergencyTypePicker renders chips and fires onSelected callback', (tester) async {
    EmergencyType chosen = EmergencyType.medical;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: EmergencyTypePicker(
            selectedType: chosen,
            onSelected: (val) => chosen = val,
          ),
        ),
      ),
    );

    expect(find.text('Medical Emergency'), findsOneWidget);
    await tester.tap(find.text('Police / Safety'));
    expect(chosen, equals(EmergencyType.police));
  });
}
