import 'package:flutter/material.dart';

import '../../../constants.dart';

class OrderContainer extends StatelessWidget {
  final String simlogo;
  final IconData closelogo;
  final String titleText;
  final String number;
  final Color containerColor;
  final Color borderColor;
  final String price;
  final String cost;
  final Color iconColor;

  const OrderContainer({
    super.key,
    required this.simlogo,
    required this.closelogo,
    required this.titleText,
    required this.number,
    required this.containerColor,
    required this.borderColor,
    required this.price,
    required this.cost, required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 400,
      height: 120,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [Image.asset(simlogo)],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleText,
                    style: TextStyle(color: balancetxtColor, fontSize: 16),
                  ),
                  Text(
                    number,
                    style: TextStyle(color: balancetxtColor, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Icon(closelogo,color: iconColor,),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/monryicon.png'),
              SizedBox(
                width: 10,
              ),
              Text(
                'Price: ',
                style: TextStyle(
                  color: balancetxtColor,
                  fontSize: 12,
                ),
              ),
              Text(
                price,
                style: TextStyle(
                  color: balancetxtColor,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset('assets/images/monryicon.png'),
              SizedBox(
                width: 10,
              ),
              Text(
                'Cost: ',
                style: TextStyle(
                  color: balancetxtColor,
                  fontSize: 12,
                ),
              ),
              Text(
                cost,
                style: TextStyle(
                  color: balancetxtColor,
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
