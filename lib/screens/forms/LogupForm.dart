import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Onboarding.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'package:flutter_application_1/screens/LogupPage.dart';
import 'package:flutter_application_1/screens/LoginPage.dart';

class LogupForm extends StatefulWidget {
  const LogupForm({Key? key}) : super(key: key);

  @override
  State<LogupForm> createState() => _LogupFormState();
}

class _LogupFormState extends State<LogupForm> {
  var msgUP = TextEditingController();
  var msgEmailUP = TextEditingController();
  var msgEUserUP = TextEditingController();
  var msgpassUP = TextEditingController();
  var msgconfpassUP = TextEditingController();

  var msgUPe = "";
  var msgpassUPe = "";
  var msgconfpassUPe = "";
  var msgEmailUPe = "";
  var msgEUserUPe = "";

  // final  msgEUserUPe = "";

  GlobalKey<FormState> _numberForm = GlobalKey();

  bool passwordVisible = true;
  bool ConfirmpasswordVisible = true;
  bool _keyboardVisible = false;

  bool _isVisible = true;
  bool _BoxVisible = false;

  void showToast() {
    setState(() {
      _BoxVisible = false;
      _isVisible = true;
    });
  }

  void HideToast() {
    setState(() {
      _isVisible = false;
    });
  }

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom == 0;
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
                      height: 100,
                      width: 100,
                      // hat hana logo d-one
                      image: AssetImage('assets/logo1.png'),
                    ),
                  ),
                ),
                Visibility(
                  visible: _isVisible,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    child: const Text(
                      "Create Your Account",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Visibility(
                    visible: _BoxVisible,
                    child: SizedBox(
                      height: 50,
                    )),
                SizedBox(
                  height: 220,
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
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
                                    _BoxVisible = true;
                                    // showToast();
                                  },
                                  controller: msgUP,
                                  validator: (val) {
                                    if (val!.isEmpty)
                                      return "complet your Email";
                                    if (!val.contains("@"))
                                      return "Set your Email";
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
                                  controller: msgEUserUP,
                                  validator: (val) {
                                    if (val!.isEmpty) return "complet Username";
                                  },
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(fontSize: 20),
                                    border: InputBorder.none,
                                    icon: Icon(Icons.person_outline_rounded),
                                    hintText: "Username",
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
                                  controller: msgpassUP,
                                  validator: (val) {
                                    if (val!.isEmpty) return "Set Password";
                                    if (val.length < 8)
                                      return "Password must be at least 8 characters";
                                  },
                                  obscureText: passwordVisible,
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
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 16, right: 32),
                                child: TextFormField(
                                  onTap: () {
                                    HideToast();
                                    // showToast();
                                  },
                                  controller: msgconfpassUP,
                                  validator: (val) {
                                    if (val!.isEmpty) return "Set Password";
                                    if (val.length < 8)
                                      return "Password must be at least 8 characters";
                                  },
                                  obscureText: ConfirmpasswordVisible,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(fontSize: 22),
                                    icon: Icon(Icons.lock_reset_outlined),
                                    hintText: "Confirm Password",
                                    suffixIcon: IconButton(
                                      icon: Icon(ConfirmpasswordVisible
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                      onPressed: () {
                                        setState(
                                          () {
                                            ConfirmpasswordVisible =
                                                !ConfirmpasswordVisible;
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
                                setState(() {
                                  msgUPe = msgUP.text;
                                  msgpassUPe = msgpassUP.text;
                                  msgconfpassUPe = msgconfpassUP.text;
                                  msgEUserUPe = msgEUserUP.text;
                                  print(msgEUserUPe);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          menu(UserName: msgEUserUPe),
                                    ),
                                  );
                                });
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
                SizedBox(
                  height: 23,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Visibility(
                          visible: _isVisible,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    "By signing up, you accept our",
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
                                          builder: (context) =>
                                              const LoginPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Terms of Service",
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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
