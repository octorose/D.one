import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:math';

class menu2 extends StatefulWidget {
  const menu2({super.key});

  @override
  State<menu2> createState() => _menu2State();
}

class _menu2State extends State<menu2> {
  List<String> items = ["7d", "14d", "30d", "3mth"];
  int current = 0;
  double data = 0.7;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
          width: double.infinity,
          child: Center(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 25,
              ),
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 10),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      current = index;
                      if (index == 0) {
                        data = 0.7;
                      } else if (index == 1) {
                        data = 0.5;
                      } else if (index == 2) {
                        data = 0.2;
                      } else if (index == 3) {
                        data = 0.9;
                      }
                    });
                  },
                  child: Container(
                    width: (MediaQuery.of(context).size.width / 7),
                    // height: 200,
                    // padding: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      // border: Border(left: pos0==i)
                      color: current == index
                          ? Color.fromARGB(255, 27, 125, 206)
                          : Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      border: current == index
                          ? Border.all(
                              color: Color.fromARGB(255, 219, 218, 218),
                              width: 1)
                          : Border.all(
                              color: Color.fromARGB(255, 116, 194, 230),
                              width: 2),
                      boxShadow: [
                        current == index
                            ? BoxShadow(
                                color: Colors.grey.withOpacity(1),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset:
                                    Offset(3, 3), // changes position of shadow
                              )
                            : BoxShadow(
                                color: Colors.grey.withOpacity(0),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset:
                                    Offset(3, 3), // changes position of shadow
                              )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: current == index
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 25),
                child: Transform(
                  origin: Offset(70, 70),
                  transform: Matrix4.rotationY(pi),
                  child: CircularPercentIndicator(
                    radius: 80,
                    lineWidth: 20.0,
                    percent: data,
                    progressColor: Color.fromARGB(255, 64, 61, 247),
                    backgroundColor: Color.fromARGB(108, 64, 61, 247),
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(50, 100),
              child: Text(
                "${data * 300} mg/l",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 120,
              height: 170,
              margin: EdgeInsets.only(top: 20, left: 180),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 280,
                height: 140,
                margin: EdgeInsets.only(top: 200),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
