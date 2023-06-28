import 'package:flutter/material.dart';

class EditAccount extends StatelessWidget {
  const EditAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
      width: 400,
      height: 89,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/accountprof.png'),
              SizedBox(width: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mohammad Jan Naser',
                    style: TextStyle(
                        fontSize: 16
                    ),),
                  Text('0700746267',
                    style: TextStyle(
                        fontSize: 12
                    ),)
                ],
              ),
              SizedBox(width: 50,),
              Column(
                children: [
                  Icon(Icons.edit,color: Colors.grey,),
                ],
              ),                      ],
          )
        ],
      ),
    );
  }
}