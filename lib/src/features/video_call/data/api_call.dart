import 'dart:convert';
import 'package:http/http.dart' as http;

//Auth token we will use to generate a meeting and connect to it
String token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcGlrZXkiOiIxMzRiNGM5Zi0xN2U0LTRjNjYtYjM5My02OWYyMWZhMGJkY2EiLCJwZXJtaXNzaW9ucyI6WyJhbGxvd19qb2luIl0sImlhdCI6MTcxMzQzMzA5MCwiZXhwIjoxNzE2MDI1MDkwfQ.-vCShwui2sLukx3N0clggQrTqCltP7RxvHK2WqRNoew";

// API call to create meeting
Future<String> getAccessToken() async {
  final http.Response httpResponse = await http.get(
    Uri.parse(".../videosdk/get_videosdk_key"),
    headers: {"Content-Type": "application/json"},
  );

  if (httpResponse.statusCode == 200) {
    return json.decode(httpResponse.body)['data'];
  } else {
    return "error";
  }

}
