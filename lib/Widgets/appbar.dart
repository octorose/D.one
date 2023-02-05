import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  String? greeting = getGreetingTime(DateTime.now());
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
                child: GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage("assets/hatime.png"),
                  ),
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
                      greeting!,
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

String? getGreetingTime(DateTime m) {
  final greetings = {
    'morning': 'Good Morning',
    'evening': 'Good Evening',
    'night': 'Good Afternoon',
  };
  String? g;

  if (m == null) {
    return '';
  }

  int splitAfternoon = 12;
  int splitEvening = 17;
  int currentHour = int.parse(DateFormat('HH').format(m));

  if (currentHour >= splitAfternoon && currentHour <= splitEvening) {
    g = greetings['night'];
  } else if (currentHour >= splitEvening) {
    g = greetings['evening'];
  } else {
    g = greetings['morning'];
  }

  return g;
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