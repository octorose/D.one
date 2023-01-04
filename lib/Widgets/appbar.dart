import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/background/background.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Image? images;
  final Color backgroundColor;
  CustomAppBar({
    Key? key,
    required this.title,
    required this.backgroundColor,
    this.images,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(120);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 120,
          title: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 265.0),
                child: IconButton(
                  icon: Image.asset(
                    'assets/person.png',
                    fit: BoxFit.contain,
                    height: 45,
                  ),
                  iconSize: 45,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
              Container(
                  child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Good morning',
                      style: TextStyle(
                          color: Color.fromARGB(255, 6, 80, 141), fontSize: 25),
                    ),
                  ),
                  Text(
                    "let's make this day productive",
                    style: TextStyle(
                        color: Color.fromARGB(255, 94, 93, 93), fontSize: 13),
                  )
                ],
              ))
            ],
          ),
          backgroundColor: backgroundColor,
          elevation: 0,
          centerTitle: true,
        ));
  }
}

                          // TextButton(
                          //   onPressed: () {
                          //     Scaffold.of(context).openDrawer();
                          //   },
                          //   child: Text('Good morning'),
                          //   style: TextButton.styleFrom(
                          //     primary: Color.fromARGB(255, 3, 65, 116),
                          //     textStyle: const TextStyle(fontSize: 13),
                          //   ),
                          // ),