import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyTopList extends StatelessWidget {
  const MyTopList({
    super.key,
    required this.images,
  });

  final Map<String, String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Center(
                        child: Image.asset(
                          'assets/images/' + images.keys.elementAt(index),
                          fit: BoxFit.cover,
                          height: 30,
                          width: 30,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, right: 15),
                    child: Text(
                      images.values.elementAt(index),
                      style:
                      TextStyle(color: balancetxtColor, fontSize: 12),
                    ),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}