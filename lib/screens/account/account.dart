import 'package:creditcart/constants.dart';
import 'package:creditcart/screens/customer-pages/add-customer.dart';
import 'package:creditcart/screens/customer-pages/customer-list.dart';
import 'package:creditcart/screens/edit-profile/edit-profile.dart';
import 'package:creditcart/screens/login-screen/login-screen.dart';
import 'package:creditcart/screens/sarafi/sarafi-screen.dart';
import 'package:creditcart/screens/security-pages/change-%20password.dart';
import 'package:creditcart/screens/security-pages/change-pin.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/account-screen-pages.dart';
import 'components/edit-account.dart';
import 'components/language-dialog-box.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 70),
        child: CustomAppBar(
          appBarIcon: InkWell(child: Icon(Icons.subject_sharp)),
          appBarTitle: 'Account',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    Get.to(()=>EditProfile());
                  },
                  child: EditAccount()),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.to(()=>SarafiScreen());
                },
                child: AccountScreenPages(
                  firstIcon: Icons.account_balance,
                  text: "Sarfai",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Get.to(()=>ChangePassword());
                },
                  child: AccountScreenPages(
                      firstIcon: Icons.lock_outline, text: "Change Password")),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Get.to(()=>ChangePin());
                },
                child: AccountScreenPages(
                    firstIcon: Icons.shield_outlined, text: "Change PIN"),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 1,
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  Get.to(()=>AddCustomer());
                },
                child: AccountScreenPages(
                    firstIcon: Icons.person_outline_rounded,
                    text: "Add Customer"),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  Get.to(()=> CustomerList());
                },
                child: AccountScreenPages(
                    firstIcon: Icons.lock_outline, text: "My Customers"),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 1,
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return LanguageDialogbox();
                    },);
                  },
                  child: AccountScreenPages(firstIcon: Icons.language, text: "Language")),
              SizedBox(
                height: 15,
              ),
              AccountScreenPages(
                firstIcon: Icons.sunny,
                text: "Dark Mode",
                lastIcon: Icons.toggle_on_outlined,
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 1,
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              AccountScreenPages(
                  firstIcon: Icons.privacy_tip_outlined,
                  text: "Privacy Policy"),
              SizedBox(
                height: 15,
              ),
              AccountScreenPages(firstIcon: Icons.info_outline, text: "About"),
              SizedBox(
                height: 15,
              ),
              AccountScreenPages(firstIcon: Icons.help_outline, text: "Help"),
              SizedBox(
                height: 15,
              ),
              AccountScreenPages(
                  firstIcon: Icons.rate_review_outlined, text: "Rate Us"),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 1,
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Get.to(()=>LoginScreen());
                },
                child: Container(
                  width: 400,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: ksecondColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}


