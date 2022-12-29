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
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 2.0),
        height: 90,
        width: 90,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
                  onPressed: () {
                    print("4");
                  },
                  icon: const Icon(Icons.settings),
                ),
                IconButton(
                  onPressed: () {
                    print("3");
                  },
                  icon: const Icon(Icons.book),
                  padding: EdgeInsets.only(right: 30.0),
                ),
                IconButton(
                  onPressed: () {
                    print("2");
                  },
                  icon: const Icon(Icons.notifications),
                  padding: EdgeInsets.only(left: 30.0),
                ),
                IconButton(
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
    );
  }
}
