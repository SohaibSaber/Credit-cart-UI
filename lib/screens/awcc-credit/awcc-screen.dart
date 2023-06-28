import 'package:creditcart/screens/account/account.dart';
import 'package:creditcart/screens/dashboard/components/simcart-container.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:creditcart/widgets/main-btn.dart';
import 'package:creditcart/widgets/my-login-field.dart';
import 'package:creditcart/widgets/my-nav-bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import 'components/my-dialogbox.dart';
class AwccCredit extends StatelessWidget {
  const AwccCredit({Key? key}) : super(key: key);

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
                Get.to(MyNavBar(activePage: 4,));
              },
              child: Icon(Icons.chevron_left)),
          appBarTitle: 'AWCC Credit',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return MyDialogBox();
                        },);
                      },
                      child: SimcartCredit(
                        borderColor: salamborderColor,
                        image: 'assets/images/salamicon.png',
                        text: 'کریدت کارت 50 افغانی سلام',
                      ),
                    ),
                    SizedBox(height: 10,),
                    SimcartCredit(
                        borderColor: etsalatBorderColor,
                        image: 'assets/images/etsalaticon.png',
                        text: 'کریدت کارت 50 افغانی سلام'),
                    SizedBox(height: 10,),
                    SimcartCredit(
                        borderColor: afghanbisimBorderColor,
                        image: 'assets/images/afghanbisimicon.png',
                        text: 'کریدت کارت 50 افغانی سلام'),
                    SizedBox(height: 10,),
                    SimcartCredit(
                      columnAlign: CrossAxisAlignment.start,
                      borderColor: salamborderColor,
                      image: 'assets/images/salamicon.png',
                      text: '10 GB Etisalat Data',rowAlign: MainAxisAlignment.start,
                      price: '400Af',
                    ),
                    SizedBox(height: 10,),
                    SimcartCredit(
                      columnAlign: CrossAxisAlignment.start,
                        price: '400Af',
                      rowAlign: MainAxisAlignment.start,
                        borderColor: etsalatBorderColor,
                        image: 'assets/images/etsalaticon.png',
                        text: '10 GB Etisalat Data'),
                    SizedBox(height: 10,),
                    SimcartCredit(
                      columnAlign: CrossAxisAlignment.start,
                        price: '400Af',
                      rowAlign: MainAxisAlignment.start,
                        borderColor: afghanbisimBorderColor,
                        image: 'assets/images/afghanbisimicon.png',
                        text: '10 GB Etisalat Data'),
                  ],
                )),

          ],
        ),
      ),
    );
  }
}


