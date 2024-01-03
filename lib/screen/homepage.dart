import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tubes_mobile_al/style.dart/color.dart';
import 'package:tubes_mobile_al/style.dart/text.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.cubes,
                    size: 20,
                    color: orange,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Rid-Move",
                    style: text_16_500_orange,
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: black.withOpacity(0.2),
                    child: const FaIcon(
                      FontAwesomeIcons.user,
                      color: white,
                      size: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Place your order",
                style: text_26_500_black,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: mediaQuery.size.width,
                height: mediaQuery.size.height / 4,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Warna border
                    width: 2.0, // Lebar border
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "Location",
                      style: text_16_500_black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: mediaQuery.size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Warna border
                      width: 2.0, // Lebar border
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Available Vehicles",
                        style: text_16_500_black,
                      ),
                    ],
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
