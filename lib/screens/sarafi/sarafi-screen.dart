import 'package:creditcart/screens/account/account.dart';
import 'package:creditcart/screens/sarafi/components/sarafi-container.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:creditcart/widgets/main-btn.dart';
import 'package:creditcart/widgets/my-login-field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SarafiScreen extends StatelessWidget {
  const SarafiScreen({Key? key}) : super(key: key);

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
          appBarTitle: 'Sarafi',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SarafiContainer(name: "صرافی حاجی یعقوب", address: "آدرس: کارته چهار کابل افغانستان"),
                    SizedBox(height: 15,),
                    SarafiContainer(name: "صرافی حاجی یعقوب", address: "آدرس: کارته چهار کابل افغانستان"),
                    SizedBox(height: 15,),
                    SarafiContainer(name: "صرافی حاجی یعقوب", address: "آدرس: کارته چهار کابل افغانستان"),
                    SizedBox(height: 15,),
                    SarafiContainer(name: "صرافی حاجی یعقوب", address: "آدرس: کارته چهار کابل افغانستان"),
                    SizedBox(height: 15,),
                    SarafiContainer(name: "صرافی حاجی یعقوب", address: "آدرس: کارته چهار کابل افغانستان"),
                    SizedBox(height: 15,),

                  ],
                )),

          ],
        ),
      ),
    );
  }
}
