import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/bottombar.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Add'),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: drawer(),
        ),
        bottomNavigationBar: Publicbar(),
        body: Center(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            padding: EdgeInsets.all(40.0),
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: <Widget>[
              FloatingActionButton(
                heroTag: "h1",
                onPressed: () {
                  print('10');
                },
                shape: const StadiumBorder(
                    side: BorderSide(color: Colors.blue, width: 4)),
                child: Image(image: AssetImage('assets/Food.png')),
                backgroundColor: Colors.white,
              ),
              FloatingActionButton(
                heroTag: "h2",
                onPressed: () {
                  print('10');
                },
                shape: const StadiumBorder(
                    side: BorderSide(color: Colors.indigo, width: 4)),
                child: Image(image: AssetImage('assets/Sport.png')),
                backgroundColor: Colors.white,
              ),
              FloatingActionButton(
                heroTag: "h3",
                onPressed: () {
                  print('10');
                },
                shape: const StadiumBorder(
                    side: BorderSide(color: Colors.red, width: 4)),
                child: Image(image: AssetImage('assets/Blood.png')),
                backgroundColor: Colors.white,
              ),
              FloatingActionButton(
                heroTag: "h4",
                onPressed: () {
                  print('10');
                },
                shape: const StadiumBorder(
                    side: BorderSide(color: Colors.green, width: 4)),
                child: Image(image: AssetImage('assets/Needle.png')),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
