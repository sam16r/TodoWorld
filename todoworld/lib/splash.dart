import 'package:flutter/material.dart';
import 'package:todoworld/pages/home.dart';
import 'package:todoworld/pages/pre_login/auth_gate.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isUserLogedIn = false;
  @override
  void initState() {
    //will implement logic to check if user is login or not
    isUserLogedIn = false;
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (BuildContext ctx) =>
                isUserLogedIn ? const Home() : const AuthGate(),
          ),
          (Route<dynamic> route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(116, 16, 25, 122),
      child: const Center(
          child: Text(
        "Welcome",
        style: TextStyle(
          fontSize: 18,
        ),
      )),
    );
  }
}
