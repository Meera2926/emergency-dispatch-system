import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/widgets/responder_rating_dialog.dart';

void main() {
  testWidgets('ResponderRatingDialog submits rating star value', (tester) async {
    int ratingSubmitted = 0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ResponderRatingDialog(onSubmitRating: (r) => ratingSubmitted = r),
        ),
      ),
    );

    await tester.tap(find.text('Submit'));
    expect(ratingSubmitted, equals(5));
  });
}
