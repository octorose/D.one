import 'package:flutter/material.dart';

class Publicbar extends StatefulWidget {
  Publicbar({Key? key}) : super(key: key);

  @override
  State<Publicbar> createState() => _PublicbarState();
}

class _PublicbarState extends State<Publicbar> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            onPressed: () {
              print("5");
            },
            child: const Icon(Icons.add),
          ),
        ),
        bottomNavigationBar: Container(
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
            color: Colors.white,
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
    );
  }
}
