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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: onboardpages.length,
        itemBuilder: (BuildContext context, int index) {
          return OnboardPage(
            assetsPath: onboardpages[index].getAssetsPath(),
            title: onboardpages[index].getTitle(),
            description: onboardpages[index].getDescription(),
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class OnboardPage extends StatelessWidget {
  String? assetsPath, title, description;

  OnboardPage({super.key, this.assetsPath, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Image.asset(assetsPath!, height: 200, width: 200),
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
