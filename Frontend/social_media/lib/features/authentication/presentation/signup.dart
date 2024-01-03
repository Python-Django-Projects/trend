import 'package:flutter/material.dart';
import 'package:http/http.dart';
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

void login(String email, password, password2) async {
  try {
    Response response =
        await post(Uri.parse('http://127.0.0.1:8000/register/'), body: {
      // 'username': username,
      'email': email,
      'password': password,
      'password2': password2,
    });
    if (response.statusCode == 200) {
      print('account created');
    } else {
      print(response.statusCode);
      print(response.body);
      print('failed');
    }
  } catch (e) {
    print(e.toString());
    print('error');
  }
}

class _SignUpPageState extends State<SignUpPage> {
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
                // CustomText(
                //   hitText: 'username',
                //   controller: usernameController,
                // ),
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
                    login(
                        usernameController.text.toString(),
                        emailController.text.toString(),
                        passwordController.text.toString());
                    // passwordConfirmController.text.toString());
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
