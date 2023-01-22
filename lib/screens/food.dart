import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/yum.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  TextEditingController editingController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    // Yum yum = Yum(

    return new Scaffold(
      appBar: new AppBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
              child: TextField(
                onChanged: (value) {
                 
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
