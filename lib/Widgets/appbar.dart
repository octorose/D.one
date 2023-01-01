import 'package:flutter/material.dart';

class appbarr extends StatefulWidget {
  const appbarr({super.key});

  @override
  State<appbarr> createState() => _appbarrState();
}

class _appbarrState extends State<appbarr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: const Text('Menu'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
