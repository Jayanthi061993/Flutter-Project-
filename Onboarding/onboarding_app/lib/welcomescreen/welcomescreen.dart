import 'package:flutter/material.dart';

// ignore: camel_case_types
class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Onboard...!'),
        centerTitle: true,
      ),
    );
  }
}
