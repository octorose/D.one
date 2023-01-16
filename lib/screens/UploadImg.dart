import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: const Image(
              height: 120,
              width: 120,
              // hat hana logo d-one
              image: AssetImage('assets/logo1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
