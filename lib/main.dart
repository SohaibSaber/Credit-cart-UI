import 'package:creditcart/constants.dart';
import 'package:creditcart/screens/login-screen/login-screen.dart';
import 'package:creditcart/widgets/my-nav-bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black.withOpacity(0.002),
        statusBarColor: kprimeColor,
        statusBarIconBrightness: Brightness.dark
    ));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.top]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montagu'
      ),
      home: LoginScreen(),
    );
  }
}


