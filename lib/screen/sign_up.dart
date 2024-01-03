import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tubes_mobile_al/screen/login.dart';
import 'package:tubes_mobile_al/style.dart/color.dart';
import 'package:tubes_mobile_al/style.dart/text.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _phoneController = TextEditingController();
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
                        "Create an account",
                        style: text_26_500_black,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: mediaQuery.size.width,
                      child: TextField(
                        controller: _phoneController,
                        decoration: const InputDecoration(
                          labelText: 'Phone',
                          hintText: 'Tulis nomor disini',
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
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: mediaQuery.size.width,
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
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
                          border: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: black), // Atur warna border
                          ),
                          contentPadding: const EdgeInsets.symmetric(
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
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "By clicking Sign Up bellow, you’ve read the full text and agreed to the Terms  & Conditions and Privacy Policy",
                          style: text_14_400_black,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => Login(),
                          )),
                      child: Container(
                        width: mediaQuery.size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            color: orange,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Get Started",
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
                              builder: (context) => Login(),
                            )),
                        child: Text(
                          "Already have an account?",
                          style: text_14_400_orange,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
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
