import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/bottombar2.dart';
import 'package:flutter_application_1/Widgets/Slide.dart';

class SetteingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Userimg = "assets/hatim1.jpeg";
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 700,
        margin: EdgeInsets.only(
          top: 100.0,
          left: 10.0,
          right: 10.0,
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(181, 215, 243, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 6, 80, 141),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        Userimg,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(181, 215, 243, 1),
                    Color.fromARGB(255, 151, 199, 239),
                    Color.fromARGB(255, 6, 80, 141),
                  ],
                ),
                color: Color.fromRGBO(181, 215, 243, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person_outline_rounded),
                ),
                title: Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  // Do something when the ListTile is tapped
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(181, 215, 243, 1),
                    Color.fromARGB(255, 6, 80, 141),
                  ],
                ),
                color: Color.fromRGBO(181, 215, 243, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.notifications_none_outlined),
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  // Do something when the ListTile is tapped
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(181, 215, 243, 1),
                    Color.fromARGB(255, 6, 80, 141),
                  ],
                ),
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
                title: Text(
                  'Privacy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  // Do something when the ListTile is tapped
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(181, 215, 243, 1),
                    Color.fromARGB(255, 6, 80, 141),
                  ],
                ),
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
                title: Text(
                  'Health',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
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
