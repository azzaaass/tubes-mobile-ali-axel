import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tubes_mobile_al/screen/sign_up.dart';
import 'package:tubes_mobile_al/style.dart/color.dart';
import 'package:tubes_mobile_al/style.dart/text.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FaIcon(FontAwesomeIcons.cubes),
                    TextButton(
                        onPressed: () => const Center(),
                        child: Text(
                          "Skip",
                          style: text_16_500_white,
                        ))
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "Sign Up or Log In to Place an Order",
                  textAlign: TextAlign.center,
                  style: text_36_500_black,
                ),
              ),
              const Expanded(
                flex: 3,
                child: FaIcon(
                  FontAwesomeIcons.truckFast,
                  size: 100,
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => SignUp(),
                    )),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 50,
                  decoration: BoxDecoration(
                      color: whiteBone,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Get Started",
                    style: text_16_500_black,
                  )),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    "Already have an Account? Sign-in",
                    style: text_16_500_black,
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
