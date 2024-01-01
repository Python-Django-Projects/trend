import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? hitText;
  final TextEditingController? controller;
  final Color? backgroundColor;

  const CustomText({
    Key? key,
    required this.hitText,
    this.backgroundColor,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: TextField(
        controller: controller,
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
                width: 2.5), // Change the color and thickness here
          ),
        ),
      ),
    );
  }
}
