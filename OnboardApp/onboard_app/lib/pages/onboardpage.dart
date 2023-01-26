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
