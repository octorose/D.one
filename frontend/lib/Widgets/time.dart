import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupert extends StatefulWidget {

  @override
  _CupertState createState() => _CupertState();
}

class _CupertState extends State<Cupert> {
  var value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  "$value"
                ),
              ),
            ),
            CupertinoTimerPicker(
              mode: CupertinoTimerPickerMode.hm,
              onTimerDurationChanged: (value){
                setState(() {
                  this.value = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}