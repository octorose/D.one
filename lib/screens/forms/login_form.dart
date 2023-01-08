import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Onboarding.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'package:flutter_application_1/screens/LogupPage.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var msg = TextEditingController();
  var msge = "";
  bool _isVisible = true;
  GlobalKey<FormState> _numberForm = GlobalKey();
  bool _keyboardShowing = false;
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visiblelat) {
        print(visiblelat);
      },
    );
    passwordVisible = true;
  }

  void showToast() {
    setState(() {
      _isVisible = true;
    });
  }

  void HideToast() {
    setState(() {
      _isVisible = false;
    });
  }

  void didChangeMetrics() {
    final value = WidgetsBinding.instance.window.viewInsets.bottom;
    if (value != 0) {
      // Keyboard is showing
      HideToast();
    } else {
      // Keyboard is not showing
      showToast();
      // setState(() {
      //   _keyboardShowing = false;

    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: _isVisible,
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
                margin: const EdgeInsets.only(bottom: 40),
                child: const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
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
                            margin: const EdgeInsets.only(left: 16, right: 32),
                            child: TextFormField(
                              onTap: () {
                                didChangeMetrics();
                              },
                              textInputAction: TextInputAction.next,
                              controller: msg,
                              validator: (val) {
                                if (val!.isEmpty) return "set your Email";
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
                            margin: const EdgeInsets.only(left: 16, right: 32),
                            child: TextField(
                              onTap: () {
                                if (_keyboardShowing) {
                                  showToast();
                                }
                              },
                              obscureText: passwordVisible,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(fontSize: 22),
                                icon: Icon(Icons.lock_outline_rounded),
                                hintText: "Password",
                                suffixIcon: IconButton(
                                  icon: Icon(passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
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
            Container(
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
                        const Image(
                            height: 45,
                            width: 45,
                            image: AssetImage('assets/google.png')),
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
                                    builder: (context) => const LogupPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Sign Up Now",
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
          ],
        ),
      ),
    );
  }
}
