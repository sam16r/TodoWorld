import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              "REMEMBER",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 30,
                fontWeight: FontWeight.w400,
                fontFamily: AutofillHints.creditCardName,
              ),
            ),
          ),
          SizedBox(height: 150),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 120),
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xfffda300),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        textAlign: TextAlign.end,
                        "Enter Your E-mail : ",
                        style:
                        TextStyle(fontSize: 22, color: Color(0xff733600)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfffedda8),
                        hintText: "abcxyz@gmail.com",
                        hintStyle:
                        TextStyle(fontSize: 22, color: Color(0xff9b7f50)),
                        labelStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        textAlign: TextAlign.end,
                        "Enter Your Password : ",
                        style:
                        TextStyle(fontSize: 22, color: Color(0xff733600)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfffedda8),
                        hintText: "...........",
                        hintStyle: TextStyle(
                            fontSize: 22,
                            color: Color(0xff9b7f50),
                            fontWeight: FontWeight.w900),
                        labelStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        textAlign: TextAlign.end,
                        "Confirm Your Password : ",
                        style:
                        TextStyle(fontSize: 22, color: Color(0xff733600)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfffedda8),
                        hintText: "...........",
                        hintStyle: TextStyle(
                            fontSize: 22,
                            color: Color(0xff9b7f50),
                            fontWeight: FontWeight.w900),
                        labelStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      width: 330,
                      height: 50,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        label: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 70),
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        iconAlignment: IconAlignment.end,
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fixedSize: Size(200, 49)),
                        icon: Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
