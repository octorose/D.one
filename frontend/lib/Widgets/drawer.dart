import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/Setting.dart';
import 'package:flutter_application_1/screens/menu.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    var Userimg = "assets/hatim1.jpeg";
    return Drawer(
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 8, 132, 204),
              image: DecorationImage(
                image: NetworkImage(
                  "https://1.cms.s81c.com/sites/default/files/styles/ibm_cloud_wide_background/public/2020-10-27/Learn%20Leadspace%203.jpg?itok=TA5pjk1g",
                ),
              ),
            ),
            accountName: Text(
              "Octaros",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "Octaros@gmail.ma",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/hatime.png"),
            ),
          ),
          ListTile(
            leading:
                const Icon(Icons.home, color: Color.fromARGB(255, 8, 132, 204)),
            title: const Text('Home', style: TextStyle(fontSize: 16.0)),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => home()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Color.fromARGB(255, 8, 132, 204),
            ),
            title: const Text('Profile', style: TextStyle(fontSize: 16.0)),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => menu(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.co_present,
                color: Color.fromARGB(255, 8, 132, 204)),
            title: const Text('presentation', style: TextStyle(fontSize: 16.0)),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => menu(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications,
                color: Color.fromARGB(255, 8, 132, 204)),
            title: const Text('Notification', style: TextStyle(fontSize: 16.0)),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => menu(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.calendar_today,
              color: Color.fromARGB(255, 8, 132, 204),
            ),
            title: const Text('Calendar', style: TextStyle(fontSize: 16.0)),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SetteingPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Color.fromARGB(255, 8, 132, 204),
            ),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 16.0),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SetteingPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
