import 'package:creditcart/screens/account/account.dart';
import 'package:creditcart/screens/dashboard/Dashboard.dart';
import 'package:creditcart/screens/my-orders/my-order-screen.dart';
import 'package:creditcart/screens/offers/offers-screen.dart';
import 'package:creditcart/screens/top-ups/top-ups.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MyNavBar extends StatefulWidget {
  int activePage;
   MyNavBar({
    super.key, this.activePage = 0,
  });

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  List<dynamic> _page = [
    Dashboard(),
    Offers(),
    MyOrders(),
    TopUps(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index:widget.activePage,
        items: [
          Icon(Icons.home),
          Icon(Icons.card_giftcard),
          Icon(Icons.archive_outlined),
          Icon(Icons.storefront_sharp),
          Icon(Icons.person_outline_rounded),
        ],
        height: 70,
        backgroundColor: Colors.transparent,
        color: kprimeColor,
        animationDuration: Duration(milliseconds: 200),
        onTap: (index){
          setState(() {
            widget.activePage =index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Container(
        child: _page[widget.activePage],
      ),
    );
  }
}
