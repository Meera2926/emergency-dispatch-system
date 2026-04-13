enum EmergencySeverity {
  low(priorityScore: 1, label: 'Low'),
  medium(priorityScore: 2, label: 'Medium'),
  high(priorityScore: 3, label: 'High'),
  critical(priorityScore: 4, label: 'Critical');

  final int priorityScore;
  final String label;

  const EmergencySeverity({required this.priorityScore, required this.label});

  static EmergencySeverity fromString(String val) {
    return EmergencySeverity.values.firstWhere(
      (e) => e.name.toLowerCase() == val.toLowerCase(),
      orElse: () => EmergencySeverity.medium,
    );
  }
}
