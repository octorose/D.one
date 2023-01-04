import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Widgets/appbar.dart';
import 'package:flutter_application_1/Widgets/bottombar.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';
import 'package:flutter_application_1/screens/add_menu.dart';
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
        appBar: CustomAppBar(title: 'bloodtest', backgroundColor: Colors.white),
        drawer: Drawer(
          child: drawer(),
        ),
        bottomNavigationBar: Publicbar(),
        body: Stack(
          children: [
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => add()));
              },
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0.5, 0.5),
                    blurRadius: 0.5,
                    color: Color.fromARGB(255, 6, 80, 141),
                  ),
                ],
              ),
              label: Text(
                'back',
                style: TextStyle(
                  color: Color.fromARGB(255, 6, 80, 141),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.5, 0.5),
                      blurRadius: 0.5,
                      color: Color.fromARGB(255, 6, 80, 141),
                    ),
                  ],
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 6, 80, 141),
                side: BorderSide(color: Colors.transparent),
              ),
            ),
            Positioned(
              right: 0,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => add()));
                },
                label: Row(
                  children: [
                    Text(
                      'next',
                      style: TextStyle(
                        color: Color.fromARGB(255, 6, 80, 141),
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0.5, 0.5),
                            blurRadius: 0.5,
                            color: Color.fromARGB(255, 6, 80, 141),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.5, 0.5),
                          blurRadius: 0.5,
                          color: Color.fromARGB(255, 6, 80, 141),
                        ),
                      ],
                    ),
                  ],
                ),
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.transparent,
                ),
                style: OutlinedButton.styleFrom(
                  primary: Color.fromARGB(255, 6, 80, 141),
                  side: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            Center(
              child: Transform(
                transform: Matrix4.rotationY(pi),
                alignment: Alignment.center,
                child: CircularPercentIndicator(
                  radius: 100,
                  lineWidth: 20.0,
                  percent: (int.parse(blood) / 100),
                  progressColor: Color.fromRGBO(r, g, b, 1),
                  backgroundColor: Color.fromRGBO(r, g, b, 0.2),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 160, right: 175),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: '- - -',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 0, color: Colors.transparent), //<-- SEE HERE
                    ),
                  ),
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
                          if (double.parse(blood) > 100) {
                            blood = '100';
                          }
                          print(double.parse(blood));
                        }
                        if (double.parse(value) < 45) {
                          r = 0;
                          g = 255;
                          b = 0;
                        } else if (double.parse(value) < 70) {
                          r = 191;
                          g = 149;
                          b = 33;
                        } else {
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
                child: Text("mg/l"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
