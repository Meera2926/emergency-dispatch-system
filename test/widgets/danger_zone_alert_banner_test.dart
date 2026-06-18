import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/geofencing/danger_zone.dart';
import 'package:emergency_resource_dispatch_system/widgets/danger_zone_alert_banner.dart';

void main() {
  testWidgets('DangerZoneAlertBanner displays hazard warning title', (tester) async {
    const zone = DangerZone(
      id: 'DZ-1',
      title: 'Gas Leak Zone',
      hazard: HazardType.gasLeak,
      centerLat: 12.0,
      centerLng: 77.0,
      radiusMeters: 300,
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: DangerZoneAlertBanner(zone: zone),
        ),
      ),
    );

    expect(find.textContaining('HAZARD ALERT: GAS LEAK ZONE'), findsOneWidget);
  });
}
