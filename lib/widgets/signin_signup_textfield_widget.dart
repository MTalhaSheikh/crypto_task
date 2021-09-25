import 'package:flutter/material.dart';
import 'package:rentalflutterapp/constants/constant.dart';

class TextfieldWidget extends StatelessWidget {
  // const TextfieldWidget({Key? key}) : super(key: key);
  String hint;
  IconData icon;
  TextEditingController controller;
  TextfieldWidget(this.hint, this.icon, this.controller);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: hint == "Password" ? true : false,
      decoration: InputDecoration(
        enabledBorder: Constants.inputBorderStyle,
        focusedBorder: Constants.inputBorderStyle,
        fillColor: Colors.white60,
        filled: true,
        prefixIcon: Icon(icon, color: const Color(0xFF8E93A3),),
        labelText: hint,
        labelStyle: const TextStyle(color: Color(0xFF8E93A3), fontSize: 16.0),
      ),
    );
  }
}
