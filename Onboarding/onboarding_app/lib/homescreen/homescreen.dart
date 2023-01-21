import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Aboard...!'),
        centerTitle: true,
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
