import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentUserController extends StateNotifier<Map> {
  CurrentUserController()
      : super({
          "patientID": "ec82e0fe-c752-4ea4-a699-c894e8ca5c1a",
          "name": "Victor Nsenji",
          "email": "nsenji@gmail.com",
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
