import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DemoApp',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemBuilder: null),
    );
  }
}

class OnboardPage extends StatelessWidget {
  String assetsPath, title, desc;

  OnboardPage({super.key, this.assetsPath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(assetsPath),
          const SizedBox(
            height: 20,
          ),
          Text(title),
          const SizedBox(
            height: 20,
          ),
          Text(desc),
        ],
      ),
    );
  }
}
