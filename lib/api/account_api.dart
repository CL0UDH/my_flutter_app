import 'package:http/http.dart' as http;
import 'dart:convert';

class AccountApi {
  final String url = "https://reqres.in/api/";
  Future<bool> login(String email, String password) async {
    try {
      final http.Response response = await http.post(
        url + 'login',
        body: jsonEncode({
          "email": email,
          "password": password,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final dynamic parsed = jsonDecode(response.body);
        print("login OK token: ${parsed['token']}");
        return true;
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<List<dynamic>> getUsers(int page) async {
    try {
      final http.Response response = await http.get(
        url + "users?page=$page&delay=3",
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final dynamic parsed = jsonDecode(response.body);
        print(parsed['data']);
        return parsed['data'];
      } else {

        final error = [
          {
            "error": response.statusCode,
          }
        ];
        return error;
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
