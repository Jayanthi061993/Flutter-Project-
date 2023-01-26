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
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    onboardpages = getPages();
  }

  Widget pageIndexDots(bool isCurrentPage) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 5.0,
      width: isCurrentPage ? 10.0 : 5.0,
      decoration:
          BoxDecoration(color: isCurrentPage ? Colors.black : Colors.black26),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(137, 100, 90, 90),
        body: PageView.builder(
          itemCount: onboardpages.length,
          onPageChanged: (value) {
            currentIndex = value;
          },
          itemBuilder: (BuildContext context, int index) {
            return OnboardPage(
              assetsPath: onboardpages[index].getAssetsPath(),
              title: onboardpages[index].getTitle(),
              description: onboardpages[index].getDescription(),
            );
          },
        ),
        bottomSheet: currentIndex != onboardpages.length - 1
            ? Container(
                color: const Color.fromARGB(137, 100, 90, 90),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text('SKIP'),
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < onboardpages.length; i++)
                          i == currentIndex
                              ? pageIndexDots(true)
                              : pageIndexDots(false)
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text('NEXT'),
                    ),
                  ],
                ),
              )
            : Container());
  }
}
