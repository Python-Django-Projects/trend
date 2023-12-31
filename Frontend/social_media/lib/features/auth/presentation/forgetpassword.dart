import 'package:flutter/material.dart';
import 'package:social_media/features/auth/presentation/forgetpassword.dart';
import 'package:social_media/features/auth/presentation/login.dart';
import 'package:social_media/features/auth/presentation/signup.dart';
import 'package:social_media/features/auth/widgets/customEleveatedButton.dart';
import 'package:social_media/features/auth/widgets/customText.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                SizedBox(height: 10),
                CustomElevatedButton(
                  onPressed: () {},
                  text: 'reset password',
                ),
                SizedBox(
                  height: 20,
                ),
                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: CustomElevatedButton(
                      text: 'back to login',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
