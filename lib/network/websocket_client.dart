import 'dart:async';
import 'websocket_event.dart';

class WebSocketClient {
  bool _isConnected = false;
  final StreamController<WebSocketEvent> _eventController = StreamController<WebSocketEvent>.broadcast();

  bool get isConnected => _isConnected;
  Stream<WebSocketEvent> get eventStream => _eventController.stream;

  Future<void> connect(String url) async {
    _isConnected = true;
    _eventController.add(WebSocketEvent(
      type: WebSocketEventType.connect,
      payload: {'url': url},
      timestamp: DateTime.now(),
    ));
  }

  void send(WebSocketEvent event) {
    if (_isConnected) {
      _eventController.add(event);
    }
  }

  Future<void> disconnect() async {
    _isConnected = false;
    _eventController.add(WebSocketEvent(
      type: WebSocketEventType.disconnect,
      payload: {},
      timestamp: DateTime.now(),
    ));
  }

  void dispose() {
    _eventController.close();
  }
}
