import 'package:creditcart/screens/account/account.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:creditcart/widgets/main-btn.dart';
import 'package:creditcart/widgets/my-login-field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AddCustomer extends StatelessWidget {
  const AddCustomer({Key? key}) : super(key: key);

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
          appBarTitle: 'Add Customer',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/addcustomerlogo.png'),
            SizedBox(height: 15,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    MyLoginField(hint: 'Customer Name',hintColor: Colors.black),
                    SizedBox(height: 15,),
                    MyLoginField(hint: 'Phone Number',hintColor: Colors.black,),
                    SizedBox(height: 15,),
                    MyLoginField(hint: 'password', hintColor: Colors.black,),
                    SizedBox(height: 15,),
                    MyLoginField(hint: 'Re-Enter Password', hintColor: Colors.black,),
                    SizedBox(height: 191,),
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
