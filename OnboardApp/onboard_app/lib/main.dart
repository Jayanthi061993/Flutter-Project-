import 'package:flutter/material.dart';
import 'package:onboard_app/pages/onboardpage.dart';
import 'package:onboard_app/models/onboard.dart';

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
  List<OnboardModel> onboardpages = <OnboardModel>[];

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
