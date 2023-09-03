import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadImg extends StatefulWidget {
  UploadImg({Key? key}) : super(key: key);

  // late final String? paths;

  @override
  State<UploadImg> createState() => _UploadImgState();
}

class _UploadImgState extends State<UploadImg> {
  File? imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Stack(
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundColor: Colors.white,
              backgroundImage: imageFile == null
                  ? AssetImage('assets/logoUPCam.png') as ImageProvider
                  : FileImage(File(imageFile!.path)),
            ),
            Positioned(
              right: 2.0,
              bottom: -5.0,
              child: Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: ((builder) => bottomsheet()),
                    );
                  },
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.lightBlue,
                    size: 40,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        children: [
          Text(
            "Up load Your Image",
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    takePhoto(ImageSource.camera);
                  },
                  child: Column(
                    children: [Icon(Icons.camera_alt_outlined), Text("Camera")],
                  )),
              SizedBox(
                width: 10.0,
              ),
              TextButton(
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyDrawerHeader(profileImage: imageFile,)));
                  },
                  child: Column(
                    children: [Icon(Icons.image_outlined), Text("Gallery")],
                  )),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    setState(() {
      imageFile = File(pickedFile!.path);
    });
  }
}
