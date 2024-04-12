import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentUserController extends StateNotifier<Map> {
  CurrentUserController()
      : super({
          "patient_ID": "ada91ed3-0245-4538-87e6-08fa2a67255e",
          "name": "Peter Kirabo",
          "email": "kirabo@gmail.com",
          "password": "ilikedj48"
        });

  void setUser(Map newdate) {
    state = newdate;
  }
}

final currentUserControllerProvider =
    StateNotifierProvider<CurrentUserController, Map>((ref) {
  return CurrentUserController();
});
