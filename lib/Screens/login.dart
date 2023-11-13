// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/home.dart';
import 'package:flutter_application_1/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image.asset(
                  "assets/images/wel.jpg",
                  height: 100,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: "Username",
                      hintText: "Enter your Username",
                      helperText: 'username or email',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                      ),
                      labelStyle:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                      prefixIcon: Icon(Icons.person)),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Password",
                      hintText: "Enter your Password",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                      ),
                      labelStyle:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                      prefixIcon: Icon(Icons.key)),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(150, 40))),
                    onPressed: () {
                      loginCheck(context);
                    },
                    child: Text("Login")),
                TextButton(onPressed: () {}, child: Text("Forget password")),
                Text("Or sign in with"),
                SizedBox(
                  height: 12,
                ),
                //signup or forgot
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/images/g.jpg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          backgroundImage:
                              AssetImage('assets/images/apple.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginCheck(BuildContext ctx) async {
    final _shared = await SharedPreferences.getInstance();
    await _shared.setBool(Save_Key, true);
    final username = _usernameController.text;
    final password = _passwordController.text;
    if (username == 'akhil' && password == '12345') {
      //goto home
      // ignore: use_build_context_synchronously
      Navigator.push(
          ctx, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      //pop up msg
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
        backgroundColor: const Color.fromARGB(255, 241, 25, 9),
        content: Text("username or password not match "),
        duration: Duration(seconds: 3),
      ));
    }
  }
}
