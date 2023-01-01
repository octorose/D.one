import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/bottombar.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: drawer(),
        ),
        bottomNavigationBar: Publicbar(
          text: "add1",
        ),
      ),
    );
  }
}
