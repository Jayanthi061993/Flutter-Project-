import 'package:flutter/material.dart';
import 'homescreen/homescreen.dart';

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
      home: const Home_Screen(),
    );
  }
}
