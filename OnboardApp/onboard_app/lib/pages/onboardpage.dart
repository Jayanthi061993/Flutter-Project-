import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnboardPage extends StatelessWidget {
  String? assetsPath, title, description;

  OnboardPage({super.key, this.assetsPath, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(assetsPath!, width: 250, height: 250),
          const SizedBox(
            height: 15,
          ),
          Text(title!),
          const SizedBox(
            height: 15,
          ),
          Text(description!),
        ],
      ),
    );
  }
}
