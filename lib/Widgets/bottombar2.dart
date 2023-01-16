import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/add_menu.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'package:flutter_application_1/screens/Setting.dart';
import 'dart:math';

String generateRandomString(int len) {
  var r = Random();
  return String.fromCharCodes(
      List.generate(len, (index) => r.nextInt(33) + 89));
}

class bottonbar extends StatefulWidget {
  String? text;
  bottonbar({Key? key, this.text}) : super(key: key);

  @override
  State<bottonbar> createState() => _bottonbarState();
}

class _bottonbarState extends State<bottonbar> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, left: 10.0, right: 10.0),
      height: 80,
      width: 80,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            heroTag: generateRandomString(5),
            // widget.text,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => add()),
              );
            },
            child: const Icon(Icons.add_outlined),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          child: Container(
            child: BottomAppBar(
              // elevation: 10,
              shape: CircularNotchedRectangle(),
              color: Colors.white,
              child: IconTheme(
                data: IconThemeData(
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SetteingPage(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.settings_outlined),
                      ),
                      IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {
                          print("3");
                        },
                        icon: const Icon(Icons.book_outlined),
                        padding: EdgeInsets.only(right: 50.0),
                      ),
                      IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {
                          print("2");
                        },
                        icon: const Icon(Icons.notifications_outlined),
                        padding: EdgeInsets.only(left: 50.0),
                      ),
                      IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {
                          print("1");
                        },
                        icon: const Icon(Icons.person_outline),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
