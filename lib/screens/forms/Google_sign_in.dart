import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'Google_sign_in.dart';

class google_sign_in extends StatefulWidget {
  @override
  _google_sign_inState createState() => _google_sign_inState();
}

class _google_sign_inState extends State<google_sign_in> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Sign in with Google'),
          onPressed: () async {
            try {
              final GoogleSignInAccount? googleUser =
                  await _googleSignIn.signIn();
              final GoogleSignInAuthentication? googleAuth =
                  await googleUser?.authentication;

              print('Google User: ${googleUser?.displayName}');
              print('Google Auth: ${googleAuth?.accessToken}');

              if (googleUser?.displayName != null) {
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => menu()),
            );              }

              // Now that we have the user's Google account, we can use it to sign in to your own app
              // For example, you could use the Google account to sign in to Firebase
            } catch (error) {
              print(error);
            }
          },
        ),
      ),
    );
  }
}
