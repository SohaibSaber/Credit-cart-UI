import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class LanguageDialogbox extends StatelessWidget {
  const LanguageDialogbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        height: 245,
        width: 390,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kprimeColor,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(width: 10,),
                  Text('English'),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.language),
                SizedBox(width: 10,),
                Text('فارسی'),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.language),
                SizedBox(width: 10,),
                Text('پشتو'),
              ],
            ),SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.language),
                SizedBox(width: 10,),
                Text('Turkey'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}