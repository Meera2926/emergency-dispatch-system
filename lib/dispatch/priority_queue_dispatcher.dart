import 'dart:collection';

class PrioritizedEmergency {
  final String id;
  final int priorityScore; // 1 (low) to 10 (critical)
  final DateTime createdAt;

  const PrioritizedEmergency({
    required this.id,
    required this.priorityScore,
    required this.createdAt,
  });
}

class PriorityQueueDispatcher {
  final List<PrioritizedEmergency> _queue = [];

  void addIncident(PrioritizedEmergency incident) {
    _queue.add(incident);
    _queue.sort((a, b) => b.priorityScore.compareTo(a.priorityScore));
  }

  PrioritizedEmergency? popNext() {
    if (_queue.isEmpty) return null;
    return _queue.removeAt(0);
  }

  int get length => _queue.length;
}
