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
        children: [
          myList("Home", Icons.home, 0),
          myList("Inbox", Icons.mail, 1),
          myList("Sent Items", Icons.send, 2),
          myList("Profile", Icons.person, 3),
          myList("Settings", Icons.settings, 4),
          myList("Calendar", Icons.calendar_today, 5),
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
