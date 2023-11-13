import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.grey[600],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.question_mark),
            title: Text(
              "About",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text(
              "Privacy",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text(
              "Security",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Storage",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(Icons.storage),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
