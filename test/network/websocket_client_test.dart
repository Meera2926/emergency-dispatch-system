import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/network/websocket_client.dart';
import 'package:emergency_resource_dispatch_system/network/websocket_event.dart';

void main() {
  group('WebSocketClient Tests', () {
    test('Connects and emits connect event', () async {
      final client = WebSocketClient();
      expect(client.isConnected, isFalse);

      expectLater(
        client.eventStream,
        emits(predicate<WebSocketEvent>((e) => e.type == WebSocketEventType.connect)),
      );

      await client.connect('wss://dispatch.test');
      expect(client.isConnected, isTrue);

      await client.disconnect();
      client.dispose();
    });
  });
}
