import 'package:creditcart/constants.dart';
import 'package:flutter/material.dart';

class AccountScreenPages extends StatelessWidget {
  final IconData firstIcon;
  final String text;
  final IconData? lastIcon;
  const AccountScreenPages({
    super.key, required this.firstIcon, required this.text, this.lastIcon = Icons.chevron_right,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: iconShapeColor
                  ),
                  child: Icon(firstIcon)),
              SizedBox(width: 10,),
              Text(text,style: TextStyle(
                fontSize: 16,
              ),),
            ],
          ),
          Row(
            children: [
              Icon(lastIcon,)
            ],
          )
        ],
      ),
    );
  }
}