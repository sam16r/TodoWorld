import 'package:flutter/material.dart';
import 'package:todoworld/pages/signin.dart';
import 'package:todoworld/pages/signup.dart';

class OpeningPages extends StatefulWidget {
  const OpeningPages({super.key});

  @override
  State<OpeningPages> createState() => _OpeningPagesState();
}

class _OpeningPagesState extends State<OpeningPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset(
              'assets/images/idk.jpg',
              height: 250,
              width: 250,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
              child: Container(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xfffda300),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      "Task Mangament &\n To-Do List",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 4, 6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "This productive tool is designed to help \n you better manage your task \n  project-wise conveniently!",
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 25, 24, 29)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()));
                        },
                        child: Text(
                          "Sign-Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(500, 59),
                            elevation: 20,
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 2,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'or',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            height: 2,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Do you have a Account??",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signin()));
                        },
                        child: Text(
                          "Log In..",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            fixedSize: Size(200, 49)),
                      ),
                    )
                  ]),
            ),
          )),
        ],
      ),
    );
  }
}
