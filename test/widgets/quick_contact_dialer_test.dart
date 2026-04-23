import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/quick_contact_dialer.dart';

void main() {
  testWidgets('QuickContactDialer invokes onDialSelected with selected number', (tester) async {
    String dialled = '';

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: QuickContactDialer(onDialSelected: (num) => dialled = num),
        ),
      ),
    );

    await tester.tap(find.text('Police Emergency (112)'));
    expect(dialled, equals('112'));
  });
}
