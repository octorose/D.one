import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/bottombar2.dart';
import 'package:flutter_application_1/Widgets/Slide.dart';
import 'package:flutter_application_1/screens/menu.dart';

class SetteingPage extends StatefulWidget {
  String? username;

  SetteingPage({
    this.username,
  });

  @override
  State<SetteingPage> createState() => _SetteingPageState();
}

class _SetteingPageState extends State<SetteingPage> {
  @override
  Widget build(BuildContext context) {
    var Userimg = "assets/hatime.png";
    print(widget.username);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50.0),
            alignment: Alignment.center,
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
            height: 580,
            margin: EdgeInsets.only(
              top: 30.0,
              left: 10.0,
              right: 10.0,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(153, 158, 158, 158).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(3, 0), // changes position of shadow
                ),
              ],
              color: Color.fromARGB(185, 255, 255, 255),
              // color: Color.fromRGBO(181, 215, 243, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)),
            ),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Octaros",
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
                  height: 60.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(185, 255, 255, 255),
                        Color.fromARGB(255, 6, 80, 141),
                      ],
                    ),
                    color: Color.fromRGBO(181, 215, 243, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 6, 80, 141),
                        child: Icon(Icons.person_outline_rounded),
                      ),
                      title: Text(
                        'Account',
                        style: TextStyle(
                          color: Color.fromARGB(255, 6, 80, 141),
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
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 60.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(185, 255, 255, 255),
                        Color.fromARGB(255, 6, 80, 141),
                      ],
                    ),
                    color: Color.fromRGBO(181, 215, 243, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 6, 80, 141),
                        child: Icon(Icons.notifications_none_outlined),
                      ),
                      title: Text(
                        'Notifications',
                        style: TextStyle(
                          color: Color.fromARGB(255, 6, 80, 141),
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
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 60.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(185, 255, 255, 255),
                        Color.fromARGB(255, 6, 80, 141),
                      ],
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 6, 80, 141),
                        child: Icon(Icons.privacy_tip_outlined),
                      ),
                      title: Text(
                        'Privacy',
                        style: TextStyle(
                          color: Color.fromARGB(255, 6, 80, 141),
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
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 60.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(185, 255, 255, 255),
                        Color.fromARGB(255, 6, 80, 141),
                      ],
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 6, 80, 141),
                        child: Icon(Icons.health_and_safety_outlined),
                      ),
                      title: Text(
                        'Health',
                        style: TextStyle(
                          color: Color.fromARGB(255, 6, 80, 141),
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
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  child: const Image(
                    height: 70,
                    width: 70,
                    // hat hana logo d-one
                    image: AssetImage('assets/logo1.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.center,
                  child: const Text(
                    "Our Terms of Service",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 4, 84, 134),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottonbar(),
    );
  }
}
