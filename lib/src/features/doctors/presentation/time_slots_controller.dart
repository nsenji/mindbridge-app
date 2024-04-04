import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeslotsController extends StateNotifier<List> {
  TimeslotsController() : super([]);

  void setList(List newList) {
    state = newList;
  }
}

final timeslotsControllerProvider =
    StateNotifierProvider<TimeslotsController, List>((ref) {
  return TimeslotsController();
});
