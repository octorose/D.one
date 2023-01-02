import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Onboarding.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var msg = TextEditingController();
  var msge = "";
  GlobalKey<FormState> _numberForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: const Image(
            height: 100,
            width: 100,
            // hat hana logo d-one
            image: NetworkImage(
              'https://img.icons8.com/3d-fluency/512/user-male-circle.png',
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 40),
          child: const Text(
            "Sign In",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Flexible(
          child: SizedBox(
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
                            controller: msg,
                            validator: (val) {
                              if (val!.isEmpty) return "set your Email";
                            },
                            decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 20),
                              border: InputBorder.none,
                              icon: Icon(Icons.person_outline_outlined),
                              hintText: "Adress Email",
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16, right: 32),
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 22),
                              border: InputBorder.none,
                              icon: Icon(Icons.lock_outline_rounded),
                              hintText: "Password",
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
                          color:
                              Color.fromARGB(255, 4, 84, 134)!.withOpacity(0.5),
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
                              builder: (context) => Onboarding(),
                            ),
                          );
                        }
                      },
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
          margin: const EdgeInsets.only(top: 20),
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
                      image: const NetworkImage(
                        'https://img.icons8.com/fluency/512/facebook-new.png',
                      ),
                    ),
                    const SizedBox(width: 24),
                    const Image(
                      height: 45,
                      width: 45,
                      image: NetworkImage(
                        'https://img.icons8.com/color/512/google-logo.png',
                      ),
                    ),
                    const SizedBox(width: 24),
                    const Image(
                      height: 45,
                      width: 45,
                      image: NetworkImage(
                        'https://img.icons8.com/fluency/512/twitter-circled.png',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 18, top: 10),
                      child: const Text(
                        "Don't Have An Account ?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 114, 112, 112),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
