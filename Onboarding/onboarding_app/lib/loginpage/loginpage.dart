import 'package:flutter/material.dart';
import 'package:onboarding_app/homescreen/homescreen.dart';

// ignore: camel_case_types
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text("User Name:"),
              //TextFormField(),
              const SizedBox(height: 30),
              const Center(
                child: Icon(
                  Icons.comment_bank,
                  size: 100,
                ),
              ),
              const TextField(
                decoration: InputDecoration(labelText: 'UserName'),
              ),
              const SizedBox(height: 30),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
