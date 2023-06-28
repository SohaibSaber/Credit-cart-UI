import 'package:flutter/material.dart';

class SimcartCredit extends StatelessWidget {
  final Color borderColor;
  final String image;
  final String text;
  final MainAxisAlignment rowAlign;
  final CrossAxisAlignment columnAlign;
  final String? price;
  final double? containerHeight;
  final double? containerWidth;

  const SimcartCredit({
    super.key,
    required this.borderColor,
    required this.image,
    required this.text,
    this.rowAlign = MainAxisAlignment.spaceBetween,
    this.price = 'قیمت : 50 افغانی',
    this.columnAlign = CrossAxisAlignment.end,
    this.containerHeight = 85,
    this.containerWidth = 392,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 2, color: borderColor),
        color: Colors.transparent,

      ),
      child: Row(
        mainAxisAlignment: rowAlign,
        children: [
          Column(
            children: [
              Image.asset(
                image,
                height: 50,
                width: 50,
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: columnAlign,
            children: [
              Text(text),
              Text(price!),
            ],
          )
        ],
      ),
    );
  }
}
