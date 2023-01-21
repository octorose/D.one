import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
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
              "Octaros@kanhana.ma",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTRgLADYMKqWTxnKRAcgCI9PvY0Mq1JZXDFCAfsX68DWfWHZx8ZqqC8BM7MhaURnsi57I&usqp=CAU"),
            ),
          ),
          ListTile(
            leading:
                const Icon(Icons.home, color: Color.fromARGB(255, 8, 132, 204)),
            title: const Text('Home', style: TextStyle(fontSize: 16.0)),
            onTap: () {
              Navigator.pushNamed(context, 'home');
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.mail, color: Color.fromARGB(255, 8, 132, 204)),
            title: const Text('presentation', style: TextStyle(fontSize: 16.0)),
            onTap: () {
              Navigator.pushNamed(context, 'mail');
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.send, color: Color.fromARGB(255, 8, 132, 204)),
            title: const Text('Notification', style: TextStyle(fontSize: 16.0)),
            onTap: () {
              Navigator.pushNamed(context, 'sendItem');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Color.fromARGB(255, 8, 132, 204),
            ),
            title: const Text('Profile', style: TextStyle(fontSize: 16.0)),
            onTap: () {
              Navigator.pushNamed(context, 'profile');
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
              Navigator.pushNamed(context, 'settings');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.calendar_today,
              color: Color.fromARGB(255, 8, 132, 204),
            ),
            title: const Text('Calendar', style: TextStyle(fontSize: 16.0)),
            onTap: () {
              Navigator.pushNamed(context, 'calendar');
            },
          ),
        ],
      ),
    );
  }
}

Widget myList(String title, IconData Ico, int num) {
  return Builder(builder: (context) {
    return ListTile(
        leading: Icon(
          Ico,
          color: Colors.blue,
        ),
        title: Text(title),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          // switch (num) {
          //   case 0:
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => homep()),
          //     );
          //     break;
          //   case 1:
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => inbox()),
          //     );
          //     break;
          //   case 2:
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => senditems()),
          //     );
          //     break;
          //   case 3:
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => profile()));
          //     break;
          //   case 4:
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => settings()));
          //     break;
          //   case 5:
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => calendar()));
          //     break;
          // }
        });
  });
}
