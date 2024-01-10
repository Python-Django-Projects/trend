import 'package:http/http.dart' as http;

class ForgetPasswordApi {
  void resetPassword(String email) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/PasswordResetRequestView'),
      body: {'email': email},
    );

    if (response.statusCode == 200) {
      // Password reset successful, handle the response accordingly
      print('Password reset successful');
    } else {
      // Password reset failed, handle the error
      print('Password reset failed. Status code: ${response.statusCode}');
    }
  }
}
