import 'package:creditcart/screens/account/account.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:creditcart/widgets/main-btn.dart';
import 'package:creditcart/widgets/my-login-field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../account/components/account-screen-pages.dart';
import '../../security-pages/change- password.dart';
import '../../security-pages/change-pin.dart';
import 'customer-list-container.dart';


class CustomerEditProf extends StatelessWidget {
  const CustomerEditProf({Key? key}) : super(key: key);

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
            appBarTitle: 'My Customers',
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 35),
          child: Column(
            children: [
              CustomerListContainer(
                customerImage: 'assets/images/topup.png',
                customerName: 'Samir Sorosh',
                customerNumber: '07912345678',
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
            ],

          ),
        ));
  }
}
