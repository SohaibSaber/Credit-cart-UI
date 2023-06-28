import 'package:creditcart/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String appBarTitle;
  final InkWell appBarIcon;
  final String? appBarImage;
  const CustomAppBar({Key? key, required this.appBarTitle, required this.appBarIcon, this.appBarImage = 'assets/images/placeholder.png'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 70,
        width: double.infinity,
        color: kprimeColor,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appBarIcon,
            Text(appBarTitle,style: TextStyle(
              fontSize: 16
            ),),
            Container(
              width: 40,
                height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(appBarImage!)
                )
              ),
            )

          ],
        ),
      ),
    );
  }
}
