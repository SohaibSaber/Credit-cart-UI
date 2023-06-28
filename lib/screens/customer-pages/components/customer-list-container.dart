import 'package:flutter/material.dart';

class CustomerListContainer extends StatelessWidget {

  final String customerImage;
  final String customerName;
  final String customerNumber;
  const CustomerListContainer({
    super.key, required this.customerImage, required this.customerName, required this.customerNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
      width: 400,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(customerImage)
                    )
                ),),
              SizedBox(width: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(customerName,
                    style: TextStyle(
                        fontSize: 16
                    ),),
                  Text(customerNumber,
                    style: TextStyle(
                        fontSize: 12
                    ),)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}