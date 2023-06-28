import 'package:creditcart/screens/account/account.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:creditcart/widgets/main-btn.dart';
import 'package:creditcart/widgets/my-login-field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ChangePin extends StatelessWidget {
  const ChangePin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(
            double.infinity, 70
        ),
        child: CustomAppBar(
          appBarIcon: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.chevron_left)),
          appBarTitle: 'Change Pin',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/changepasslogo.png'),
            SizedBox(height: 15,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    MyLoginField(hint: 'Current Pin',hintColor: Colors.black),
                    SizedBox(height: 15,),
                    MyLoginField(hint: 'New Pin',hintColor: Colors.black,),
                    SizedBox(height: 15,),
                    MyLoginField(hint: 'Repeat New Pin', hintColor: Colors.black,),
                    SizedBox(height: 270,),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: MyMainBtn(btnText: 'Save'))
                  ],
                )),

          ],
        ),
      ),
    );
  }
}
