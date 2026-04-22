import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/battery_indicator_chip.dart';

void main() {
  testWidgets('BatteryIndicatorChip renders correct percentage text', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: BatteryIndicatorChip(batteryPercent: 88),
        ),
      ),
    );

    expect(find.text('88%'), findsOneWidget);
  });
}
