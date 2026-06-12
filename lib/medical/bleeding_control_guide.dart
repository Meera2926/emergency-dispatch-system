import 'first_aid_step.dart';

class BleedingControlGuide {
  static List<FirstAidStep> getProtocol() {
    return const [
      FirstAidStep(
        stepNumber: 1,
        title: 'Direct Pressure',
        instruction: 'Apply firm, continuous direct pressure with sterile cloth or gloved hand.',
      ),
      FirstAidStep(
        stepNumber: 2,
        title: 'Pressure Bandage',
        instruction: 'Wrap dressing securely without cutting off distal blood flow.',
      ),
      FirstAidStep(
        stepNumber: 3,
        title: 'Tourniquet Application',
        instruction: 'If bleeding from limb is catastrophic, apply commercial tourniquet 5cm above wound.',
        warningNote: 'Note exact time of tourniquet application',
      ),
    ];
  }
}
