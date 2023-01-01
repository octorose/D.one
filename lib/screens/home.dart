import 'package:flutter/material.dart';
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
    return LoginPage();
  }
}
