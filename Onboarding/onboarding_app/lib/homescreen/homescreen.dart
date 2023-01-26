import 'package:flutter/material.dart';

// ignore: camel_case_types
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Back...!'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(64, 165, 163, 165),
      ),
      body: const Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
