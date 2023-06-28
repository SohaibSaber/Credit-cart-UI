import 'package:creditcart/screens/account/account.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:creditcart/widgets/main-btn.dart';
import 'package:creditcart/widgets/my-login-field.dart';
import 'package:creditcart/widgets/my-nav-bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AddTopUp extends StatelessWidget {
  AddTopUp({Key? key}) : super(key: key);
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
          appBarTitle: 'Top up',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/topuppic.png'),
            SizedBox(height: 15,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    MyLoginField(hint: 'Enter Amount',hintColor: Colors.grey),
                    SizedBox(height: 30,),
                    DottedBorder(
                      strokeWidth: 2,
                      borderType: BorderType.RRect,
                      dashPattern: [3],
                      radius: Radius.circular(8),
                      color: Colors.grey,
                      child: Container(
                        width: 400,
                        height: 179,
                        child: Icon(Icons.add_a_photo_outlined,size: 55,color: Colors.grey,),
                      ),
                    ),
                    SizedBox(height: 220,),
                    InkWell(
                        onTap: () {
                          Get.to(MyNavBar(activePage: 4,));
                        },
                        child: MyMainBtn(btnText: 'Top Up'))
                  ],
                )),

          ],
        ),
      ),
    );
  }
}
