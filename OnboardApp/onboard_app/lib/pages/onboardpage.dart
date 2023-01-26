import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnboardPage extends StatelessWidget {
  String? assetsPath, title, description;

  OnboardPage({super.key, this.assetsPath, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(assetsPath!, width: 200, height: 200),
          const SizedBox(
            height: 40,
          ),
          Text(
            title!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(255, 239, 190, 171),
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            description!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(255, 239, 190, 171),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
