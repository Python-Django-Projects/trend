import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:social_media/features/authentication/data/remote_data_source/forget_password.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Reset App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PasswordResetScreen(),
    );
  }
}

class PasswordResetScreen extends StatefulWidget {
  @override
  _PasswordResetScreenState createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Reset'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                ForgetPasswordApi().resetPassword(emailController.text);
              },
              child: Text('re'),
            ),
          ],
        ),
      ),
    );
  }
}
