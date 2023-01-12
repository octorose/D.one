import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class chatGPT extends StatelessWidget {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to your app!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _authenticateWithFaceID,
              child: Text('Log in with Face ID'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _authenticateWithFaceID() async {
    List<BiometricType> availableBiometrics =
        await _localAuthentication.getAvailableBiometrics();
    if (availableBiometrics.contains(BiometricType.face)) {
      bool authenticated = false;
      try {
        authenticated = await _localAuthentication.authenticate(
          localizedReason: 'Log in to your account',
          // biometricOnly: true,
          // useErrorDialogs: true,
          // stickyAuth: true,
        );
      } catch (e) {
        print(e);
      }
      if (authenticated) {
        print('Authentication successful');
      } else {
        print('Authentication failed');
      }
    } else {
      print('Face ID is not available on this device');
    }
  }
}
