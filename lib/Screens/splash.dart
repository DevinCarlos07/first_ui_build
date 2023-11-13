import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/home.dart';
import 'package:flutter_application_1/Screens/login.dart';
import 'package:flutter_application_1/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoLogin(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://media.tenor.com/7zKZuIk31GEAAAAM/bird-dance.gif',
            width: 100,
            height: 100,
          ),
          Text(
            "Loading...",
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          )
        ],
      )),
    );
  }

  Future<void> gotoLogin(BuildContext context) async {
    // ignore: no_leading_underscores_for_local_identifiers
    final _shared = await SharedPreferences.getInstance();

    final login = _shared.getBool(Save_Key);
    await Future.delayed(Duration(seconds: 2));
    if (login == null || login == false) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => ScreenLogin()));
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
    }
  }
}
