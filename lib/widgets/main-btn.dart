import 'package:flutter/material.dart';

import '../constants.dart';

class MyMainBtn extends StatelessWidget {
  final String btnText;
  const MyMainBtn({
    super.key, required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: kbtnColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(btnText, style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),),
      ),
    );
  }
}