import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/add_menu.dart';
import 'package:flutter_application_1/screens/menu.dart';
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
            child: const Icon(Icons.add),
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
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: BottomAppBar(
              // elevation: 10,
              shape: CircularNotchedRectangle(),
              color: Color.fromARGB(255, 118, 31, 31),
              child: IconTheme(
                data: IconThemeData(
                  color: Colors.blue,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.grey,
                    ),
                  ],
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
                          print("4");
                        },
                        icon: const Icon(Icons.settings),
                      ),
                      IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {
                          print("3");
                        },
                        icon: const Icon(Icons.book),
                        padding: EdgeInsets.only(right: 50.0),
                      ),
                      IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {
                          print("2");
                        },
                        icon: const Icon(Icons.notifications),
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
