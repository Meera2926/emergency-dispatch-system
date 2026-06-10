enum TriageCategory {
  immediate(code: 'RED', label: 'Immediate / Critical', priority: 1),
  delayed(code: 'YELLOW', label: 'Delayed / Serious', priority: 2),
  minor(code: 'GREEN', label: 'Minor / Walking Wounded', priority: 3),
  deceased(code: 'BLACK', label: 'Expectant / Deceased', priority: 4);

  final String code;
  final String label;
  final int priority;

  const TriageCategory({
    required this.code,
    required this.label,
    required this.priority,
  });
}
