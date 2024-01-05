import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController newPasswordConfirmController =
      TextEditingController();

  Future<void> changePassword() async {
    final response = await http.post(
      Uri.parse("http://127.0.0.1:8000/change_password2/"),
      body: {
        "old_password": oldPasswordController.text,
        "new_password": newPasswordController.text,
        "new_password_confirm": newPasswordConfirmController.text,
      },
    );

    if (response.statusCode == 200) {
      // Successfully changed password
      print("Password changed successfully");
    } else {
      // Failed to change password
      print("Failed to change password. Status code: ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Passworddd'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: oldPasswordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Old Password'),
            ),
            TextField(
              controller: newPasswordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'New Password'),
            ),
            TextField(
              controller: newPasswordConfirmController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Confirm New Password'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                changePassword();
              },
              child: Text('Change Password'),
            ),
          ],
        ),
      ),
    );
  }
}
