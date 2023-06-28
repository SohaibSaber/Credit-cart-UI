import 'package:creditcart/screens/account/account.dart';
import 'package:creditcart/screens/customer-pages/components/customer-edit-profile.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:creditcart/widgets/main-btn.dart';
import 'package:creditcart/widgets/my-login-field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/customer-list-container.dart';

class CustomerList extends StatelessWidget {
  const CustomerList({Key? key}) : super(key: key);

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
              InkWell(
                onTap: () {
                  Get.to(()=>CustomerEditProf());
                },
                child: CustomerListContainer(
                  customerImage: 'assets/images/topup.png',
                  customerName: 'Samir Sorosh',
                  customerNumber: '07912345678',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomerListContainer(
                customerImage: 'assets/images/topup.png',
                customerName: 'Samir Sorosh',
                customerNumber: '07912345678',
              ),
              SizedBox(
                height: 15,
              ),
              CustomerListContainer(
                customerImage: 'assets/images/topup.png',
                customerName: 'Samir Sorosh',
                customerNumber: '07912345678',
              ),
              SizedBox(
                height: 15,
              ),
              CustomerListContainer(
                customerImage: 'assets/images/topup.png',
                customerName: 'Samir Sorosh',
                customerNumber: '07912345678',
              ),
              SizedBox(
                height: 15,
              ),
            ],

          ),
        ));
  }
}
