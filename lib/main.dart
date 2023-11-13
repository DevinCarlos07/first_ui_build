import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/splash.dart';

// ignore: constant_identifier_names
const Save_Key = 'userlogin';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "eXPLORER",
      home: ScreenSplash(),
    );
  }
}
