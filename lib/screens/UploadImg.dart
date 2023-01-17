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
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
