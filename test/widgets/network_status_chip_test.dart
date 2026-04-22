import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/network_status_chip.dart';

void main() {
  testWidgets('NetworkStatusChip displays online and offline states', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              NetworkStatusChip(isOnline: true),
              NetworkStatusChip(isOnline: false),
            ],
          ),
        ),
      ),
    );

    expect(find.text('Online'), findsOneWidget);
    expect(find.text('Offline (SMS mode)'), findsOneWidget);
  });
}
