import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:medbridge/src/features/appointments/presentation/appointments_controller.dart';

class AppointmentsRepository {
  const AppointmentsRepository();

  Future<bool> getAppointments(
      AppointmentsController appointmentsController, String patientID) async {
    String url =
        "https://final-project-backend-production-273c.up.railway.app/appointments/getpatientappointments";

    Map<String, dynamic> data = {
      "patientID": patientID,
    };

    var jsonData = jsonEncode(data);
    final response = await http.post(
      Uri.parse(url),
      body: jsonData,
      headers: {
        'Content-Type':
            'application/json', // strictly Add the Content-Type header
      },
    );
    var value = jsonDecode(response.body);
    appointmentsController.setList(value["data"]);
    return true;
  }
}

final appointmentsRepositoryProvider = Provider<AppointmentsRepository>((ref) {
  return const AppointmentsRepository();
});

final getappointmentsListFutureProvider =
    FutureProvider.autoDispose.family<bool, String>((ref, patientID) {
  final appointmentsRepository = ref.watch(appointmentsRepositoryProvider);
  final appointmentsStateProvider =
      ref.read(appointmentsControllerProvider.notifier);

  return appointmentsRepository.getAppointments(
      appointmentsStateProvider, patientID);
});
