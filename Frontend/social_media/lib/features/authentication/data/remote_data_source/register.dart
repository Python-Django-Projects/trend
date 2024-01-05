import 'package:http/http.dart';

class RegisterApi {
  void register(username, email, password, password2) async {
    try {
      Response response =
          await post(Uri.parse('http://127.0.0.1:8000/register2/'), body: {
        'username': username,
        'email': email,
        'password': password,
        'password2': password2,
      });
      if (response.statusCode == 200) {
        print('account created');
      } else {
        print(response.statusCode);
        print(response.body);
        print('failed');
      }
    } catch ( e) {
      print(e.toString());
    }
  }
}
