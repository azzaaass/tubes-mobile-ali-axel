import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tubes_mobile_al/screen/homepage.dart';
import 'package:tubes_mobile_al/screen/sign_up.dart';
import 'package:tubes_mobile_al/style.dart/color.dart';
import 'package:tubes_mobile_al/style.dart/text.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: orange,
              child: const FaIcon(FontAwesomeIcons.angleLeft),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Great to have you back!",
                        style: text_26_500_black,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: mediaQuery.size.width,
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Tulis email disini',
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: black), // Atur warna border
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                        ),
                        style: text_16_500_black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: mediaQuery.size.width,
                      child: TextField(
                        controller: _passwordController,
                        obscureText: !isVisible,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Tulis password disini',
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: black), // Atur warna border
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: FaIcon(
                                isVisible
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                size: 18,
                              )),
                        ),
                        style: text_16_500_black,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => Homepage(),
                          )),
                      child: Container(
                        width: mediaQuery.size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            color: orange,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Log In",
                          style: text_16_500_white,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => SignUp(),
                            )),
                        child: Text(
                          "Don't have an account?",
                          style: text_14_400_orange,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
