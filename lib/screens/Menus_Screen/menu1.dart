import 'package:flutter/material.dart';
import 'package:horizontal_center_date_picker/datepicker_controller.dart';
import 'package:horizontal_center_date_picker/horizontal_date_picker.dart';

class menu1 extends StatefulWidget {
  const menu1({super.key});

  @override
  State<menu1> createState() => _menu1State();
}

class _menu1State extends State<menu1> {
  DatePickerController _datePickerController = DatePickerController();
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    DateTime startDate = now.subtract(Duration(days: 14));
    DateTime endDate = now.add(Duration(days: 0));
    // print('startDate = $startDate ; endDate = $endDate');
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 65,
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
                padding: EdgeInsets.only(top: 10),
                child: HorizontalDatePickerWidget(
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
                ),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: GridView.count(
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
            ],
          ),
        )
      ],
    );
  }
}
