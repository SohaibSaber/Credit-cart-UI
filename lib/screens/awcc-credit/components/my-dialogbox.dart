import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../widgets/main-btn.dart';
import '../../../widgets/my-login-field.dart';
import '../../dashboard/components/simcart-container.dart';

class MyDialogBox extends StatelessWidget {
  const MyDialogBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: 390,
        height: 520,
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        child: Column(
          children: [
            Text('Confirmation Message'),
            SizedBox(height: 35,),
            SimcartCredit(
              containerHeight: 88 ,
              containerWidth: 350,
              borderColor: salamborderColor,
              image: 'assets/images/salamicon.png',
              text: 'کریدت کارت 50 افغانی سلام',
            ),
            SizedBox(height: 15,),
            MyLoginField(hint:'Enter Acount ID/phone Number',hintColor: Colors.grey,),
            SizedBox(height: 15,),
            MyLoginField(hint: 'Enter Pin',hintColor: Colors.grey,),
            SizedBox(height: 140,),
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: MyMainBtn(btnText: "Save",)),
          ],
        ),
      ),
    );
  }
}