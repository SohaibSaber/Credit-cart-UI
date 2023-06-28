import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import 'components/my-top-list.dart';
import 'components/offers-container.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  var images = {
    "paperclip.png": "Credit",
    "call.png": "Call",
    "rss.png": "Data",
    "cells.png": "Vimo",
    "react.png": "Linphone",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 70),
        child: CustomAppBar(
            appBarIcon: InkWell(child: Icon(Icons.subject_sharp)),
            appBarTitle: 'Offers',
            appBarImage: 'assets/images/profilepic.png'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            MyTopList(images: images,),
            SizedBox(height: 25,),
            OffersContainer(myimage: "assets/images/rroshan.png",mytext: 'کریدت روشن',),
            SizedBox(height: 15,),
            OffersContainer(myimage: "assets/images/salamicon.png",mytext: 'کریدت سلام',),
            SizedBox(height: 15,),
            OffersContainer(myimage: "assets/images/etsalaticon.png",mytext: 'کریدت اتسالات',),
            SizedBox(height: 15,),
            OffersContainer(myimage: "assets/images/afghanbisimicon.png",mytext: 'کریدت افغان بیسیم',),
            SizedBox(height: 15,),
            OffersContainer(myimage: "assets/images/irancell.png",mytext: 'کریدت ایرانسل',),
          ],
        ),
      ),
    );
  }
}




