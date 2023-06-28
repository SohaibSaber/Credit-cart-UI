import 'package:flutter/material.dart';

import '../constants.dart';

class MyLoginField extends StatelessWidget {
  final String hint;
  final Color? hintColor;
  const MyLoginField({
    super.key, required this.hint, this.hintColor = textfieldHintColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
      borderRadius: BorderRadius.circular(8)
    ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,hintStyle: TextStyle(color: hintColor,
        fontSize: 14),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: textfieldBorderColor)
          ),
          focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: textfieldBorderColor),
          ),
        ),
      ),
    );
  }
}