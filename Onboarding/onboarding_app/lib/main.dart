import 'package:flutter/material.dart';
import 'homescreen/homescreen.dart';
import 'welcomescreen/welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Aboard!',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const Welcome_Screen(),
    );
  }
}
