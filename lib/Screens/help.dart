import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Help"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.call),
            onTap: () {},
            title: Text(
              "Contact Us",
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            title: Text(
              "Visit Site",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(Icons.visibility),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.report),
            onTap: () {},
            title: Text(
              "Report",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
