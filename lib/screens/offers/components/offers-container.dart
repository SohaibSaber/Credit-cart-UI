import 'package:flutter/material.dart';

class OffersContainer extends StatelessWidget {
  final String myimage;
  final String mytext;
  const OffersContainer({
    super.key, required this.myimage, required this.mytext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 18),
      width: 392,
      height: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black,
            width: 1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(myimage),
              Text(mytext,style: TextStyle(
                fontSize: 16,

              ),)
            ],
          )
        ],
      ),
    );
}
  }
