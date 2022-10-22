import 'package:flutter/material.dart';

//This function triggers the build process
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "Stateless Widget Example",
            textAlign: TextAlign.center,
          ),
        ), // AppBar
        body: const Center(
          child: Text(
            "Displaying Simple Hello World Text",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ), // Container
      ), // Scaffold
    ); // MaterialApp
  }
}
