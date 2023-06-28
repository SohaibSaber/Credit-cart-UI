import 'package:creditcart/constants.dart';
import 'package:creditcart/widgets/custom-appbar.dart';
import 'package:flutter/material.dart';

import 'components/order-container.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery
            .of(context)
            .size
            .width, 70),
        child: CustomAppBar(
            appBarIcon: InkWell(child: Icon(Icons.subject_sharp)),
            appBarTitle: 'My Orders',
            appBarImage: 'assets/images/profilepic.png'
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            OrderContainer(simlogo: 'assets/images/salamiconround.png',
                closelogo: Icons.hourglass_bottom,
                iconColor: Colors.black,
                titleText: '10 GB Data + 100 SMS ',
                number: '0897654321',
                containerColor: salamShapeColor,
                borderColor: salamborderColor,
                price: "988",
                cost: "988"),
            SizedBox(height: 20,),
            OrderContainer(simlogo: 'assets/images/roshanround.png',
                closelogo: Icons.close,
                iconColor: Colors.red,
                titleText: '10 GB Data + 100 SMS ',
                number: '0897654321',
                containerColor: roshanShapeColor,
                borderColor: afghanbisimBorderColor,
                price: "988",
                cost: "988"),
            SizedBox(height: 20,),
            OrderContainer(simlogo: 'assets/images/etsalat.png',
                closelogo: Icons.check,
                iconColor: Colors.green,
                titleText: '10 GB Data + 100 SMS ',
                number: '0897654321',
                containerColor: etsalatShapeColor,
                borderColor: etsalatBorderColor,
                price: "988",
                cost: "988"),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

}
