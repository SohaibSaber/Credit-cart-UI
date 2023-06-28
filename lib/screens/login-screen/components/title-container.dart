import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleContainer extends StatelessWidget {
  final String title;
  const TitleContainer({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 69,
      color: kprimeColor,
      child: Center(
        child: Text(title,style: TextStyle(
            fontSize: 16
        ),

        ),
      ),
    );
  }
}