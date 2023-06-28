import 'package:creditcart/constants.dart';
import 'package:flutter/material.dart';

class SarafiContainer extends StatelessWidget {
  final String name;
  final String address;
  const SarafiContainer({
    super.key, required this.name, required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 400,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              width: 1,
              color: Colors.black
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/whatsap.png'),
              SizedBox(width: 15,),
              Image.asset('assets/images/icon-call.png'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(name,style: TextStyle(
                color: balancetxtColor,
                fontSize: 16
              ),),
              Text(address,
              style: TextStyle(
                color: sarafiTxtColor,
                fontSize: 12
              ),),
            ],
          )
        ],
      ),
    );
  }
}