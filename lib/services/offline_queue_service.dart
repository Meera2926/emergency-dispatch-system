import 'dart:collection';

class OfflineQueueService {
  final Queue<Map<String, dynamic>> _queue = Queue<Map<String, dynamic>>();

  int get pendingCount => _queue.length;
  bool get hasPending => _queue.isNotEmpty;

  void enqueue(Map<String, dynamic> payload) {
    _queue.addLast(payload);
  }

  Map<String, dynamic>? dequeue() {
    if (_queue.isEmpty) return null;
    return _queue.removeFirst();
  }

  List<Map<String, dynamic>> dumpAll() {
    return _queue.toList();
  }

  void clear() {
    _queue.clear();
  }
}
