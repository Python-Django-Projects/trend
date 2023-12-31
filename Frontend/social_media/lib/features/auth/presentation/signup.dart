import 'package:flutter/material.dart';
import 'package:social_media/features/auth/widgets/customEleveatedButton.dart';
import 'package:social_media/features/auth/widgets/customText.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  text: 'create account',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'OR',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: CustomElevatedButton(
                    text: 'back to login',
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
