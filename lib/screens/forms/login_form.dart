import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Onboarding.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'package:flutter_application_1/screens/LogupPage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_application_1/screens/Setting.dart';
import 'package:flutter_application_1/screens/UploadImg.dart';
import 'Google_sign_in.dart';
import 'package:flutter_application_1/Widgets/uploadimageWid.dart';

// import 'package:keyboard_visibility/keyboard_visibility.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var msg = TextEditingController();
  var msgpass = TextEditingController();
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  var msge = "";
  var msgpasse = "";

  bool _isVisible = true;
  bool _BoxVisible = false;

  GlobalKey<FormState> _numberForm = GlobalKey();
  bool passwordVisible = true;
  bool _keyboardVisible = false;

  @override
  // void initState() {
  //   super.initState();
  //   KeyboardVisibilityNotification().addNewListener(
  //     onChange: (bool visiblelat) {
  //       print(visiblelat);
  //     },
  //   );
  //   passwordVisible = true;
  // }

  void showToast() {
    setState(() {
      _BoxVisible = true;
      _isVisible = true;
    });
  }

  void HideToast() {
    setState(() {
      _isVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(_keyboardVisible);
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom == 0;
    print(_keyboardVisible);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        showToast();
      },
      child: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: _keyboardVisible,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: const Image(
                    height: 120,
                    width: 120,
                    // hat hana logo d-one
                    image: AssetImage('assets/logo1.png'),
                  ),
                ),
              ),
              Visibility(
                visible: _isVisible,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 1),
                  child: const Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Visibility(
                  visible: true,
                  child: SizedBox(
                    height: 50,
                  )),
              SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      margin: const EdgeInsets.only(
                        right: 70,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Form(
                        key: _numberForm,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 16, right: 32),
                              child: TextFormField(
                                onTap: () {
                                  HideToast();
                                  // showToast();
                                },
                                textInputAction: TextInputAction.next,
                                controller: msg,
                                validator: (val) {
                                  if (val!.isEmpty) return "complet Email";
                                  if (!val.contains("@")) return "Set Email";
                                },
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 20),
                                  border: InputBorder.none,
                                  icon: Icon(Icons.email_outlined),
                                  hintText: "Adress Email",
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 16, right: 32),
                              child: TextFormField(
                                onTap: () {
                                  HideToast();
                                  // showToast();
                                },
                                obscureText: passwordVisible,
                                controller: msgpass,
                                validator: (val) {
                                  if (val!.isEmpty) return "Set Password";
                                  if (val.length < 8)
                                    return "Password must be at least 8 characters";
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(fontSize: 22),
                                  icon: Icon(Icons.lock_outline_rounded),
                                  hintText: "Password",
                                  suffixIcon: IconButton(
                                    icon: Icon(passwordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(
                                        () {
                                          passwordVisible = !passwordVisible;
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.only(right: 15),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 4, 84, 134)!
                                  .withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromARGB(255, 115, 223, 231),
                              Color.fromARGB(255, 4, 84, 134),
                            ],
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            if (_numberForm.currentState!.validate()) {
                              msge = msg.text;
                              msgpasse = msgpass.text;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => menu(),
                                ),
                              );
                            }
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 16, top: 16),
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: _isVisible,
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                height: 1,
                                width: 100,
                                color: Colors.grey,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Or Sign With',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                height: 1,
                                width: 100,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 65, 0, 0),
                            ),
                            // ignore: prefer_const_constructors
                            Image(
                              height: 45,
                              width: 45,
                              image: AssetImage('assets/fb.png'),
                            ),
                            const SizedBox(width: 24),
                            GestureDetector(
                              onTap: () async {
                                try {
                                  final GoogleSignInAccount? googleUser =
                                      await _googleSignIn.signIn();
                                  final GoogleSignInAuthentication? googleAuth =
                                      await googleUser?.authentication;

                                  print(
                                      'Google User: ${googleUser?.displayName}');
                                  print(
                                      'Google Auth: ${googleAuth?.accessToken}');

                                  if (googleUser?.displayName != null) {
                                    Navigator.pushNamed(context, 'menu');
                                  }

                                  // Now that we have the user's Google account, we can use it to sign in to your own app
                                  // For example, you could use the Google account to sign in to Firebase
                                } catch (error) {
                                  print(error);
                                }
                              },
                              child: Image(
                                  height: 45,
                                  width: 45,
                                  image: AssetImage('assets/google.png')),
                            ),
                            const SizedBox(width: 24),
                            const Image(
                                height: 45,
                                width: 45,
                                image: AssetImage('assets/twitpng.png')),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "New To D-one?",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 114, 112, 112),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LogupPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 4, 84, 134),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
