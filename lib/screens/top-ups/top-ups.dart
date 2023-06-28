import 'package:creditcart/screens/top-ups/components/is-switched-topup-container.dart';
import 'package:creditcart/screens/top-ups/components/topup-container.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:flutter/material.dart';

class TopUps extends StatefulWidget {
  TopUps({Key? key}) : super(key: key);

  @override
  State<TopUps> createState() => _TopUpsState();
}

class _TopUpsState extends State<TopUps> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 70),
        child: CustomAppBar(
            appBarIcon: InkWell(child: Icon(Icons.subject_sharp)),
            appBarTitle: 'TopUps',
            appBarImage: 'assets/images/profilepic.png'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSwitched =! isSwitched;
                });
              },
              child: Column(
                children: [
                  isSwitched ?
                  TopUpContainer(
                      simlogo: 'assets/images/topup.png',
                      closelogo: Icons.hourglass_bottom,
                      titleText: 'Mohammad Jan Naser',
                      number: '0897654321',
                      iconColor: Colors.black) :
                  IsSwitchedContainer(
                      simlogo: 'assets/images/topup.png',
                      closelogo: Icons.hourglass_bottom,
                      titleText: 'Mohammad Jan Naser',
                      number: '0897654321',
                      iconColor: Colors.black),
                ],
              ),
            ),
            SizedBox(height: 10,),
            ]
        ),
      ),
    );
  }
}
