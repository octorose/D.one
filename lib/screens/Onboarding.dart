import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Widgets/Slide.dart';
import 'package:flutter_application_1/Widgets/slideitem.dart';
import 'package:flutter_application_1/screens/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentindex = 0;

  buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: currentindex == index ? 20 : 10,
      decoration: BoxDecoration(
        color: currentindex == index
            ? Color.fromARGB(255, 50, 39, 88)
            : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[300],
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    // color: Colors.red,
                    alignment: Alignment.center,
                    height: 660,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            currentindex = index;
                          });
                        },
                        controller: _pageController,
                        itemBuilder: ((context, index) =>
                            Slideitem(index: index)),
                        itemCount: slideList.length,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 0,
                    right: 0,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          slideList.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                        // height: 40,
                        child: currentindex < slideList.length - 1
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'login');
                                    },
                                    child: Text('skip',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 50, 39, 88),
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.5)),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    onPressed: () {
                                      if (currentindex < slideList.length - 1) {
                                        _pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.easeIn);
                                      }
                                    },
                                    child: Text('next',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 50, 39, 88),
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.5)),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          textStyle: const TextStyle(
                                            fontSize: 20,
                                          ),
                                          fixedSize: const Size(200, 50),
                                          backgroundColor:
                                              Color.fromARGB(255, 50, 39, 88)),
                                      onPressed: (() {
                                        Navigator.pushNamed(context, 'login');
                                      }),
                                      child: Text('Get Started')),
                                ],
                              )),
                  ),
                ],
              ),
            ),
            // Container(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: List.generate(
            //       slideList.length,
            //       (index) => buildDot(index: index),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 100,
            // ),
            // Container(
            //     height: 40,
            //     child: currentindex < slideList.length - 1
            //         ? Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               TextButton(
            //                 style: TextButton.styleFrom(
            //                   textStyle: const TextStyle(
            //                     fontSize: 20,
            //                   ),
            //                 ),
            //                 onPressed: () {
            //                   Navigator.pushNamed(context, 'login');
            //                 },
            //                 child: Text('skip',
            //                     style: TextStyle(
            //                         color: Color.fromARGB(255, 50, 39, 88),
            //                         fontWeight: FontWeight.bold,
            //                         letterSpacing: 1.5)),
            //               ),
            //               TextButton(
            //                 style: TextButton.styleFrom(
            //                   textStyle: const TextStyle(
            //                     fontSize: 20,
            //                   ),
            //                 ),
            //                 onPressed: () {
            //                   if (currentindex < slideList.length - 1) {
            //                     _pageController.nextPage(
            //                         duration: const Duration(milliseconds: 300),
            //                         curve: Curves.easeIn);
            //                   }
            //                 },
            //                 child: Text('next',
            //                     style: TextStyle(
            //                         color: Color.fromARGB(255, 50, 39, 88),
            //                         fontWeight: FontWeight.bold,
            //                         letterSpacing: 1.5)),
            //               ),
            //             ],
            //           )
            //         : Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               ElevatedButton(
            //                   style: ElevatedButton.styleFrom(
            //                       textStyle: const TextStyle(
            //                         fontSize: 20,
            //                       ),
            //                       fixedSize: const Size(200, 50),
            //                       backgroundColor:
            //                           Color.fromARGB(255, 50, 39, 88)),
            //                   onPressed: (() {
            //                     Navigator.pushNamed(context, 'login');
            //                   }),
            //                   child: Text('Get Started')),
            //             ],
            //           )),
          ],
        ),
      ),
    );
  }
  
  void _updateSeen() {
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('seen', true);
    });
  }
}
