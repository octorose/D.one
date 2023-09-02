import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/Slide.dart';

class Slideitem extends StatefulWidget {
  final int? index;
  const Slideitem({super.key, this.index});

  @override
  State<Slideitem> createState() => _SlideitemState();
}

class _SlideitemState extends State<Slideitem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 75,
        ),
        Text(
          slideList[widget.index!].title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35,
            color: Color.fromRGBO(24, 20, 97, 1),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          slideList[widget.index!].description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(100, 118, 125, 1),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Image.asset(
          slideList[widget.index!].image,
          height: 367,
        ),

        // Container(
        //   width: 200,
        //   height: 50,
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        //   child: TextButton(
        //     onPressed: () {},
        //     child: Text(
        //       "Get Started",
        //       style: TextStyle(
        //         fontSize: 20,
        //         color: Colors.blue[300],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
