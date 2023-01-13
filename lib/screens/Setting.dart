import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/bottombar2.dart';

class SetteingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(181, 215, 243, 1),
      body: Container(
        height: 700,
        margin: EdgeInsets.only(
          top: 100.0,
          left: 10.0,
          right: 10.0,
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 136, 51, 51),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/hatim1.jpeg'),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),
              child: ListTile(
                title: Text('Account'),
                trailing: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person_outline_rounded),
                ),
                onTap: () {
                  // Do something when the ListTile is tapped
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.notifications_none_outlined),
                ),
                title: Text('Notifications'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Do something when the ListTile is tapped
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.privacy_tip_outlined),
                ),
                title: Text('Privacy'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Do something when the ListTile is tapped
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.health_and_safety_outlined),
                ),
                title: Text('Health'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Do something when the ListTile is tapped
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottonbar(),
    );
  }
}
