import 'package:flutter_application_1/screens/sport.dart';

class Sports {
  final String img;
  final String text;
  Sports({required this.img, required this.text});
}

var sports1 = [
  Sports(
    img: 'assets/running.jpg',
    text: 'Running',
  ),
  Sports(
    img: 'assets/lifting.jpg',
    text: 'lifting',
  ),
  Sports(
    img: 'assets/swimming.jpg',
    text: 'swimming',
  ),
  Sports(
    img:'assets/cycling.jpg',
   text: 'cycling'),
  Sports(
    img: 'assets/aerobics.jpg',
    text: 'aerobics',)
];
