// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/help.dart';
import 'package:flutter_application_1/Screens/login.dart';
import 'package:flutter_application_1/Screens/profile.dart';
import 'package:flutter_application_1/Screens/settings.dart';
import 'package:flutter_application_1/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  var like = Colors.black;
  var like1 = Colors.black;
  var like2 = Colors.black;
  var like3 = Colors.black;
  var like4 = Colors.black;
  var like5 = Colors.black;

  void change() {
    setState(() {
      if (like == Colors.black) {
        like = const Color.fromARGB(255, 209, 24, 11);
      } else {
        like = Colors.black;
      }
    });
  }

  void change1() {
    setState(() {
      if (like1 == Colors.black) {
        like1 = const Color.fromARGB(255, 209, 24, 11);
      } else {
        like1 = Colors.black;
      }
    });
  }

  void change2() {
    setState(() {
      if (like2 == Colors.black) {
        like2 = const Color.fromARGB(255, 209, 24, 11);
      } else {
        like2 = Colors.black;
      }
    });
  }

  void change3() {
    setState(() {
      if (like3 == Colors.black) {
        like3 = const Color.fromARGB(255, 209, 24, 11);
      } else {
        like3 = Colors.black;
      }
    });
  }

  void change4() {
    setState(() {
      if (like4 == Colors.black) {
        like4 = const Color.fromARGB(255, 209, 24, 11);
      } else {
        like4 = Colors.black;
      }
    });
  }

  void change5() {
    setState(() {
      if (like5 == Colors.black) {
        like5 = const Color.fromARGB(255, 209, 24, 11);
      } else {
        like5 = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[600],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              accountName: Text(
                "__doctor.strange_",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              accountEmail: Text(
                "Akhilraj20801@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/me.jpg'),
              ),
            ),
            ListTile(
                leading: Icon(Icons.person),
                iconColor: Colors.white,
                title: Text(
                  "Profile",
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ScreenProfile()));
                }),
            ListTile(
                leading: Icon(Icons.settings),
                iconColor: Colors.white,
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Settings()));
                }),
            ListTile(
                leading: Icon(Icons.help),
                iconColor: Colors.white,
                title: Text(
                  "Help",
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => HelpScreen()));
                }),
            ListTile(
              leading: Icon(Icons.logout),
              iconColor: Colors.white,
              title: Text("Sign Out", style: TextStyle(fontSize: 18)),
              textColor: Colors.white,
              onTap: () {
                LogoutBox(context);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("eXPLORER"),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        //button action
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        elevation: 10,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      akhil(context);
                    },
                    title: Text("Akhil Raj"),
                    subtitle: Text("Just now"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/me.jpg'),
                    ),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ),
                  ListTile(
                    title: Text("Stay Hungry!! Stay Foolish!!"),
                  ),
                  Image.asset('assets/images/me.jpg'),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          change();
                        },
                        icon: Icon(Icons.thumb_up),
                        color: like,
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.comment_rounded)),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Brototype"),
                    subtitle: Text("1minute ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/broavt.jpg'),
                    ),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ),
                  ListTile(
                    title: Text("A Device with 6 core GB Storage!"),
                  ),
                  Image.asset('assets/images/bro1.jpg'),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          change1();
                        },
                        icon: Icon(Icons.thumb_up),
                        color: like1,
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.comment_rounded)),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Apple"),
                      subtitle: Text("5 minutes ago"),
                      leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/apple.jpg")),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_vert)),
                    ),
                    ListTile(
                      title: Text("15 Series Lauched"),
                    ),
                    Image.asset("assets/images/apple15.jpg"),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            change2();
                          },
                          icon: Icon(Icons.thumb_up),
                          color: like2,
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.comment_rounded))
                      ],
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Lch"),
                      subtitle: Text("20 minutes ago"),
                      leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/lch.jpg")),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_vert)),
                    ),
                    ListTile(
                      title: Text("PhotoLab"),
                    ),
                    Image.asset("assets/images/lch.jpg"),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            change3();
                          },
                          icon: Icon(Icons.thumb_up),
                          color: like3,
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.comment_rounded))
                      ],
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Biker"),
                      subtitle: Text("1 hour ago"),
                      leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/biker.jpg")),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_vert)),
                    ),
                    ListTile(
                      title: Text("R15 Vertion 3"),
                    ),
                    Image.asset("assets/images/biker.jpg"),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            change4();
                          },
                          icon: Icon(Icons.thumb_up),
                          color: like4,
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.comment_rounded))
                      ],
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }

  void LogoutBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text('Logout'),
              content: Text('Do you want to leave ?'),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Logouting(context);
                    },
                    child: Text('YES')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('NO')),
              ]);
        });
  }

  void Logouting(BuildContext ctx) async {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => ScreenLogin()));
    // ignore: no_leading_underscores_for_local_identifiers
    final _shared = await SharedPreferences.getInstance();
    _shared.setBool(Save_Key, false);
  }

  void akhil(BuildContext context) {
    CircleAvatar(
      backgroundImage: AssetImage('assets/images/me.jpg'),
    );
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("akhil raj"),
            content: CircleAvatar(
                backgroundImage: AssetImage('assets/images/me.jpg')),
          );
        });
  }
}
