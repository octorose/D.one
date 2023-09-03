import 'package:flutter/material.dart';

class Slide {
  final String title;
  final String description;
  final String image;

  Slide({
    required this.title,
    required this.description,
    required this.image,
  });
}

var slideList = [
  Slide(
    title: 'Find Your Doctor',
    description: "It's easy to find a doctor and \ngetting appointment",
    image: 'assets/1.png',
  ),
  Slide(
    title: 'Store your Medical Records',
    description:
        'D-one may include your\nmedical history, notes, and other \ninformation about your health...',
    image: 'assets/2.png',
  ),
  Slide(
    title: 'Get notified about your diabetic event',
    description: 'The app will notify you about\nany recurring patterns',
    image: 'assets/3.png',
  ),
  Slide(
    title: 'Discuss in the form',
    description: '',
    image: 'assets/4.png',
  ),
];
