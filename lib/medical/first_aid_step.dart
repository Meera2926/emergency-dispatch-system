class FirstAidStep {
  final int stepNumber;
  final String title;
  final String instruction;
  final String warningNote;

  const FirstAidStep({
    required this.stepNumber,
    required this.title,
    required this.instruction,
    this.warningNote = '',
  });

  Map<String, dynamic> toJson() => {
    'stepNumber': stepNumber,
    'title': title,
    'instruction': instruction,
    'warningNote': warningNote,
  };
}
