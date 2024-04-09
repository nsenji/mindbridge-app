import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medbridge/src/features/diagnosis/data/fetchData_function.dart';

class DiagnosisRepository {
  const DiagnosisRepository();

  Future<String> fetchDiagnosisResults(Map<dynamic, dynamic> data) async {
    String response = await fetchDiagnosis(
        "https://medbridge-ml-pipeline.up.railway.app/predictdata", data);

    if (response != "Application Error") {
      return response;
    } else {
      return response;
    }
    
  }
}

final diagnosisRepositoryProvider = Provider<DiagnosisRepository>((ref) {
  return const DiagnosisRepository();
});

final diagnosisResultsFutureProvider = FutureProvider.autoDispose
    .family<String, Map<dynamic, dynamic>>((ref, data) {
  final diagnosisRepository = ref.watch(diagnosisRepositoryProvider);
  return diagnosisRepository.fetchDiagnosisResults(data);
});
