import 'package:flutter/material.dart';

import '../../../constants.dart';

class IsSwitchedContainer extends StatelessWidget {
  final String simlogo;
  final IconData closelogo;
  final String titleText;
  final String number;

  final Color iconColor;

  const IsSwitchedContainer({
    super.key,
    required this.simlogo,
    required this.closelogo,
    required this.titleText,
    required this.number,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 400,
      height: 179,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    simlogo,
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  )
                ],
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '20,000 AF',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 35,
              ),
              Column(
                children: [
                  Icon(
                    closelogo,
                    color: iconColor,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 37,
                width: 140,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Reject'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              SizedBox(width: 10,),
              SizedBox(
                height: 37,
                width: 140,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Accept'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
