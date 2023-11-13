import 'package:flutter/material.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.grey[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/me.jpg'),
                radius: 120,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Akhil Raj",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Akhilraj20801@gmail.com",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "8943514279",
                style: TextStyle(fontSize: 15),
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                  label: Text("Edit Profile"))
            ],
          ),
        ),
      ),
    );
  }
}
