import 'package:creditcart/screens/account/account.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:creditcart/widgets/main-btn.dart';
import 'package:creditcart/widgets/my-login-field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: CustomAppBar(
          appBarIcon: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.chevron_left)),
          appBarTitle: 'Edit Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/topup.png'))),
                        ),
                        Positioned(
                            bottom:0 ,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width: 2,color: Colors.white),
                                color: Colors.blue
                              ),
                              child: Icon(Icons.edit,color: Colors.white,),
                            ))
                      ],
                    ),
                    SizedBox(height: 30,),
                    MyLoginField(hint: 'Mohammad Jan Naser',hintColor: Colors.black,),
                    SizedBox(height: 430,),
                    InkWell(
                        onTap: () {
                          Get.to(() => Account());
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
