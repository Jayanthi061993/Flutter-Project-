import 'package:flutter/material.dart';
import 'onboardscreen/onboardscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JaamBank',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: OnboardScreen(),
    );
  }
}
