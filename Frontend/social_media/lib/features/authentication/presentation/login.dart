import 'package:flutter/material.dart';
import 'package:social_media/features/authentication/presentation/forgetpassword.dart';
import 'package:social_media/features/authentication/presentation/signup.dart';
import 'package:social_media/features/authentication/widgets/customEleveatedButton.dart';
import 'package:social_media/features/authentication/widgets/customText.dart';
import 'package:social_media/features/home/homepage.dart';
import 'package:http/http.dart' as http;

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
                    _login();
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
                        builder: (context) => const ForgetPassword(),
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

  Future<void> _login() async {
    if (emailController.text.isNotEmpty && emailController.text.isNotEmpty) {
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
            builder: (context) => const HomePage(),
          ),
        );
      } else {
        print(' else :${response.statusCode}');
        print(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid Credemtials'),
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
