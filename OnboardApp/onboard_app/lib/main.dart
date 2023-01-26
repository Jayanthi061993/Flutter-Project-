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
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 15.0 : 8.0,
      width: isCurrentPage ? 15.0 : 8.0,
      decoration: BoxDecoration(
        color: isCurrentPage
            ? const Color.fromARGB(255, 239, 190, 171)
            : const Color.fromARGB(255, 239, 221, 214),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: const Color.fromARGB(137, 100, 90, 90),
        backgroundColor: Colors.brown,
        body: PageView.builder(
          itemCount: onboardpages.length,
          onPageChanged: (value) {
            currentIndex = value;
          },
          itemBuilder: (BuildContext context, int index) {
            return OnboardPage(
              title: onboardpages[index].getTitle(),
              assetsPath: onboardpages[index].getAssetsPath(),
              description: onboardpages[index].getDescription(),
            );
          },
        ),
        bottomSheet: currentIndex != onboardpages.length - 1
            ? Container(
                color: Colors.brown,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Color.fromARGB(255, 239, 190, 171),
                          fontSize: 20,
                        ),
                      ),
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
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Color.fromARGB(255, 239, 190, 171),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Container());
  }
}
