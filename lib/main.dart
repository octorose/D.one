import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/LoginPage.dart';
import 'package:flutter_application_1/screens/Onboarding.dart';
import 'package:flutter_application_1/screens/add_menu.dart';
import 'package:flutter_application_1/screens/location.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'package:flutter_application_1/screens/phone.dart';
import 'package:flutter_application_1/screens/succes.dart';
import 'package:flutter_application_1/screens/verify.dart';
import 'screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? seen = prefs.getBool('seen');
  Widget _screen;
  if (seen == null || seen == false) {
    _screen = Onboarding();
  } else {
    _screen = LoginPage();
  }

  runApp(MyApp(_screen));
}

class MyApp extends StatelessWidget {
  final Widget _screen;

  MyApp(this._screen);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "menu": (context) => menu(),
          "add": (context) => add(),
          "login": (context) => LoginPage(),
          'phone': (context) => MyPhone(),
          'verify': (context) => MyVerify(),
          'location': (context) => MyLocation(),
          'succes': (context) => MySucces(),
        },
        debugShowCheckedModeBanner: false,
        title: 'D-one',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //MATBDLOHACH GHIR DKHL W DIR NEXT NEXT....
        home: this._screen);
  }
}
