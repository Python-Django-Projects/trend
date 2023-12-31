import 'package:flutter/material.dart';
import 'package:social_media/features/auth/widgets/customEleveatedButton.dart';
import 'package:social_media/features/auth/widgets/customText.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            // color: Colors.red,
            width: 330,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                CustomText(hitText: 'username or email'),
                SizedBox(height: 10),
                CustomText(
                  hitText: 'password',
                ),
                SizedBox(height: 10),
                CustomElevatedButton(
                  onPressed: () {},
                  text: 'login',
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'forget password?',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 124, 123, 123),
                    ),
                  ),
                ),
                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: CustomElevatedButton(
                      text: 'create account', onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
