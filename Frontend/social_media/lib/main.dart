import 'package:flutter/material.dart';
import 'package:social_media/features/profile/profilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.lightBlue),
      home: const ProfilePage(),
    );
  }
}
