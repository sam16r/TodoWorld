import 'package:flutter/material.dart';
import 'package:todoworld/pages/home.dart';
import 'package:todoworld/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(116, 16, 25, 122)),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
