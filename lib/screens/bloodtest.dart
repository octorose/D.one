import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Widgets/appbar.dart';
import 'package:flutter_application_1/Widgets/back_button.dart';
import 'package:flutter_application_1/Widgets/bottombar.dart';
import 'package:flutter_application_1/Widgets/bottombar2.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';
import 'package:flutter_application_1/screens/add_menu.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:math';

class bloodtest extends StatefulWidget {
  bloodtest({super.key});
  @override
  State<bloodtest> createState() => _bloodtestState();
}

String blood = '0';
var c = true;
int r = 0;
int g = 0;
int b = 0;
int op = 1;

// final Color color;
class _bloodtestState extends State<bloodtest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(
            title: 'bloodtest',
            backgroundColor: Color.fromRGBO(250, 250, 250, 1)),
        drawer: Drawer(
          child: drawer(),
        ),
        bottomNavigationBar: bottonbar(),
        body: Stack(
          children: [
            backnext(
              backvisible: "true",
              nextvisible: "true",
              pathback: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => add()));
              },
              pathnext: () {},
            ),
            Center(
              child: Transform(
                transform: Matrix4.rotationY(pi),
                alignment: Alignment.center,
                child: CircularPercentIndicator(
                  radius: 100,
                  lineWidth: 20.0,
                  percent: (int.parse(blood) / 300),
                  progressColor: Color.fromRGBO(r, g, b, 1),
                  backgroundColor: Color.fromRGBO(r, g, b, 0.2),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 130, right: 140),
                child: TextFormField(
                  maxLength: 3,
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: '---',
                    hintStyle: TextStyle(fontSize: 20, letterSpacing: 10),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 0, color: Colors.transparent), //<-- SEE HERE
                    ),
                  ),
                  style: TextStyle(fontSize: 25),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    // for below version 2 use this
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
// for version 2 and greater youcan also use this
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (var value) {
                    setState(
                      () {
                        blood = value;

                        if (value == '') {
                          value = '0';
                          blood = value;
                          print(double.parse(blood));
                          // blood = value;
                        } else {
                          if (double.parse(blood) > 300) {
                            blood = '300';
                          }
                          print(double.parse(blood));
                        }
                        if (double.parse(value) < 140) {
                          r = 0;
                          g = 255;
                          b = 0;
                        } else if (double.parse(value) > 140 &&
                            double.parse(value) < 160) {
                          r = 255;
                          g = 215;
                          b = 0;
                        } else if (double.parse(value) >= 160) {
                          r = 255;
                          g = 0;
                          b = 0;
                        }
                      },
                    );
                  },
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "mg/l",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
