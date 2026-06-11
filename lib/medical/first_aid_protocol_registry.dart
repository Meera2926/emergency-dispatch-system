import 'first_aid_step.dart';

class FirstAidProtocolRegistry {
  static List<FirstAidStep> getCprProtocol() {
    return const [
      FirstAidStep(
        stepNumber: 1,
        title: 'Check Responsiveness',
        instruction: 'Tap shoulders firmly and shout "Are you OK?"',
        warningNote: 'Do not shake violently if spinal trauma suspected',
      ),
      FirstAidStep(
        stepNumber: 2,
        title: 'Call Emergency',
        instruction: 'Trigger SOS in app or dial 112 / 108 immediately.',
      ),
      FirstAidStep(
        stepNumber: 3,
        title: 'Begin Compressions',
        instruction: 'Push hard and fast in the center of the chest (100-120 bpm, 5cm depth).',
      ),
    ];
  }
}
