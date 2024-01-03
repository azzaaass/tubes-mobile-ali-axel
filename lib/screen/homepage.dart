import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tubes_mobile_al/data/data.dart';
import 'package:tubes_mobile_al/screen/order.dart';
import 'package:tubes_mobile_al/style.dart/color.dart';
import 'package:tubes_mobile_al/style.dart/text.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  TextEditingController pickController = TextEditingController();
  TextEditingController dropController = TextEditingController();

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Motor> buyMotor = [];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
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
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: black.withOpacity(0.7), // Warna border
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
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: mediaQuery.size.width,
                      child: TextField(
                        controller: widget.pickController,
                        decoration: const InputDecoration(
                          labelText: 'Pick-up',
                          hintText: 'Pick-up Location',
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
                      height: 10,
                    ),
                    SizedBox(
                      width: mediaQuery.size.width,
                      child: TextField(
                        controller: widget.dropController,
                        decoration: const InputDecoration(
                          labelText: 'Drop-off',
                          hintText: 'Drop-off Location',
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
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: mediaQuery.size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: black.withOpacity(0.7), // Warna border
                      width: 2.0, // Lebar border
                    ),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Available Vehicles",
                        style: text_16_500_black,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Container(
                          child: ListView.builder(
                            itemCount: motor.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    motor[index].isSelected =
                                        !motor[index].isSelected;
                                  });
                                  if (motor[index].isSelected) {
                                    buyMotor.add(motor[index]);
                                  } else {
                                    buyMotor.removeWhere((element) =>
                                        element.id == motor[index].id);
                                  }
                                  // print(buyMotor);
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: motor[index].isSelected
                                        ? orange.withOpacity(0.3)
                                        : white,
                                    border: Border.all(
                                      color: black
                                          .withOpacity(0.5), // Warna border
                                      width: 1.0, // Lebar border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        motor[index].name,
                                        style: text_14_500_black,
                                      ),
                                      Text(
                                        motor[index].description,
                                        style: text_14_400_black,
                                      ),
                                      Text(
                                        motor[index].subDescription,
                                        style: text_14_400_black,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Order(
              buyMotor: buyMotor,
            ),
          ),
        ),
        child: FaIcon(FontAwesomeIcons.plus),
      ),
    );
  }
}
