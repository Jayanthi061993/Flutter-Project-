import 'package:flutter/material.dart';
import 'package:onboard_app/models/onboardpage.dart';

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
  List<OnboardPageModel> onboardpages = <OnboardPageModel>[];

  @override
  void initState() {
    super.initState();
    onboardpages = getPages();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemBuilder: null),
    );
  }
}

// ignore: must_be_immutable
class OnboardPage extends StatelessWidget {
  String? assetsPath, title, description;

  OnboardPage({super.key, this.assetsPath, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(assetsPath!),
          const SizedBox(
            height: 20,
          ),
          Text(title!),
          const SizedBox(
            height: 20,
          ),
          Text(description!),
        ],
      ),
    );
  }
}
