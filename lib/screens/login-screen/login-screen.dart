import 'package:creditcart/screens/dashboard/Dashboard.dart';
import 'package:creditcart/widgets/my-nav-bar.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/main-btn.dart';
import '../../widgets/my-login-field.dart';
import 'components/title-container.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleContainer(title: 'Login',),
              Container(
                height: 184,
                width: double.infinity,
                color: ksecondColor,
                child: Center(
                  child: Image.asset('assets/images/Launching.png'),
                ),
              ),
              SizedBox(height: 32,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi Mate',style: TextStyle(
                      fontFamily: 'Montagu',
                      fontSize: 16,
                      color: primeTxtColor
                    ),),
                    SizedBox(height: 10,),
                    Text('Sign In Now',style: TextStyle(
                        fontFamily: 'Montagu',
                        fontSize: 24,
                        color: Colors.black
                    ),),
                    SizedBox(height: 40,),
                    MyLoginField(hint: 'Enter Phone Number'),
                    SizedBox(height: 10,),
                    MyLoginField(hint: 'Enter Password'),
                    SizedBox(height: 20,),
                    InkWell(
                        onTap: ()
                        {Get.to(()=> MyNavBar());
                          },
                        child: MyMainBtn(btnText: 'Login',)),
                    SizedBox(height: 40,),
                    Center(child: Text('Or Contact US',)),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/whatsap.png'),
                        SizedBox(width: 15,),
                        Image.asset('assets/images/icon-call.png'),
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}








