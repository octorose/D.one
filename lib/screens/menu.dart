import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/appbar.dart';
import 'package:flutter_application_1/Widgets/bottombar2.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';
import 'package:flutter_application_1/screens/Menus_Screen/menu1.dart';
import 'package:flutter_application_1/screens/Menus_Screen/menu2.dart';
import 'package:horizontal_center_date_picker/datepicker_controller.dart';

class menu extends StatefulWidget {
  String? UserName;
  menu({this.UserName});

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
    print("menu");
    print(widget.UserName);
    // print('startDate = $startDate ; endDate = $endDate');
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
        bottomNavigationBar: bottonbar(
          UserName: widget.UserName,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 460,
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
                  child: pos0 == current ? menu1() : null,
                ),
                Container(
                  child: pos1 == current ? menu2() : null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
