class TurnByTurnSimulator {
  final List<(double, double)> route;
  int _currentIndex = 0;

  TurnByTurnSimulator({required this.route});

  bool get hasNext => _currentIndex < route.length;
  int get currentStep => _currentIndex;
  int get totalSteps => route.length;

  (double, double)? next() {
    if (!hasNext) return null;
    final point = route[_currentIndex];
    _currentIndex++;
    return point;
  }

  void reset() {
    _currentIndex = 0;
  }
}
