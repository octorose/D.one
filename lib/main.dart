import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/LoginPage.dart';
import 'package:flutter_application_1/screens/Onboarding.dart';
import 'package:flutter_application_1/screens/add.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? seen = prefs.getBool('seen');
  Widget _screen;
  if (seen == null || seen == false) {
    _screen = Onboarding();
  } else {
    _screen = LoginPage();
  }

  runApp( MyApp(_screen));
}

class MyApp extends StatelessWidget {
  final Widget _screen;
  
  MyApp(this._screen);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
        routes: {
          "menu": (context) => menu(),
          "add": (context) => add(),
          "login": (context) => LoginPage(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //MATBDLOHACH GHIR DKHL W DIR NEXT NEXT....
        home: this._screen);
  }
}
