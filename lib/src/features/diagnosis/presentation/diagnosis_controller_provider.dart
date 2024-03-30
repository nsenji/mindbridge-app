import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medbridge/src/features/diagnosis/domain/diagnosis_class.dart';

class DiagnosisController extends StateNotifier<Diagnosis> {
  DiagnosisController()
      : super(Diagnosis("", "", "", "", "", "", "", "", "", "", "", "", "", "",
            "", "", ""));

  void updateDiagnosis(String option, String symptom) {
    switch (symptom) {
      case 'sadness':
        state = state.copyWith(sadness: option.toLowerCase());
        break;
      case 'euphoric':
        state = state.copyWith(euphoric: option.toLowerCase());
        break;
      case 'exhausted':
        state = state.copyWith(exhausted: option.toLowerCase());
        break;
      case 'sleep_dissorder':
        state = state.copyWith(sleep_dissorder: option.toLowerCase());
        break;
      case 'mood_swing':
        state = state.copyWith(mood_swing: option.toLowerCase());
        break;
      case 'suicidal_thoughts':
        state = state.copyWith(suicidal_thoughts: option.toLowerCase());
        break;
      case 'anorxia':
        state = state.copyWith(anorxia: option.toLowerCase());
        break;
      case 'authority_respect':
        state = state.copyWith(authority_respect: option.toLowerCase());
        break;
      case 'try_explanation':
        state = state.copyWith(try_explanation: option.toLowerCase());
        break;
      case 'aggressive_response':
        state = state.copyWith(aggressive_response: option.toLowerCase());
        break;
      case 'ignore_and_move_on':
        state = state.copyWith(ignore_and_move_on: option.toLowerCase());
        break;
      case 'nervous_break_down':
        state = state.copyWith(nervous_break_down: option.toLowerCase());
        break;
      case 'admit_mistakes':
        state = state.copyWith(admit_mistakes: option.toLowerCase());
        break;
      case 'overthinking':
        state = state.copyWith(overthinking: option.toLowerCase());
        break;
      case 'sexual_activity':
        state = state.copyWith(sexual_activity: option.toLowerCase());
        break;
      case 'concentration':
        state = state.copyWith(concentration: option.toLowerCase());
        break;
      case 'optimisim':
        state = state.copyWith(optimisim: option.toLowerCase());
        break;
      default:
        // Handle unknown symptom
        print('Unknown symptom: $symptom');
        break;
    }
  }
}

final diagnosisControllerProvider =
    StateNotifierProvider<DiagnosisController, Diagnosis>((ref) {
  return DiagnosisController();
});
