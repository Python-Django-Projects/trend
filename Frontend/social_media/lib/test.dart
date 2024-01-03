import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Fix: Use MainAxisAlignment.center as the alignment argument
              children: [
                OtpTextField(
                  borderWidth: 3,
                  // enabledBorderColor: Colors.red,
                  fieldWidth: 60,

                  fillColor: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                  numberOfFields: 5,
                  borderColor: Color.fromARGB(255, 26, 127, 61),
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {},
                  // onSubmit: (String verificationCode) {
                  //   showDialog(
                  //     context: context,
                  //     builder: (context) {
                  //       return AlertDialog(
                  //         title: Text("Verification Code"),
                  //         content: Text('Code entered is $verificationCode'),
                  //       );
                  //     },
                  //   );
                  // },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
