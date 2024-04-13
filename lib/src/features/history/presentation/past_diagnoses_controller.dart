import 'package:flutter_riverpod/flutter_riverpod.dart';

class PastDiagnosesController extends StateNotifier<List> {
  PastDiagnosesController() : super([]);

  void setList(List newlist) {
    state = newlist;
  }
}

final pastDiagnosesControllerProvider =
    StateNotifierProvider<PastDiagnosesController, List>((ref) {
  return PastDiagnosesController();
});
