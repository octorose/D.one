import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/add.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'package:flutter_application_1/screens/LoginPage.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';

class home extends StatefulWidget {
  const home({super.key});
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "menu": (context) => menu(),
        "add": (context) => add(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: menu(),
      //insert your home here
      home:LoginPage();
    );
  }
}
