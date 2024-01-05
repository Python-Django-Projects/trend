import 'package:flutter/material.dart';
import 'package:social_media/features/authentication/presentation/login.dart';
import 'package:http/http.dart' as http;
import 'package:social_media/features/home/homepage.dart';

class LoginApi {
  Future<void> login(BuildContext context) async {
    if (emailController.text.isNotEmpty && passController.text.isNotEmpty) {
      var response = await http.post(Uri.parse("http://127.0.0.1:8000/login/"),
          body: {
            'email': emailController.text,
            'password': passController.text
          });
      if (response.statusCode == 200) {
        print(response.statusCode);
        print(response.body);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      } else {
        print(' else :${response.statusCode}');
        print(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid Credentials'),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Blank field not allowed'),
        ),
      );
    }
  }
}
