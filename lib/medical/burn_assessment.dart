enum BurnDegree {
  firstDegree(label: 'Superficial / Redness', requiresAmbulance: false),
  secondDegree(label: 'Partial Thickness / Blisters', requiresAmbulance: false),
  thirdDegree(label: 'Full Thickness / Charred', requiresAmbulance: true);

  final String label;
  final bool requiresAmbulance;

  const BurnDegree({required this.label, required this.requiresAmbulance});
}

class BurnAssessment {
  static String getFirstAidTreatment(BurnDegree degree) {
    switch (degree) {
      case BurnDegree.firstDegree:
        return 'Cool with running tap water for 10-20 mins. Do not use ice.';
      case BurnDegree.secondDegree:
        return 'Cool with clean water. Cover loosely with sterile dressing. Do not pop blisters.';
      case BurnDegree.thirdDegree:
        return 'Call emergency immediately. Cover burned area loosely. Treat for shock.';
    }
  }
}
