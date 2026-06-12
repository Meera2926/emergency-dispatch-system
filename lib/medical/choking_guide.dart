import 'first_aid_step.dart';

class ChokingGuide {
  static List<FirstAidStep> getAdultChokingSteps() {
    return const [
      FirstAidStep(
        stepNumber: 1,
        title: '5 Back Blows',
        instruction: 'Lean victim forward and give 5 firm blows between shoulder blades with heel of hand.',
      ),
      FirstAidStep(
        stepNumber: 2,
        title: '5 Abdominal Thrusts',
        instruction: 'Stand behind, place fist above navel, give 5 quick upward thrusts (Heimlich maneuver).',
        warningNote: 'Do not perform abdominal thrusts on infants',
      ),
    ];
  }
}
