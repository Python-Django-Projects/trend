import 'package:flutter/material.dart';
import 'package:social_media/features/authentication/data/remote_data_source/login.dart';
import 'package:social_media/features/authentication/presentation/forgetpassword.dart';
import 'package:social_media/features/authentication/presentation/register.dart';
import 'package:social_media/features/authentication/widgets/customEleveatedButton.dart';
import 'package:social_media/features/authentication/widgets/customText.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailController = TextEditingController();
final passController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
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
                const Spacer(
                  flex: 2,
                ),
                CustomText(
                  hitText: 'username or email',
                  controller: emailController,
                ),
                const SizedBox(height: 10),
                CustomText(
                  hitText: 'password',
                  controller: passController,
                ),
                const SizedBox(height: 10),
                CustomElevatedButton(
                  onPressed: () {
                    LoginApi().login(context);
                  },
                  text: 'login',
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgetPassword(),
                      ),
                    );
                  },
                  child: const Text(
                    'forget password?',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 124, 123, 123),
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: CustomElevatedButton(
                      text: 'create account',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
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
