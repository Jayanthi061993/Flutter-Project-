import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_app/loginpage/loginpage.dart';

// ignore: camel_case_types
class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Save Your Balance',
      body: 'Best solution to save your balance and transactions',
      footer: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey),
        ),
        onPressed: () {},
        child: const Text('Lets Get Started'),
      ),
      image: Center(
        child: Image.asset('assets/savings.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: 'Make it simple',
      body:
          'We pay attention to all your payments and find way to save your money',
      footer: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey),
        ),
        onPressed: () {},
        child: const Text('Why to wait'),
      ),
      image: Center(
        child: Image.asset('assets/stripe.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: 'New Banking',
      body:
          'Free advisory service, mobile banking application, visa debit card',
      footer: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey),
        ),
        onPressed: () {},
        child: const Text('Follow us'),
      ),
      image: Center(
        child: Image.asset('assets/creditcard.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Jaam Bank...!'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(64, 165, 163, 165),
      ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white10,
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(10, 10),
          color: Color.fromARGB(255, 227, 233, 237),
          activeSize: Size.square(15),
          activeColor: Color.fromARGB(255, 132, 132, 138),
        ),
        showDoneButton: true,
        done: const Text(
          'Done',
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 25,
          color: Colors.black54,
        ),
        onDone: () => onDone(context),
        curve: Curves.bounceOut,
      ),
    );
  }

  onDone(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
