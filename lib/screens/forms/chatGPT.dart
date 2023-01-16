import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class chatGPT extends StatefulWidget {
  @override
  _chatGPTState createState() => _chatGPTState();
}

class _chatGPTState extends State<chatGPT> {
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
