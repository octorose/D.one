import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/appbar.dart';
import 'package:flutter_application_1/Widgets/bottombar.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';
import 'package:tab_container/tab_container.dart';
import 'package:horizontal_center_date_picker/datepicker_controller.dart';
import 'package:horizontal_center_date_picker/horizontal_date_picker.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  List<String> items = ["Daily", "Average"];
  int pos0 = 0;
  int pos1 = 1;
  int current = 0;
  DatePickerController _datePickerController = DatePickerController();
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    DateTime startDate = now.subtract(Duration(days: 14));
    DateTime endDate = now.add(Duration(days: 0));
    print('startDate = $startDate ; endDate = $endDate');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(
          title: 'menu',
          backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        ),
        drawer: const Drawer(
          child: drawer(),
        ),
        bottomNavigationBar: Publicbar(),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
            height: 495,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: Container(
                          width: (MediaQuery.of(context).size.width / 2) - 20,
                          // height: 200,
                          // padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            // border: Border(left: pos0==i)
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              topLeft: pos0 == index
                                  ? Radius.circular(20)
                                  : Radius.circular(0),
                              topRight: pos1 == index
                                  ? Radius.circular(20)
                                  : Radius.circular(0),
                            ),
                            border: current == index
                                ? null
                                : Border.all(
                                    color: Color.fromARGB(255, 219, 218, 218),
                                    width: 2),
                          ),
                          child: Center(
                            child: Text(
                              items[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: current == index
                                    ? Color.fromARGB(255, 6, 80, 141)
                                    : Color.fromARGB(255, 102, 102, 102),
                                fontSize: 20,
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
                Container(
                  width: double.infinity,
                  height: 75,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 20),
                        // color: Colors.white,
                        // decoration: BoxDecoration(
                        //   // color: Color.fromARGB(255, 255, 255, 255),
                        //   borderRadius: BorderRadius.only(
                        //     bottomLeft: Radius.circular(20),
                        //     bottomRight: Radius.circular(20),
                        //   ),
                        // ),
                        child: pos0 == current
                            ? HorizontalDatePickerWidget(
                                locale: 'en',
                                selectedColor: Color.fromRGBO(38, 153, 251, 1),
                                normalTextColor: Color.fromRGBO(16, 39, 90, 1),
                                width: 55,
                                height: 55,
                                startDate: startDate,
                                endDate: endDate,
                                selectedDate: now,
                                widgetWidth: MediaQuery.of(context).size.width,
                                datePickerController: _datePickerController,
                                onValueSelected: (date) {
                                  print('selected = ${date.toIso8601String()}');
                                },
                              )
                            : null,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 370,
                  padding: EdgeInsets.only(top: 20),
                  child: pos0 == current
                      ? GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          padding: EdgeInsets.all(10.0),
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                          children: [
                            GestureDetector(
                              onTap: () {
                                print("nutrition");
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => const Nutrition(),
                                //     ),
                                //   );
                                // },
                              },
                              child: SizedBox(
                                width: 170,
                                height: 170,
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Nutrition",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(16, 39, 90, 1),
                                      ),
                                    ),
                                  ),
                                  color: Color.fromRGBO(124, 217, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print("physical activities");
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => const Nutrition(),
                                //     ),
                                //   );
                                // },
                              },
                              // ignore: prefer_const_constructors
                              child: SizedBox(
                                width: 170,
                                height: 170,
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Physical Activities",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(16, 39, 90, 1),
                                      ),
                                    ),
                                  ),
                                  color: Color.fromRGBO(165, 174, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print("glucose");
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => const Nutrition(),
                                //     ),
                                //   );
                                // },
                              },
                              child: SizedBox(
                                width: 170,
                                height: 170,
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Glucose",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(16, 39, 90, 1),
                                      ),
                                    ),
                                  ),
                                  color: Color.fromRGBO(255, 163, 163, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print("insuline");
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => const Nutrition(),
                                //     ),
                                //   );
                                // },
                              },
                              child: SizedBox(
                                width: 170,
                                height: 170,
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Insuline",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(16, 39, 90, 1),
                                      ),
                                    ),
                                  ),
                                  color: Color.fromRGBO(188, 244, 204, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
