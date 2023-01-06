import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/add_menu.dart';
import 'package:flutter_application_1/screens/background/backgroundLogup.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'background/backgroundLogin.dart';
import 'forms/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "menu": (context) => menu(),
        "add": (context) => add(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Stack(
          children: [
            BackgroundLogup(),
            const LoginForm(),
          ],
        ),
      ),
    );
  }
}
