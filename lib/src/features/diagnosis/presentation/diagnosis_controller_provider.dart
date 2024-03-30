import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medbridge/src/features/diagnosis/data/diagnosis_class.dart';

class DiagnosisController extends StateNotifier<AsyncValue<Diagnosis>> {
  DiagnosisController()
      : super(AsyncData(Diagnosis("", "", "", "", "", "", "", "", "", "", "",
            "", "", "", "", "", "")));
}
