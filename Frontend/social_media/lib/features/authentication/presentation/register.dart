import 'package:flutter/material.dart';
import 'package:social_media/features/authentication/data/remote_data_source/register.dart';
import 'package:social_media/features/authentication/widgets/customEleveatedButton.dart';
import 'package:social_media/features/authentication/widgets/customText.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

TextEditingController usernameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController passwordConfirmController = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: 330,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                CustomText(
                  hitText: 'username',
                  controller: usernameController,
                ),
                SizedBox(height: 10),
                CustomText(
                  hitText: 'email',
                  controller: emailController,
                ),
                SizedBox(height: 10),
                CustomText(
                  hitText: 'password',
                  controller: passwordController,
                ),
                SizedBox(height: 10),
                CustomText(
                  hitText: 'password confirm',
                  controller: passwordConfirmController,
                ),
                SizedBox(height: 10),
                CustomElevatedButton(
                  onPressed: () {
                    if (passwordController.text ==
                        passwordConfirmController.text) {
                      // Adjusted line: Added password confirmation check
                      RegisterApi().register(
                        usernameController.text,
                        emailController.text,
                        passwordController.text,
                        passwordConfirmController.text,
                      );
                    } else {
                      // Passwords do not match, handle accordingly (e.g., show a message).
                      print('Passwords do not match');
                    }
                  },
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
