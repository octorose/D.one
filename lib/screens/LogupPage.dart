import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'background/backgroundLogup.dart';
import 'forms/LogupForm.dart';

class LogupPage extends StatefulWidget {
  const LogupPage({super.key});

  @override
  State<LogupPage> createState() => _LogupPageState();
}

class _LogupPageState extends State<LogupPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Stack(
          children: [
            BackgroundLogup(),
            const LogupForm(),
          ],
        ),
      ),
    );
  }
}
