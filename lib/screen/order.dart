import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tubes_mobile_al/data/data.dart';
import 'package:tubes_mobile_al/screen/payment.dart';
import 'package:tubes_mobile_al/style.dart/color.dart';
import 'package:tubes_mobile_al/style.dart/text.dart';

class Order extends StatefulWidget {
  List<Motor> buyMotor = [];
  Order({super.key, required this.buyMotor});

  @override
  State<Order> createState() => OrderState();
}

class OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            children: [
              Row(
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: widget.buyMotor.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: widget.buyMotor[index].isSelected
                              ? orange.withOpacity(0.3)
                              : white,
                          border: Border.all(
                            color: black.withOpacity(0.5), // Warna border
                            width: 1.0, // Lebar border
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.buyMotor[index].name,
                                  style: text_14_500_black,
                                ),
                                Text(
                                  widget.buyMotor[index].description,
                                  style: text_14_400_black,
                                ),
                                Text(
                                  widget.buyMotor[index].subDescription,
                                  style: text_14_400_black,
                                ),
                              ],
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.buyMotor.removeAt(index);
                                  });
                                },
                                child: const FaIcon(FontAwesomeIcons.trash,
                                    size: 18)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => Payment(),),
        ),
        child: FaIcon(FontAwesomeIcons.arrowRight),
      ),
    );
  }
}
