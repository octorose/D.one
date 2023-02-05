import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Widgets/uploadimageWid.dart';
import 'package:flutter_application_1/screens/menu.dart';

class UploadImgPage extends StatefulWidget {
  const UploadImgPage({super.key});

  @override
  State<UploadImgPage> createState() => _UploadImgPageState();
}

class _UploadImgPageState extends State<UploadImgPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 60),
            child: const Image(
              height: 120,
              width: 120,
              // hat hana logo d-one
              image: AssetImage('assets/logo1.png'),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          // Container(
          //   alignment: Alignment.center,
          //   child: const Text(
          //     'Upload Image',
          //     style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),

          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 6, 80, 141),
                    Color.fromARGB(185, 255, 255, 255),
                  ],
                ),
                color: Color.fromRGBO(181, 215, 243, 1),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                    child: const Text(
                      "Let Us Know Who",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                    child: const Text(
                      "You Are",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(0, 35, 0, 35),
                      child: UploadImg()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100.0),
                            topRight: Radius.circular(100.0),
                          ),
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              fixedSize: const Size(200, 50),
                              backgroundColor: Color.fromARGB(255, 4, 84, 134),
                            ),
                            onPressed: (() {
                              // Navigator.pushNamed(context, 'login');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => menu(),
                                ),
                              );
                            }),
                            child: Text('Save')),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Our Terms of Service",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 4, 84, 134),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
