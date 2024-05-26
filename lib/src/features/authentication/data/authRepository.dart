import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:medbridge/src/features/profile/presentation/current_user_controller.dart';

// this is a singleton repo with the login and signup methods
class AuthRepo {
  AuthRepo._();

  static final AuthRepo _instance = AuthRepo._();

  static AuthRepo get instance => _instance;

  Future<bool> signUp(String name, String email, String password) async {
    String baseUrl = dotenv.env["BASE_URL_DEV"]!;
    String url = '$baseUrl/patientauth/signup';

    Map<String, dynamic> data = {
      "name": name,
      "email": email,
      "password": password
    };

    String signData = jsonEncode(data);

    var response = await http.post(
      Uri.parse(url),
      body: signData,
      headers: {
        'Content-Type':
            'application/json', // strictly Add the Content-Type header
      },
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> login(String email, String password,
      CurrentUserController currentUserController) async {
    String baseUrl = dotenv.env["BASE_URL_DEV"]!;
    String url = '$baseUrl/patientauth/login';

    Map<String, dynamic> data = {"email": email, "password": password};

    String signData = jsonEncode(data);

    var response = await http.post(
      Uri.parse(url),
      body: signData,
      headers: {
        'Content-Type':
            'application/json', // strictly Add the Content-Type header
      },
    );

    if (response.statusCode == 201) {
      Map value = jsonDecode(response.body)["data"];
      Map newUserData = {
        "patientID": value["patient_ID"],
        "name": value["name"],
        "email": value["email"],
        "password": value["password"]
      };

      currentUserController.setUser(newUserData);
      return true;
    } else {
      return false;
    }
  }
}
