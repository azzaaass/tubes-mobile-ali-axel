import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tubes_mobile_al/screen/homepage.dart';
import 'package:tubes_mobile_al/style.dart/color.dart';
import 'package:tubes_mobile_al/style.dart/text.dart';

class Payment extends StatefulWidget {
  Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  File? _image;
  final picker = ImagePicker();
  TextEditingController pickController = TextEditingController();
  TextEditingController dropController = TextEditingController();
  TextEditingController notesController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

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
              height: 10,
            ),
            Text(
              "Order Detail",
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
                  color: black.withOpacity(0.5), // Warna border
                  width: 2.0, // Lebar border
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  _image != null
                      ? InkWell(
                          onTap: getImage,
                          child: Image.file(
                            _image!,
                            height: 200,
                            width: 200,
                          ),
                        )
                      : InkWell(
                          onTap: getImage,
                          child:
                              const Text('No image selected, click to selct')),
                  const SizedBox(height: 10,),
                  SizedBox(
                    width: mediaQuery.size.width,
                    child: TextField(
                      controller: pickController,
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
                    height: 20,
                  ),
                  SizedBox(
                    width: mediaQuery.size.width,
                    child: TextField(
                      controller: dropController,
                      decoration: const InputDecoration(
                        labelText: 'Drop',
                        hintText: 'Drop Location',
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
                      controller: notesController,
                      decoration: const InputDecoration(
                        labelText: 'Notes',
                        hintText: 'Notes Location',
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
                      controller: contactController,
                      decoration: const InputDecoration(
                        labelText: 'Contact',
                        hintText: 'Contact Location',
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
                        "Buy Now",
                        style: text_16_500_white,
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
