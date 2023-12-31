import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? hitText;
  final Color? backgroundColor;
  const CustomText({Key? key, required this.hitText, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: TextField(
        decoration: InputDecoration(
          hintText: hitText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: Colors.black), // Change the color here
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Colors.blue,
                width: 2), // Change the color and thickness here
          ),
        ),
      ),
    );
  }
}
