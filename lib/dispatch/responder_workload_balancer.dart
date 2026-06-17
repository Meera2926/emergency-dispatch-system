class ResponderWorkload {
  final String responderId;
  int completedMissionsToday;
  int hoursActiveToday;

  ResponderWorkload({
    required this.responderId,
    this.completedMissionsToday = 0,
    this.hoursActiveToday = 0,
  });

  bool get isFatigued => hoursActiveToday >= 12 || completedMissionsToday >= 10;
}
